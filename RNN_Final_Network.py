import tensorflow as tf
from tensorflow.keras import layers, models
import pandas
import numpy as np
from sklearn.model_selection import train_test_split


mapping = {'hello': np.array([1, 0, 0, 0, 0, 0, 0, 0, 0, 0]),
           'a': np.array([0, 1, 0, 0, 0, 0, 0, 0, 0, 0]),
           's': np.array([0, 0, 1, 0, 0, 0, 0, 0, 0, 0]),
           'l': np.array([0, 0, 0, 1, 0, 0, 0, 0, 0, 0]),
           'speech': np.array([0, 0, 0, 0, 1, 0, 0, 0, 0, 0]),
           'this': np.array([0, 0, 0, 0, 0, 1, 0, 0, 0, 0]),
           'recognition': np.array([0, 0, 0, 0, 0, 0, 1, 0, 0, 0]),
           'yes': np.array([0, 0, 0, 0, 0, 0, 0, 1, 0, 0]),
           'no': np.array([0, 0, 0, 0, 0, 0, 0, 0, 1, 0]),
           'wrong': np.array([0, 0, 0, 0, 0, 0, 0, 0, 0, 1])}


# y:shape: (205,10) / (900,9)
# x = x[:,:250].reshape(205,10,25)
# hand[25][9]
# 205 rows × 259 columns

data = pandas.read_csv('./cluster0.new_RNN_database_3.csv')
words = data['word']

y = data['word']
x = data.iloc[:,3:]
data.iloc[:,3:]
y = np.concatenate([[mapping[i] for i in y]])

print(y.shape)

x = x.to_numpy()
x = x[:,:250].reshape(205, 10, 25)
x = x.transpose(0, 2, 1)
x = np.nan_to_num(x)

print(x.shape)


encoder = models.Sequential([
    layers.SimpleRNN(64, return_sequences=True, input_shape=(None, 10)),
    layers.SimpleRNN(64)
])
encoder.summary()

decoder = models.Sequential([
    layers.Dense(32, activation='relu', input_shape=(64,)),
    layers.Dense(10, activation='softmax')
])
decoder.summary()


autoencoder = models.Sequential([
    encoder,
    decoder
])
autoencoder.summary()
autoencoder.compile(optimizer='adam', loss='mse', metrics=['accuracy'])

batch_size = 3
epochs = 20

x_train, x_val, y_train, y_val = train_test_split(x, y, test_size=0.2, random_state=42)
autoencoder.fit(x_train, y_train,
                epochs=epochs,
                batch_size=batch_size,
                shuffle=True,
                validation_data=(x_val, y_val))

autoencoder.evaluate(x_val, y_val)
autoencoder.save('RNN_model_new_4.keras')

prediction_array = autoencoder.predict(x[:1])[0]

print (x[:2])


min_val = 0
index = -1
for i in range(0,len(prediction_array)):
    if prediction_array[i] > min_val:
        min_val = prediction_array[i]
        index = i

print(prediction_array, "    ", index)


