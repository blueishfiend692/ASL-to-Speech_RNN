ъх
пе
D
AddV2
x"T
y"T
z"T"
Ttype:
2	ђљ
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ѕ
ђ
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
$
DisableCopyOnRead
resourceѕ
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
є
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( ѕ

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetypeѕ
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
?
Select
	condition

t"T
e"T
output"T"	
Ttype
d
Shape

input"T&
output"out_typeіьout_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
┴
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ѕе
@
StaticRegexFullMatch	
input

output
"
patternstring
э
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
-
Tanh
x"T
y"T"
Ttype:

2
░
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleіжУelement_dtype"
element_dtypetype"

shape_typetype:
2	
Ъ
TensorListReserve
element_shape"
shape_type
num_elements(
handleіжУelement_dtype"
element_dtypetype"

shape_typetype:
2	
ѕ
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint         
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
ќ
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ѕ
ћ
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
ѕ"serve*2.13.02v2.13.0-rc2-7-g1cb1a030a628пЭ
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
~
Adam/v/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/v/dense_1/bias
w
'Adam/v/dense_1/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_1/bias*
_output_shapes
:*
dtype0
~
Adam/m/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/m/dense_1/bias
w
'Adam/m/dense_1/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_1/bias*
_output_shapes
:*
dtype0
є
Adam/v/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *&
shared_nameAdam/v/dense_1/kernel

)Adam/v/dense_1/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_1/kernel*
_output_shapes

: *
dtype0
є
Adam/m/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *&
shared_nameAdam/m/dense_1/kernel

)Adam/m/dense_1/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_1/kernel*
_output_shapes

: *
dtype0
z
Adam/v/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameAdam/v/dense/bias
s
%Adam/v/dense/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense/bias*
_output_shapes
: *
dtype0
z
Adam/m/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameAdam/m/dense/bias
s
%Adam/m/dense/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense/bias*
_output_shapes
: *
dtype0
ѓ
Adam/v/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *$
shared_nameAdam/v/dense/kernel
{
'Adam/v/dense/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense/kernel*
_output_shapes

:@ *
dtype0
ѓ
Adam/m/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *$
shared_nameAdam/m/dense/kernel
{
'Adam/m/dense/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense/kernel*
_output_shapes

:@ *
dtype0
е
(Adam/v/simple_rnn_1/simple_rnn_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*9
shared_name*(Adam/v/simple_rnn_1/simple_rnn_cell/bias
А
<Adam/v/simple_rnn_1/simple_rnn_cell/bias/Read/ReadVariableOpReadVariableOp(Adam/v/simple_rnn_1/simple_rnn_cell/bias*
_output_shapes
:@*
dtype0
е
(Adam/m/simple_rnn_1/simple_rnn_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*9
shared_name*(Adam/m/simple_rnn_1/simple_rnn_cell/bias
А
<Adam/m/simple_rnn_1/simple_rnn_cell/bias/Read/ReadVariableOpReadVariableOp(Adam/m/simple_rnn_1/simple_rnn_cell/bias*
_output_shapes
:@*
dtype0
─
4Adam/v/simple_rnn_1/simple_rnn_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*E
shared_name64Adam/v/simple_rnn_1/simple_rnn_cell/recurrent_kernel
й
HAdam/v/simple_rnn_1/simple_rnn_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp4Adam/v/simple_rnn_1/simple_rnn_cell/recurrent_kernel*
_output_shapes

:@@*
dtype0
─
4Adam/m/simple_rnn_1/simple_rnn_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*E
shared_name64Adam/m/simple_rnn_1/simple_rnn_cell/recurrent_kernel
й
HAdam/m/simple_rnn_1/simple_rnn_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp4Adam/m/simple_rnn_1/simple_rnn_cell/recurrent_kernel*
_output_shapes

:@@*
dtype0
░
*Adam/v/simple_rnn_1/simple_rnn_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*;
shared_name,*Adam/v/simple_rnn_1/simple_rnn_cell/kernel
Е
>Adam/v/simple_rnn_1/simple_rnn_cell/kernel/Read/ReadVariableOpReadVariableOp*Adam/v/simple_rnn_1/simple_rnn_cell/kernel*
_output_shapes

:@@*
dtype0
░
*Adam/m/simple_rnn_1/simple_rnn_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*;
shared_name,*Adam/m/simple_rnn_1/simple_rnn_cell/kernel
Е
>Adam/m/simple_rnn_1/simple_rnn_cell/kernel/Read/ReadVariableOpReadVariableOp*Adam/m/simple_rnn_1/simple_rnn_cell/kernel*
_output_shapes

:@@*
dtype0
ц
&Adam/v/simple_rnn/simple_rnn_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*7
shared_name(&Adam/v/simple_rnn/simple_rnn_cell/bias
Ю
:Adam/v/simple_rnn/simple_rnn_cell/bias/Read/ReadVariableOpReadVariableOp&Adam/v/simple_rnn/simple_rnn_cell/bias*
_output_shapes
:@*
dtype0
ц
&Adam/m/simple_rnn/simple_rnn_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*7
shared_name(&Adam/m/simple_rnn/simple_rnn_cell/bias
Ю
:Adam/m/simple_rnn/simple_rnn_cell/bias/Read/ReadVariableOpReadVariableOp&Adam/m/simple_rnn/simple_rnn_cell/bias*
_output_shapes
:@*
dtype0
└
2Adam/v/simple_rnn/simple_rnn_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*C
shared_name42Adam/v/simple_rnn/simple_rnn_cell/recurrent_kernel
╣
FAdam/v/simple_rnn/simple_rnn_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp2Adam/v/simple_rnn/simple_rnn_cell/recurrent_kernel*
_output_shapes

:@@*
dtype0
└
2Adam/m/simple_rnn/simple_rnn_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*C
shared_name42Adam/m/simple_rnn/simple_rnn_cell/recurrent_kernel
╣
FAdam/m/simple_rnn/simple_rnn_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp2Adam/m/simple_rnn/simple_rnn_cell/recurrent_kernel*
_output_shapes

:@@*
dtype0
г
(Adam/v/simple_rnn/simple_rnn_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
@*9
shared_name*(Adam/v/simple_rnn/simple_rnn_cell/kernel
Ц
<Adam/v/simple_rnn/simple_rnn_cell/kernel/Read/ReadVariableOpReadVariableOp(Adam/v/simple_rnn/simple_rnn_cell/kernel*
_output_shapes

:
@*
dtype0
г
(Adam/m/simple_rnn/simple_rnn_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
@*9
shared_name*(Adam/m/simple_rnn/simple_rnn_cell/kernel
Ц
<Adam/m/simple_rnn/simple_rnn_cell/kernel/Read/ReadVariableOpReadVariableOp(Adam/m/simple_rnn/simple_rnn_cell/kernel*
_output_shapes

:
@*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
dtype0
x
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *
shared_namedense_1/kernel
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

: *
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
: *
dtype0
t
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *
shared_namedense/kernel
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes

:@ *
dtype0
џ
!simple_rnn_1/simple_rnn_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!simple_rnn_1/simple_rnn_cell/bias
Њ
5simple_rnn_1/simple_rnn_cell/bias/Read/ReadVariableOpReadVariableOp!simple_rnn_1/simple_rnn_cell/bias*
_output_shapes
:@*
dtype0
Х
-simple_rnn_1/simple_rnn_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*>
shared_name/-simple_rnn_1/simple_rnn_cell/recurrent_kernel
»
Asimple_rnn_1/simple_rnn_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp-simple_rnn_1/simple_rnn_cell/recurrent_kernel*
_output_shapes

:@@*
dtype0
б
#simple_rnn_1/simple_rnn_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*4
shared_name%#simple_rnn_1/simple_rnn_cell/kernel
Џ
7simple_rnn_1/simple_rnn_cell/kernel/Read/ReadVariableOpReadVariableOp#simple_rnn_1/simple_rnn_cell/kernel*
_output_shapes

:@@*
dtype0
ќ
simple_rnn/simple_rnn_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!simple_rnn/simple_rnn_cell/bias
Ј
3simple_rnn/simple_rnn_cell/bias/Read/ReadVariableOpReadVariableOpsimple_rnn/simple_rnn_cell/bias*
_output_shapes
:@*
dtype0
▓
+simple_rnn/simple_rnn_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*<
shared_name-+simple_rnn/simple_rnn_cell/recurrent_kernel
Ф
?simple_rnn/simple_rnn_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp+simple_rnn/simple_rnn_cell/recurrent_kernel*
_output_shapes

:@@*
dtype0
ъ
!simple_rnn/simple_rnn_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
@*2
shared_name#!simple_rnn/simple_rnn_cell/kernel
Ќ
5simple_rnn/simple_rnn_cell/kernel/Read/ReadVariableOpReadVariableOp!simple_rnn/simple_rnn_cell/kernel*
_output_shapes

:
@*
dtype0
Ю
 serving_default_sequential_inputPlaceholder*4
_output_shapes"
 :                  
*
dtype0*)
shape :                  

ь
StatefulPartitionedCallStatefulPartitionedCall serving_default_sequential_input!simple_rnn/simple_rnn_cell/kernelsimple_rnn/simple_rnn_cell/bias+simple_rnn/simple_rnn_cell/recurrent_kernel#simple_rnn_1/simple_rnn_cell/kernel!simple_rnn_1/simple_rnn_cell/bias-simple_rnn_1/simple_rnn_cell/recurrent_kerneldense/kernel
dense/biasdense_1/kerneldense_1/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8ѓ *+
f&R$
"__inference_signature_wrapper_5433

NoOpNoOp
ьP
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*еP
valueъPBЏP BћP
џ
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	_default_save_signature

	optimizer

signatures*
я
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
я
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
J
0
1
2
3
 4
!5
"6
#7
$8
%9*
J
0
1
2
3
 4
!5
"6
#7
$8
%9*
* 
░
&non_trainable_variables

'layers
(metrics
)layer_regularization_losses
*layer_metrics
	variables
trainable_variables
regularization_losses
__call__
	_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

+trace_0
,trace_1* 

-trace_0
.trace_1* 
* 
Ђ
/
_variables
0_iterations
1_learning_rate
2_index_dict
3
_momentums
4_velocities
5_update_step_xla*

6serving_default* 
ф
7	variables
8trainable_variables
9regularization_losses
:	keras_api
;__call__
*<&call_and_return_all_conditional_losses
=cell
>
state_spec*
ф
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses
Ecell
F
state_spec*
.
0
1
2
3
 4
!5*
.
0
1
2
3
 4
!5*
* 
Њ
Gnon_trainable_variables

Hlayers
Imetrics
Jlayer_regularization_losses
Klayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Ltrace_0
Mtrace_1* 

Ntrace_0
Otrace_1* 
д
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses

"kernel
#bias*
д
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
Z__call__
*[&call_and_return_all_conditional_losses

$kernel
%bias*
 
"0
#1
$2
%3*
 
"0
#1
$2
%3*
* 
Њ
\non_trainable_variables

]layers
^metrics
_layer_regularization_losses
`layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

atrace_0
btrace_1* 

ctrace_0
dtrace_1* 
a[
VARIABLE_VALUE!simple_rnn/simple_rnn_cell/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE+simple_rnn/simple_rnn_cell/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEsimple_rnn/simple_rnn_cell/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE#simple_rnn_1/simple_rnn_cell/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE-simple_rnn_1/simple_rnn_cell/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUE!simple_rnn_1/simple_rnn_cell/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEdense/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
dense/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_1/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEdense_1/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1*

e0*
* 
* 
* 
* 
* 
* 
б
00
f1
g2
h3
i4
j5
k6
l7
m8
n9
o10
p11
q12
r13
s14
t15
u16
v17
w18
x19
y20*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
J
f0
h1
j2
l3
n4
p5
r6
t7
v8
x9*
J
g0
i1
k2
m3
o4
q5
s6
u7
w8
y9*
* 
* 

0
1
2*

0
1
2*
* 
Ъ

zstates
{non_trainable_variables

|layers
}metrics
~layer_regularization_losses
layer_metrics
7	variables
8trainable_variables
9regularization_losses
;__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses*
:
ђtrace_0
Ђtrace_1
ѓtrace_2
Ѓtrace_3* 
:
ёtrace_0
Ёtrace_1
єtrace_2
Єtrace_3* 
┌
ѕ	variables
Ѕtrainable_variables
іregularization_losses
І	keras_api
ї__call__
+Ї&call_and_return_all_conditional_losses
ј_random_generator

kernel
recurrent_kernel
bias*
* 

0
 1
!2*

0
 1
!2*
* 
Ц
Јstates
љnon_trainable_variables
Љlayers
њmetrics
 Њlayer_regularization_losses
ћlayer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses*
:
Ћtrace_0
ќtrace_1
Ќtrace_2
ўtrace_3* 
:
Ўtrace_0
џtrace_1
Џtrace_2
юtrace_3* 
┌
Ю	variables
ъtrainable_variables
Ъregularization_losses
а	keras_api
А__call__
+б&call_and_return_all_conditional_losses
Б_random_generator

kernel
 recurrent_kernel
!bias*
* 
* 

0
1*
* 
* 
* 
* 
* 
* 
* 

"0
#1*

"0
#1*
* 
ў
цnon_trainable_variables
Цlayers
дmetrics
 Дlayer_regularization_losses
еlayer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses*

Еtrace_0* 

фtrace_0* 

$0
%1*

$0
%1*
* 
ў
Фnon_trainable_variables
гlayers
Гmetrics
 «layer_regularization_losses
»layer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses*

░trace_0* 

▒trace_0* 
* 

0
1*
* 
* 
* 
* 
* 
* 
* 
<
▓	variables
│	keras_api

┤total

хcount*
sm
VARIABLE_VALUE(Adam/m/simple_rnn/simple_rnn_cell/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUE(Adam/v/simple_rnn/simple_rnn_cell/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE2Adam/m/simple_rnn/simple_rnn_cell/recurrent_kernel1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE2Adam/v/simple_rnn/simple_rnn_cell/recurrent_kernel1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUE&Adam/m/simple_rnn/simple_rnn_cell/bias1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUE&Adam/v/simple_rnn/simple_rnn_cell/bias1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE*Adam/m/simple_rnn_1/simple_rnn_cell/kernel1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE*Adam/v/simple_rnn_1/simple_rnn_cell/kernel1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE4Adam/m/simple_rnn_1/simple_rnn_cell/recurrent_kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
ђz
VARIABLE_VALUE4Adam/v/simple_rnn_1/simple_rnn_cell/recurrent_kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUE(Adam/m/simple_rnn_1/simple_rnn_cell/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUE(Adam/v/simple_rnn_1/simple_rnn_cell/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense/kernel2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense/kernel2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/m/dense/bias2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/v/dense/bias2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/dense_1/kernel2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_1/kernel2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_1/bias2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense_1/bias2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 

=0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

0
1
2*

0
1
2*
* 
ъ
Хnon_trainable_variables
иlayers
Иmetrics
 ╣layer_regularization_losses
║layer_metrics
ѕ	variables
Ѕtrainable_variables
іregularization_losses
ї__call__
+Ї&call_and_return_all_conditional_losses
'Ї"call_and_return_conditional_losses*

╗trace_0
╝trace_1* 

йtrace_0
Йtrace_1* 
* 
* 
* 

E0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

0
 1
!2*

0
 1
!2*
* 
ъ
┐non_trainable_variables
└layers
┴metrics
 ┬layer_regularization_losses
├layer_metrics
Ю	variables
ъtrainable_variables
Ъregularization_losses
А__call__
+б&call_and_return_all_conditional_losses
'б"call_and_return_conditional_losses*

─trace_0
┼trace_1* 

кtrace_0
Кtrace_1* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

┤0
х1*

▓	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
¤

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename!simple_rnn/simple_rnn_cell/kernel+simple_rnn/simple_rnn_cell/recurrent_kernelsimple_rnn/simple_rnn_cell/bias#simple_rnn_1/simple_rnn_cell/kernel-simple_rnn_1/simple_rnn_cell/recurrent_kernel!simple_rnn_1/simple_rnn_cell/biasdense/kernel
dense/biasdense_1/kerneldense_1/bias	iterationlearning_rate(Adam/m/simple_rnn/simple_rnn_cell/kernel(Adam/v/simple_rnn/simple_rnn_cell/kernel2Adam/m/simple_rnn/simple_rnn_cell/recurrent_kernel2Adam/v/simple_rnn/simple_rnn_cell/recurrent_kernel&Adam/m/simple_rnn/simple_rnn_cell/bias&Adam/v/simple_rnn/simple_rnn_cell/bias*Adam/m/simple_rnn_1/simple_rnn_cell/kernel*Adam/v/simple_rnn_1/simple_rnn_cell/kernel4Adam/m/simple_rnn_1/simple_rnn_cell/recurrent_kernel4Adam/v/simple_rnn_1/simple_rnn_cell/recurrent_kernel(Adam/m/simple_rnn_1/simple_rnn_cell/bias(Adam/v/simple_rnn_1/simple_rnn_cell/biasAdam/m/dense/kernelAdam/v/dense/kernelAdam/m/dense/biasAdam/v/dense/biasAdam/m/dense_1/kernelAdam/v/dense_1/kernelAdam/m/dense_1/biasAdam/v/dense_1/biastotalcountConst*/
Tin(
&2$*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *&
f!R
__inference__traced_save_6783
╩

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename!simple_rnn/simple_rnn_cell/kernel+simple_rnn/simple_rnn_cell/recurrent_kernelsimple_rnn/simple_rnn_cell/bias#simple_rnn_1/simple_rnn_cell/kernel-simple_rnn_1/simple_rnn_cell/recurrent_kernel!simple_rnn_1/simple_rnn_cell/biasdense/kernel
dense/biasdense_1/kerneldense_1/bias	iterationlearning_rate(Adam/m/simple_rnn/simple_rnn_cell/kernel(Adam/v/simple_rnn/simple_rnn_cell/kernel2Adam/m/simple_rnn/simple_rnn_cell/recurrent_kernel2Adam/v/simple_rnn/simple_rnn_cell/recurrent_kernel&Adam/m/simple_rnn/simple_rnn_cell/bias&Adam/v/simple_rnn/simple_rnn_cell/bias*Adam/m/simple_rnn_1/simple_rnn_cell/kernel*Adam/v/simple_rnn_1/simple_rnn_cell/kernel4Adam/m/simple_rnn_1/simple_rnn_cell/recurrent_kernel4Adam/v/simple_rnn_1/simple_rnn_cell/recurrent_kernel(Adam/m/simple_rnn_1/simple_rnn_cell/bias(Adam/v/simple_rnn_1/simple_rnn_cell/biasAdam/m/dense/kernelAdam/v/dense/kernelAdam/m/dense/biasAdam/v/dense/biasAdam/m/dense_1/kernelAdam/v/dense_1/kernelAdam/m/dense_1/biasAdam/v/dense_1/biastotalcount*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *)
f$R"
 __inference__traced_restore_6894§й
а4
Ѕ
D__inference_simple_rnn_layer_call_and_return_conditional_losses_4317

inputs&
simple_rnn_cell_4242:
@"
simple_rnn_cell_4244:@&
simple_rnn_cell_4246:@@
identityѕб'simple_rnn_cell/StatefulPartitionedCallбwhileI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         @c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  
R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maskН
'simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_4242simple_rnn_cell_4244simple_rnn_cell_4246*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:         @:         @*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *R
fMRK
I__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_4241n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Я
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_4242simple_rnn_cell_4244simple_rnn_cell_4246*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :         @: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_4254*
condR
while_cond_4253*8
output_shapes'
%: : : : :         @: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  @*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  @k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  @T
NoOpNoOp(^simple_rnn_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  
: : : 2R
'simple_rnn_cell/StatefulPartitionedCall'simple_rnn_cell/StatefulPartitionedCall2
whilewhile:$ 

_user_specified_name4246:$ 

_user_specified_name4244:$ 

_user_specified_name4242:\ X
4
_output_shapes"
 :                  

 
_user_specified_nameinputs
кп
Ч
__inference__wrapped_model_4079
sequential_inputc
Qsequential_2_sequential_simple_rnn_simple_rnn_cell_matmul_readvariableop_resource:
@`
Rsequential_2_sequential_simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource:@e
Ssequential_2_sequential_simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource:@@e
Ssequential_2_sequential_simple_rnn_1_simple_rnn_cell_matmul_readvariableop_resource:@@b
Tsequential_2_sequential_simple_rnn_1_simple_rnn_cell_biasadd_readvariableop_resource:@g
Usequential_2_sequential_simple_rnn_1_simple_rnn_cell_matmul_1_readvariableop_resource:@@P
>sequential_2_sequential_1_dense_matmul_readvariableop_resource:@ M
?sequential_2_sequential_1_dense_biasadd_readvariableop_resource: R
@sequential_2_sequential_1_dense_1_matmul_readvariableop_resource: O
Asequential_2_sequential_1_dense_1_biasadd_readvariableop_resource:
identityѕбIsequential_2/sequential/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOpбHsequential_2/sequential/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOpбJsequential_2/sequential/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOpб(sequential_2/sequential/simple_rnn/whileбKsequential_2/sequential/simple_rnn_1/simple_rnn_cell/BiasAdd/ReadVariableOpбJsequential_2/sequential/simple_rnn_1/simple_rnn_cell/MatMul/ReadVariableOpбLsequential_2/sequential/simple_rnn_1/simple_rnn_cell/MatMul_1/ReadVariableOpб*sequential_2/sequential/simple_rnn_1/whileб6sequential_2/sequential_1/dense/BiasAdd/ReadVariableOpб5sequential_2/sequential_1/dense/MatMul/ReadVariableOpб8sequential_2/sequential_1/dense_1/BiasAdd/ReadVariableOpб7sequential_2/sequential_1/dense_1/MatMul/ReadVariableOpv
(sequential_2/sequential/simple_rnn/ShapeShapesequential_input*
T0*
_output_shapes
::ь¤ђ
6sequential_2/sequential/simple_rnn/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ѓ
8sequential_2/sequential/simple_rnn/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:ѓ
8sequential_2/sequential/simple_rnn/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ђ
0sequential_2/sequential/simple_rnn/strided_sliceStridedSlice1sequential_2/sequential/simple_rnn/Shape:output:0?sequential_2/sequential/simple_rnn/strided_slice/stack:output:0Asequential_2/sequential/simple_rnn/strided_slice/stack_1:output:0Asequential_2/sequential/simple_rnn/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
1sequential_2/sequential/simple_rnn/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@▄
/sequential_2/sequential/simple_rnn/zeros/packedPack9sequential_2/sequential/simple_rnn/strided_slice:output:0:sequential_2/sequential/simple_rnn/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:s
.sequential_2/sequential/simple_rnn/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Н
(sequential_2/sequential/simple_rnn/zerosFill8sequential_2/sequential/simple_rnn/zeros/packed:output:07sequential_2/sequential/simple_rnn/zeros/Const:output:0*
T0*'
_output_shapes
:         @є
1sequential_2/sequential/simple_rnn/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          к
,sequential_2/sequential/simple_rnn/transpose	Transposesequential_input:sequential_2/sequential/simple_rnn/transpose/perm:output:0*
T0*4
_output_shapes"
 :                  
ў
*sequential_2/sequential/simple_rnn/Shape_1Shape0sequential_2/sequential/simple_rnn/transpose:y:0*
T0*
_output_shapes
::ь¤ѓ
8sequential_2/sequential/simple_rnn/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ё
:sequential_2/sequential/simple_rnn/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:ё
:sequential_2/sequential/simple_rnn/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:і
2sequential_2/sequential/simple_rnn/strided_slice_1StridedSlice3sequential_2/sequential/simple_rnn/Shape_1:output:0Asequential_2/sequential/simple_rnn/strided_slice_1/stack:output:0Csequential_2/sequential/simple_rnn/strided_slice_1/stack_1:output:0Csequential_2/sequential/simple_rnn/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskЅ
>sequential_2/sequential/simple_rnn/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         Ю
0sequential_2/sequential/simple_rnn/TensorArrayV2TensorListReserveGsequential_2/sequential/simple_rnn/TensorArrayV2/element_shape:output:0;sequential_2/sequential/simple_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЕ
Xsequential_2/sequential/simple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   ╔
Jsequential_2/sequential/simple_rnn/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor0sequential_2/sequential/simple_rnn/transpose:y:0asequential_2/sequential/simple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмѓ
8sequential_2/sequential/simple_rnn/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: ё
:sequential_2/sequential/simple_rnn/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:ё
:sequential_2/sequential/simple_rnn/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
2sequential_2/sequential/simple_rnn/strided_slice_2StridedSlice0sequential_2/sequential/simple_rnn/transpose:y:0Asequential_2/sequential/simple_rnn/strided_slice_2/stack:output:0Csequential_2/sequential/simple_rnn/strided_slice_2/stack_1:output:0Csequential_2/sequential/simple_rnn/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_mask┌
Hsequential_2/sequential/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOpQsequential_2_sequential_simple_rnn_simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:
@*
dtype0ё
9sequential_2/sequential/simple_rnn/simple_rnn_cell/MatMulMatMul;sequential_2/sequential/simple_rnn/strided_slice_2:output:0Psequential_2/sequential/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @п
Isequential_2/sequential/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOpRsequential_2_sequential_simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ј
:sequential_2/sequential/simple_rnn/simple_rnn_cell/BiasAddBiasAddCsequential_2/sequential/simple_rnn/simple_rnn_cell/MatMul:product:0Qsequential_2/sequential/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @я
Jsequential_2/sequential/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOpSsequential_2_sequential_simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0■
;sequential_2/sequential/simple_rnn/simple_rnn_cell/MatMul_1MatMul1sequential_2/sequential/simple_rnn/zeros:output:0Rsequential_2/sequential/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @§
6sequential_2/sequential/simple_rnn/simple_rnn_cell/addAddV2Csequential_2/sequential/simple_rnn/simple_rnn_cell/BiasAdd:output:0Esequential_2/sequential/simple_rnn/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:         @Г
7sequential_2/sequential/simple_rnn/simple_rnn_cell/TanhTanh:sequential_2/sequential/simple_rnn/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:         @Љ
@sequential_2/sequential/simple_rnn/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   А
2sequential_2/sequential/simple_rnn/TensorArrayV2_1TensorListReserveIsequential_2/sequential/simple_rnn/TensorArrayV2_1/element_shape:output:0;sequential_2/sequential/simple_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмi
'sequential_2/sequential/simple_rnn/timeConst*
_output_shapes
: *
dtype0*
value	B : є
;sequential_2/sequential/simple_rnn/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         w
5sequential_2/sequential/simple_rnn/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Э
(sequential_2/sequential/simple_rnn/whileWhile>sequential_2/sequential/simple_rnn/while/loop_counter:output:0Dsequential_2/sequential/simple_rnn/while/maximum_iterations:output:00sequential_2/sequential/simple_rnn/time:output:0;sequential_2/sequential/simple_rnn/TensorArrayV2_1:handle:01sequential_2/sequential/simple_rnn/zeros:output:0;sequential_2/sequential/simple_rnn/strided_slice_1:output:0Zsequential_2/sequential/simple_rnn/TensorArrayUnstack/TensorListFromTensor:output_handle:0Qsequential_2_sequential_simple_rnn_simple_rnn_cell_matmul_readvariableop_resourceRsequential_2_sequential_simple_rnn_simple_rnn_cell_biasadd_readvariableop_resourceSsequential_2_sequential_simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :         @: : : : : *%
_read_only_resource_inputs
	*>
body6R4
2sequential_2_sequential_simple_rnn_while_body_3893*>
cond6R4
2sequential_2_sequential_simple_rnn_while_cond_3892*8
output_shapes'
%: : : : :         @: : : : : *
parallel_iterations ц
Ssequential_2/sequential/simple_rnn/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   ┤
Esequential_2/sequential/simple_rnn/TensorArrayV2Stack/TensorListStackTensorListStack1sequential_2/sequential/simple_rnn/while:output:3\sequential_2/sequential/simple_rnn/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  @*
element_dtype0І
8sequential_2/sequential/simple_rnn/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         ё
:sequential_2/sequential/simple_rnn/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ё
:sequential_2/sequential/simple_rnn/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Х
2sequential_2/sequential/simple_rnn/strided_slice_3StridedSliceNsequential_2/sequential/simple_rnn/TensorArrayV2Stack/TensorListStack:tensor:0Asequential_2/sequential/simple_rnn/strided_slice_3/stack:output:0Csequential_2/sequential/simple_rnn/strided_slice_3/stack_1:output:0Csequential_2/sequential/simple_rnn/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_maskѕ
3sequential_2/sequential/simple_rnn/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ѕ
.sequential_2/sequential/simple_rnn/transpose_1	TransposeNsequential_2/sequential/simple_rnn/TensorArrayV2Stack/TensorListStack:tensor:0<sequential_2/sequential/simple_rnn/transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  @џ
*sequential_2/sequential/simple_rnn_1/ShapeShape2sequential_2/sequential/simple_rnn/transpose_1:y:0*
T0*
_output_shapes
::ь¤ѓ
8sequential_2/sequential/simple_rnn_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ё
:sequential_2/sequential/simple_rnn_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:ё
:sequential_2/sequential/simple_rnn_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:і
2sequential_2/sequential/simple_rnn_1/strided_sliceStridedSlice3sequential_2/sequential/simple_rnn_1/Shape:output:0Asequential_2/sequential/simple_rnn_1/strided_slice/stack:output:0Csequential_2/sequential/simple_rnn_1/strided_slice/stack_1:output:0Csequential_2/sequential/simple_rnn_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
3sequential_2/sequential/simple_rnn_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@Р
1sequential_2/sequential/simple_rnn_1/zeros/packedPack;sequential_2/sequential/simple_rnn_1/strided_slice:output:0<sequential_2/sequential/simple_rnn_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:u
0sequential_2/sequential/simple_rnn_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    █
*sequential_2/sequential/simple_rnn_1/zerosFill:sequential_2/sequential/simple_rnn_1/zeros/packed:output:09sequential_2/sequential/simple_rnn_1/zeros/Const:output:0*
T0*'
_output_shapes
:         @ѕ
3sequential_2/sequential/simple_rnn_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          В
.sequential_2/sequential/simple_rnn_1/transpose	Transpose2sequential_2/sequential/simple_rnn/transpose_1:y:0<sequential_2/sequential/simple_rnn_1/transpose/perm:output:0*
T0*4
_output_shapes"
 :                  @ю
,sequential_2/sequential/simple_rnn_1/Shape_1Shape2sequential_2/sequential/simple_rnn_1/transpose:y:0*
T0*
_output_shapes
::ь¤ё
:sequential_2/sequential/simple_rnn_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: є
<sequential_2/sequential/simple_rnn_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:є
<sequential_2/sequential/simple_rnn_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ћ
4sequential_2/sequential/simple_rnn_1/strided_slice_1StridedSlice5sequential_2/sequential/simple_rnn_1/Shape_1:output:0Csequential_2/sequential/simple_rnn_1/strided_slice_1/stack:output:0Esequential_2/sequential/simple_rnn_1/strided_slice_1/stack_1:output:0Esequential_2/sequential/simple_rnn_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskІ
@sequential_2/sequential/simple_rnn_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         Б
2sequential_2/sequential/simple_rnn_1/TensorArrayV2TensorListReserveIsequential_2/sequential/simple_rnn_1/TensorArrayV2/element_shape:output:0=sequential_2/sequential/simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмФ
Zsequential_2/sequential/simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   ¤
Lsequential_2/sequential/simple_rnn_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor2sequential_2/sequential/simple_rnn_1/transpose:y:0csequential_2/sequential/simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмё
:sequential_2/sequential/simple_rnn_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: є
<sequential_2/sequential/simple_rnn_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:є
<sequential_2/sequential/simple_rnn_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
4sequential_2/sequential/simple_rnn_1/strided_slice_2StridedSlice2sequential_2/sequential/simple_rnn_1/transpose:y:0Csequential_2/sequential/simple_rnn_1/strided_slice_2/stack:output:0Esequential_2/sequential/simple_rnn_1/strided_slice_2/stack_1:output:0Esequential_2/sequential/simple_rnn_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_maskя
Jsequential_2/sequential/simple_rnn_1/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOpSsequential_2_sequential_simple_rnn_1_simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0і
;sequential_2/sequential/simple_rnn_1/simple_rnn_cell/MatMulMatMul=sequential_2/sequential/simple_rnn_1/strided_slice_2:output:0Rsequential_2/sequential/simple_rnn_1/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @▄
Ksequential_2/sequential/simple_rnn_1/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOpTsequential_2_sequential_simple_rnn_1_simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ћ
<sequential_2/sequential/simple_rnn_1/simple_rnn_cell/BiasAddBiasAddEsequential_2/sequential/simple_rnn_1/simple_rnn_cell/MatMul:product:0Ssequential_2/sequential/simple_rnn_1/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @Р
Lsequential_2/sequential/simple_rnn_1/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOpUsequential_2_sequential_simple_rnn_1_simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0ё
=sequential_2/sequential/simple_rnn_1/simple_rnn_cell/MatMul_1MatMul3sequential_2/sequential/simple_rnn_1/zeros:output:0Tsequential_2/sequential/simple_rnn_1/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @Ѓ
8sequential_2/sequential/simple_rnn_1/simple_rnn_cell/addAddV2Esequential_2/sequential/simple_rnn_1/simple_rnn_cell/BiasAdd:output:0Gsequential_2/sequential/simple_rnn_1/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:         @▒
9sequential_2/sequential/simple_rnn_1/simple_rnn_cell/TanhTanh<sequential_2/sequential/simple_rnn_1/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:         @Њ
Bsequential_2/sequential/simple_rnn_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   Ѓ
Asequential_2/sequential/simple_rnn_1/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┤
4sequential_2/sequential/simple_rnn_1/TensorArrayV2_1TensorListReserveKsequential_2/sequential/simple_rnn_1/TensorArrayV2_1/element_shape:output:0Jsequential_2/sequential/simple_rnn_1/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмk
)sequential_2/sequential/simple_rnn_1/timeConst*
_output_shapes
: *
dtype0*
value	B : ѕ
=sequential_2/sequential/simple_rnn_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         y
7sequential_2/sequential/simple_rnn_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : њ	
*sequential_2/sequential/simple_rnn_1/whileWhile@sequential_2/sequential/simple_rnn_1/while/loop_counter:output:0Fsequential_2/sequential/simple_rnn_1/while/maximum_iterations:output:02sequential_2/sequential/simple_rnn_1/time:output:0=sequential_2/sequential/simple_rnn_1/TensorArrayV2_1:handle:03sequential_2/sequential/simple_rnn_1/zeros:output:0=sequential_2/sequential/simple_rnn_1/strided_slice_1:output:0\sequential_2/sequential/simple_rnn_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0Ssequential_2_sequential_simple_rnn_1_simple_rnn_cell_matmul_readvariableop_resourceTsequential_2_sequential_simple_rnn_1_simple_rnn_cell_biasadd_readvariableop_resourceUsequential_2_sequential_simple_rnn_1_simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :         @: : : : : *%
_read_only_resource_inputs
	*@
body8R6
4sequential_2_sequential_simple_rnn_1_while_body_3998*@
cond8R6
4sequential_2_sequential_simple_rnn_1_while_cond_3997*8
output_shapes'
%: : : : :         @: : : : : *
parallel_iterations д
Usequential_2/sequential/simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   ┼
Gsequential_2/sequential/simple_rnn_1/TensorArrayV2Stack/TensorListStackTensorListStack3sequential_2/sequential/simple_rnn_1/while:output:3^sequential_2/sequential/simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         @*
element_dtype0*
num_elementsЇ
:sequential_2/sequential/simple_rnn_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         є
<sequential_2/sequential/simple_rnn_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: є
<sequential_2/sequential/simple_rnn_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:└
4sequential_2/sequential/simple_rnn_1/strided_slice_3StridedSlicePsequential_2/sequential/simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0Csequential_2/sequential/simple_rnn_1/strided_slice_3/stack:output:0Esequential_2/sequential/simple_rnn_1/strided_slice_3/stack_1:output:0Esequential_2/sequential/simple_rnn_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_maskі
5sequential_2/sequential/simple_rnn_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ё
0sequential_2/sequential/simple_rnn_1/transpose_1	TransposePsequential_2/sequential/simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0>sequential_2/sequential/simple_rnn_1/transpose_1/perm:output:0*
T0*+
_output_shapes
:         @┤
5sequential_2/sequential_1/dense/MatMul/ReadVariableOpReadVariableOp>sequential_2_sequential_1_dense_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0Я
&sequential_2/sequential_1/dense/MatMulMatMul=sequential_2/sequential/simple_rnn_1/strided_slice_3:output:0=sequential_2/sequential_1/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ▓
6sequential_2/sequential_1/dense/BiasAdd/ReadVariableOpReadVariableOp?sequential_2_sequential_1_dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0о
'sequential_2/sequential_1/dense/BiasAddBiasAdd0sequential_2/sequential_1/dense/MatMul:product:0>sequential_2/sequential_1/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          љ
$sequential_2/sequential_1/dense/ReluRelu0sequential_2/sequential_1/dense/BiasAdd:output:0*
T0*'
_output_shapes
:          И
7sequential_2/sequential_1/dense_1/MatMul/ReadVariableOpReadVariableOp@sequential_2_sequential_1_dense_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype0┘
(sequential_2/sequential_1/dense_1/MatMulMatMul2sequential_2/sequential_1/dense/Relu:activations:0?sequential_2/sequential_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Х
8sequential_2/sequential_1/dense_1/BiasAdd/ReadVariableOpReadVariableOpAsequential_2_sequential_1_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0▄
)sequential_2/sequential_1/dense_1/BiasAddBiasAdd2sequential_2/sequential_1/dense_1/MatMul:product:0@sequential_2/sequential_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         џ
)sequential_2/sequential_1/dense_1/SoftmaxSoftmax2sequential_2/sequential_1/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:         ѓ
IdentityIdentity3sequential_2/sequential_1/dense_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         «
NoOpNoOpJ^sequential_2/sequential/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOpI^sequential_2/sequential/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOpK^sequential_2/sequential/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp)^sequential_2/sequential/simple_rnn/whileL^sequential_2/sequential/simple_rnn_1/simple_rnn_cell/BiasAdd/ReadVariableOpK^sequential_2/sequential/simple_rnn_1/simple_rnn_cell/MatMul/ReadVariableOpM^sequential_2/sequential/simple_rnn_1/simple_rnn_cell/MatMul_1/ReadVariableOp+^sequential_2/sequential/simple_rnn_1/while7^sequential_2/sequential_1/dense/BiasAdd/ReadVariableOp6^sequential_2/sequential_1/dense/MatMul/ReadVariableOp9^sequential_2/sequential_1/dense_1/BiasAdd/ReadVariableOp8^sequential_2/sequential_1/dense_1/MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:                  
: : : : : : : : : : 2ќ
Isequential_2/sequential/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOpIsequential_2/sequential/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp2ћ
Hsequential_2/sequential/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOpHsequential_2/sequential/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp2ў
Jsequential_2/sequential/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOpJsequential_2/sequential/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp2T
(sequential_2/sequential/simple_rnn/while(sequential_2/sequential/simple_rnn/while2џ
Ksequential_2/sequential/simple_rnn_1/simple_rnn_cell/BiasAdd/ReadVariableOpKsequential_2/sequential/simple_rnn_1/simple_rnn_cell/BiasAdd/ReadVariableOp2ў
Jsequential_2/sequential/simple_rnn_1/simple_rnn_cell/MatMul/ReadVariableOpJsequential_2/sequential/simple_rnn_1/simple_rnn_cell/MatMul/ReadVariableOp2ю
Lsequential_2/sequential/simple_rnn_1/simple_rnn_cell/MatMul_1/ReadVariableOpLsequential_2/sequential/simple_rnn_1/simple_rnn_cell/MatMul_1/ReadVariableOp2X
*sequential_2/sequential/simple_rnn_1/while*sequential_2/sequential/simple_rnn_1/while2p
6sequential_2/sequential_1/dense/BiasAdd/ReadVariableOp6sequential_2/sequential_1/dense/BiasAdd/ReadVariableOp2n
5sequential_2/sequential_1/dense/MatMul/ReadVariableOp5sequential_2/sequential_1/dense/MatMul/ReadVariableOp2t
8sequential_2/sequential_1/dense_1/BiasAdd/ReadVariableOp8sequential_2/sequential_1/dense_1/BiasAdd/ReadVariableOp2r
7sequential_2/sequential_1/dense_1/MatMul/ReadVariableOp7sequential_2/sequential_1/dense_1/MatMul/ReadVariableOp:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:f b
4
_output_shapes"
 :                  

*
_user_specified_namesequential_input
а4
Ѕ
D__inference_simple_rnn_layer_call_and_return_conditional_losses_4198

inputs&
simple_rnn_cell_4123:
@"
simple_rnn_cell_4125:@&
simple_rnn_cell_4127:@@
identityѕб'simple_rnn_cell/StatefulPartitionedCallбwhileI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         @c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  
R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maskН
'simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_4123simple_rnn_cell_4125simple_rnn_cell_4127*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:         @:         @*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *R
fMRK
I__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_4122n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Я
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_4123simple_rnn_cell_4125simple_rnn_cell_4127*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :         @: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_4135*
condR
while_cond_4134*8
output_shapes'
%: : : : :         @: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  @*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  @k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  @T
NoOpNoOp(^simple_rnn_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  
: : : 2R
'simple_rnn_cell/StatefulPartitionedCall'simple_rnn_cell/StatefulPartitionedCall2
whilewhile:$ 

_user_specified_name4127:$ 

_user_specified_name4125:$ 

_user_specified_name4123:\ X
4
_output_shapes"
 :                  

 
_user_specified_nameinputs
Ї5
І
F__inference_simple_rnn_1_layer_call_and_return_conditional_losses_4609

inputs&
simple_rnn_cell_4532:@@"
simple_rnn_cell_4534:@&
simple_rnn_cell_4536:@@
identityѕб'simple_rnn_cell/StatefulPartitionedCallбwhileI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         @c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  @R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_maskН
'simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_4532simple_rnn_cell_4534simple_rnn_cell_4536*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:         @:         @*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *R
fMRK
I__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_4531n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Я
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_4532simple_rnn_cell_4534simple_rnn_cell_4536*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :         @: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_4545*
condR
while_cond_4544*8
output_shapes'
%: : : : :         @: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   о
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         @*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         @g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         @T
NoOpNoOp(^simple_rnn_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  @: : : 2R
'simple_rnn_cell/StatefulPartitionedCall'simple_rnn_cell/StatefulPartitionedCall2
whilewhile:$ 

_user_specified_name4536:$ 

_user_specified_name4534:$ 

_user_specified_name4532:\ X
4
_output_shapes"
 :                  @
 
_user_specified_nameinputs
Ш
х
)__inference_simple_rnn_layer_call_fn_5455
inputs_0
unknown:
@
	unknown_0:@
	unknown_1:@@
identityѕбStatefulPartitionedCallш
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  @*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_simple_rnn_layer_call_and_return_conditional_losses_4317|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:$ 

_user_specified_name5451:$ 

_user_specified_name5449:$ 

_user_specified_name5447:^ Z
4
_output_shapes"
 :                  

"
_user_specified_name
inputs_0
п
Т
I__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_6495

inputs
states_00
matmul_readvariableop_resource:
@-
biasadd_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@@
identity

identity_1ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:         @G
TanhTanhadd:z:0*
T0*'
_output_shapes
:         @W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:         @Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:         @m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:         
:         @: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:QM
'
_output_shapes
:         @
"
_user_specified_name
states_0:O K
'
_output_shapes
:         

 
_user_specified_nameinputs
Й
Ѕ
D__inference_sequential_layer_call_and_return_conditional_losses_5131
simple_rnn_input!
simple_rnn_5006:
@
simple_rnn_5008:@!
simple_rnn_5010:@@#
simple_rnn_1_5123:@@
simple_rnn_1_5125:@#
simple_rnn_1_5127:@@
identityѕб"simple_rnn/StatefulPartitionedCallб$simple_rnn_1/StatefulPartitionedCallю
"simple_rnn/StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_inputsimple_rnn_5006simple_rnn_5008simple_rnn_5010*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  @*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_simple_rnn_layer_call_and_return_conditional_losses_5005┤
$simple_rnn_1/StatefulPartitionedCallStatefulPartitionedCall+simple_rnn/StatefulPartitionedCall:output:0simple_rnn_1_5123simple_rnn_1_5125simple_rnn_1_5127*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_simple_rnn_1_layer_call_and_return_conditional_losses_5122|
IdentityIdentity-simple_rnn_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @n
NoOpNoOp#^simple_rnn/StatefulPartitionedCall%^simple_rnn_1/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:                  
: : : : : : 2H
"simple_rnn/StatefulPartitionedCall"simple_rnn/StatefulPartitionedCall2L
$simple_rnn_1/StatefulPartitionedCall$simple_rnn_1/StatefulPartitionedCall:$ 

_user_specified_name5127:$ 

_user_specified_name5125:$ 

_user_specified_name5123:$ 

_user_specified_name5010:$ 

_user_specified_name5008:$ 

_user_specified_name5006:f b
4
_output_shapes"
 :                  

*
_user_specified_namesimple_rnn_input
Й
Ѕ
D__inference_sequential_layer_call_and_return_conditional_losses_4895
simple_rnn_input!
simple_rnn_4770:
@
simple_rnn_4772:@!
simple_rnn_4774:@@#
simple_rnn_1_4887:@@
simple_rnn_1_4889:@#
simple_rnn_1_4891:@@
identityѕб"simple_rnn/StatefulPartitionedCallб$simple_rnn_1/StatefulPartitionedCallю
"simple_rnn/StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_inputsimple_rnn_4770simple_rnn_4772simple_rnn_4774*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  @*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_simple_rnn_layer_call_and_return_conditional_losses_4769┤
$simple_rnn_1/StatefulPartitionedCallStatefulPartitionedCall+simple_rnn/StatefulPartitionedCall:output:0simple_rnn_1_4887simple_rnn_1_4889simple_rnn_1_4891*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_simple_rnn_1_layer_call_and_return_conditional_losses_4886|
IdentityIdentity-simple_rnn_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @n
NoOpNoOp#^simple_rnn/StatefulPartitionedCall%^simple_rnn_1/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:                  
: : : : : : 2H
"simple_rnn/StatefulPartitionedCall"simple_rnn/StatefulPartitionedCall2L
$simple_rnn_1/StatefulPartitionedCall$simple_rnn_1/StatefulPartitionedCall:$ 

_user_specified_name4891:$ 

_user_specified_name4889:$ 

_user_specified_name4887:$ 

_user_specified_name4774:$ 

_user_specified_name4772:$ 

_user_specified_name4770:f b
4
_output_shapes"
 :                  

*
_user_specified_namesimple_rnn_input
 

о
.__inference_simple_rnn_cell_layer_call_fn_6461

inputs
states_0
unknown:
@
	unknown_0:@
	unknown_1:@@
identity

identity_1ѕбStatefulPartitionedCallі
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:         @:         @*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *R
fMRK
I__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_4241o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:         
:         @: : : 22
StatefulPartitionedCallStatefulPartitionedCall:$ 

_user_specified_name6455:$ 

_user_specified_name6453:$ 

_user_specified_name6451:QM
'
_output_shapes
:         @
"
_user_specified_name
states_0:O K
'
_output_shapes
:         

 
_user_specified_nameinputs
к

­
?__inference_dense_layer_call_and_return_conditional_losses_6413

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:          a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:          S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
П
а
while_cond_5626
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_12
.while_while_cond_5626___redundant_placeholder02
.while_while_cond_5626___redundant_placeholder12
.while_while_cond_5626___redundant_placeholder22
.while_while_cond_5626___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :         @: :::::

_output_shapes
::GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
щЈ
ь!
__inference__traced_save_6783
file_prefixJ
8read_disablecopyonread_simple_rnn_simple_rnn_cell_kernel:
@V
Dread_1_disablecopyonread_simple_rnn_simple_rnn_cell_recurrent_kernel:@@F
8read_2_disablecopyonread_simple_rnn_simple_rnn_cell_bias:@N
<read_3_disablecopyonread_simple_rnn_1_simple_rnn_cell_kernel:@@X
Fread_4_disablecopyonread_simple_rnn_1_simple_rnn_cell_recurrent_kernel:@@H
:read_5_disablecopyonread_simple_rnn_1_simple_rnn_cell_bias:@7
%read_6_disablecopyonread_dense_kernel:@ 1
#read_7_disablecopyonread_dense_bias: 9
'read_8_disablecopyonread_dense_1_kernel: 3
%read_9_disablecopyonread_dense_1_bias:-
#read_10_disablecopyonread_iteration:	 1
'read_11_disablecopyonread_learning_rate: T
Bread_12_disablecopyonread_adam_m_simple_rnn_simple_rnn_cell_kernel:
@T
Bread_13_disablecopyonread_adam_v_simple_rnn_simple_rnn_cell_kernel:
@^
Lread_14_disablecopyonread_adam_m_simple_rnn_simple_rnn_cell_recurrent_kernel:@@^
Lread_15_disablecopyonread_adam_v_simple_rnn_simple_rnn_cell_recurrent_kernel:@@N
@read_16_disablecopyonread_adam_m_simple_rnn_simple_rnn_cell_bias:@N
@read_17_disablecopyonread_adam_v_simple_rnn_simple_rnn_cell_bias:@V
Dread_18_disablecopyonread_adam_m_simple_rnn_1_simple_rnn_cell_kernel:@@V
Dread_19_disablecopyonread_adam_v_simple_rnn_1_simple_rnn_cell_kernel:@@`
Nread_20_disablecopyonread_adam_m_simple_rnn_1_simple_rnn_cell_recurrent_kernel:@@`
Nread_21_disablecopyonread_adam_v_simple_rnn_1_simple_rnn_cell_recurrent_kernel:@@P
Bread_22_disablecopyonread_adam_m_simple_rnn_1_simple_rnn_cell_bias:@P
Bread_23_disablecopyonread_adam_v_simple_rnn_1_simple_rnn_cell_bias:@?
-read_24_disablecopyonread_adam_m_dense_kernel:@ ?
-read_25_disablecopyonread_adam_v_dense_kernel:@ 9
+read_26_disablecopyonread_adam_m_dense_bias: 9
+read_27_disablecopyonread_adam_v_dense_bias: A
/read_28_disablecopyonread_adam_m_dense_1_kernel: A
/read_29_disablecopyonread_adam_v_dense_1_kernel: ;
-read_30_disablecopyonread_adam_m_dense_1_bias:;
-read_31_disablecopyonread_adam_v_dense_1_bias:)
read_32_disablecopyonread_total: )
read_33_disablecopyonread_count: 
savev2_const
identity_69ѕбMergeV2CheckpointsбRead/DisableCopyOnReadбRead/ReadVariableOpбRead_1/DisableCopyOnReadбRead_1/ReadVariableOpбRead_10/DisableCopyOnReadбRead_10/ReadVariableOpбRead_11/DisableCopyOnReadбRead_11/ReadVariableOpбRead_12/DisableCopyOnReadбRead_12/ReadVariableOpбRead_13/DisableCopyOnReadбRead_13/ReadVariableOpбRead_14/DisableCopyOnReadбRead_14/ReadVariableOpбRead_15/DisableCopyOnReadбRead_15/ReadVariableOpбRead_16/DisableCopyOnReadбRead_16/ReadVariableOpбRead_17/DisableCopyOnReadбRead_17/ReadVariableOpбRead_18/DisableCopyOnReadбRead_18/ReadVariableOpбRead_19/DisableCopyOnReadбRead_19/ReadVariableOpбRead_2/DisableCopyOnReadбRead_2/ReadVariableOpбRead_20/DisableCopyOnReadбRead_20/ReadVariableOpбRead_21/DisableCopyOnReadбRead_21/ReadVariableOpбRead_22/DisableCopyOnReadбRead_22/ReadVariableOpбRead_23/DisableCopyOnReadбRead_23/ReadVariableOpбRead_24/DisableCopyOnReadбRead_24/ReadVariableOpбRead_25/DisableCopyOnReadбRead_25/ReadVariableOpбRead_26/DisableCopyOnReadбRead_26/ReadVariableOpбRead_27/DisableCopyOnReadбRead_27/ReadVariableOpбRead_28/DisableCopyOnReadбRead_28/ReadVariableOpбRead_29/DisableCopyOnReadбRead_29/ReadVariableOpбRead_3/DisableCopyOnReadбRead_3/ReadVariableOpбRead_30/DisableCopyOnReadбRead_30/ReadVariableOpбRead_31/DisableCopyOnReadбRead_31/ReadVariableOpбRead_32/DisableCopyOnReadбRead_32/ReadVariableOpбRead_33/DisableCopyOnReadбRead_33/ReadVariableOpбRead_4/DisableCopyOnReadбRead_4/ReadVariableOpбRead_5/DisableCopyOnReadбRead_5/ReadVariableOpбRead_6/DisableCopyOnReadбRead_6/ReadVariableOpбRead_7/DisableCopyOnReadбRead_7/ReadVariableOpбRead_8/DisableCopyOnReadбRead_8/ReadVariableOpбRead_9/DisableCopyOnReadбRead_9/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/partЂ
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : Њ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: і
Read/DisableCopyOnReadDisableCopyOnRead8read_disablecopyonread_simple_rnn_simple_rnn_cell_kernel"/device:CPU:0*
_output_shapes
 ┤
Read/ReadVariableOpReadVariableOp8read_disablecopyonread_simple_rnn_simple_rnn_cell_kernel^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:
@*
dtype0i
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:
@a

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes

:
@ў
Read_1/DisableCopyOnReadDisableCopyOnReadDread_1_disablecopyonread_simple_rnn_simple_rnn_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 ─
Read_1/ReadVariableOpReadVariableOpDread_1_disablecopyonread_simple_rnn_simple_rnn_cell_recurrent_kernel^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@@*
dtype0m

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@@c

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes

:@@ї
Read_2/DisableCopyOnReadDisableCopyOnRead8read_2_disablecopyonread_simple_rnn_simple_rnn_cell_bias"/device:CPU:0*
_output_shapes
 ┤
Read_2/ReadVariableOpReadVariableOp8read_2_disablecopyonread_simple_rnn_simple_rnn_cell_bias^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0i

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@_

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes
:@љ
Read_3/DisableCopyOnReadDisableCopyOnRead<read_3_disablecopyonread_simple_rnn_1_simple_rnn_cell_kernel"/device:CPU:0*
_output_shapes
 ╝
Read_3/ReadVariableOpReadVariableOp<read_3_disablecopyonread_simple_rnn_1_simple_rnn_cell_kernel^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@@*
dtype0m

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@@c

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes

:@@џ
Read_4/DisableCopyOnReadDisableCopyOnReadFread_4_disablecopyonread_simple_rnn_1_simple_rnn_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 к
Read_4/ReadVariableOpReadVariableOpFread_4_disablecopyonread_simple_rnn_1_simple_rnn_cell_recurrent_kernel^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@@*
dtype0m

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@@c

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes

:@@ј
Read_5/DisableCopyOnReadDisableCopyOnRead:read_5_disablecopyonread_simple_rnn_1_simple_rnn_cell_bias"/device:CPU:0*
_output_shapes
 Х
Read_5/ReadVariableOpReadVariableOp:read_5_disablecopyonread_simple_rnn_1_simple_rnn_cell_bias^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0j
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:@y
Read_6/DisableCopyOnReadDisableCopyOnRead%read_6_disablecopyonread_dense_kernel"/device:CPU:0*
_output_shapes
 Ц
Read_6/ReadVariableOpReadVariableOp%read_6_disablecopyonread_dense_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@ *
dtype0n
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@ e
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes

:@ w
Read_7/DisableCopyOnReadDisableCopyOnRead#read_7_disablecopyonread_dense_bias"/device:CPU:0*
_output_shapes
 Ъ
Read_7/ReadVariableOpReadVariableOp#read_7_disablecopyonread_dense_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0j
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
: {
Read_8/DisableCopyOnReadDisableCopyOnRead'read_8_disablecopyonread_dense_1_kernel"/device:CPU:0*
_output_shapes
 Д
Read_8/ReadVariableOpReadVariableOp'read_8_disablecopyonread_dense_1_kernel^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: *
dtype0n
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: e
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes

: y
Read_9/DisableCopyOnReadDisableCopyOnRead%read_9_disablecopyonread_dense_1_bias"/device:CPU:0*
_output_shapes
 А
Read_9/ReadVariableOpReadVariableOp%read_9_disablecopyonread_dense_1_bias^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:x
Read_10/DisableCopyOnReadDisableCopyOnRead#read_10_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 Ю
Read_10/ReadVariableOpReadVariableOp#read_10_disablecopyonread_iteration^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	g
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0	*
_output_shapes
: |
Read_11/DisableCopyOnReadDisableCopyOnRead'read_11_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 А
Read_11/ReadVariableOpReadVariableOp'read_11_disablecopyonread_learning_rate^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
: Ќ
Read_12/DisableCopyOnReadDisableCopyOnReadBread_12_disablecopyonread_adam_m_simple_rnn_simple_rnn_cell_kernel"/device:CPU:0*
_output_shapes
 ─
Read_12/ReadVariableOpReadVariableOpBread_12_disablecopyonread_adam_m_simple_rnn_simple_rnn_cell_kernel^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:
@*
dtype0o
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:
@e
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes

:
@Ќ
Read_13/DisableCopyOnReadDisableCopyOnReadBread_13_disablecopyonread_adam_v_simple_rnn_simple_rnn_cell_kernel"/device:CPU:0*
_output_shapes
 ─
Read_13/ReadVariableOpReadVariableOpBread_13_disablecopyonread_adam_v_simple_rnn_simple_rnn_cell_kernel^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:
@*
dtype0o
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:
@e
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes

:
@А
Read_14/DisableCopyOnReadDisableCopyOnReadLread_14_disablecopyonread_adam_m_simple_rnn_simple_rnn_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 ╬
Read_14/ReadVariableOpReadVariableOpLread_14_disablecopyonread_adam_m_simple_rnn_simple_rnn_cell_recurrent_kernel^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@@*
dtype0o
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@@e
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes

:@@А
Read_15/DisableCopyOnReadDisableCopyOnReadLread_15_disablecopyonread_adam_v_simple_rnn_simple_rnn_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 ╬
Read_15/ReadVariableOpReadVariableOpLread_15_disablecopyonread_adam_v_simple_rnn_simple_rnn_cell_recurrent_kernel^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@@*
dtype0o
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@@e
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes

:@@Ћ
Read_16/DisableCopyOnReadDisableCopyOnRead@read_16_disablecopyonread_adam_m_simple_rnn_simple_rnn_cell_bias"/device:CPU:0*
_output_shapes
 Й
Read_16/ReadVariableOpReadVariableOp@read_16_disablecopyonread_adam_m_simple_rnn_simple_rnn_cell_bias^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes
:@Ћ
Read_17/DisableCopyOnReadDisableCopyOnRead@read_17_disablecopyonread_adam_v_simple_rnn_simple_rnn_cell_bias"/device:CPU:0*
_output_shapes
 Й
Read_17/ReadVariableOpReadVariableOp@read_17_disablecopyonread_adam_v_simple_rnn_simple_rnn_cell_bias^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
:@Ў
Read_18/DisableCopyOnReadDisableCopyOnReadDread_18_disablecopyonread_adam_m_simple_rnn_1_simple_rnn_cell_kernel"/device:CPU:0*
_output_shapes
 к
Read_18/ReadVariableOpReadVariableOpDread_18_disablecopyonread_adam_m_simple_rnn_1_simple_rnn_cell_kernel^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@@*
dtype0o
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@@e
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes

:@@Ў
Read_19/DisableCopyOnReadDisableCopyOnReadDread_19_disablecopyonread_adam_v_simple_rnn_1_simple_rnn_cell_kernel"/device:CPU:0*
_output_shapes
 к
Read_19/ReadVariableOpReadVariableOpDread_19_disablecopyonread_adam_v_simple_rnn_1_simple_rnn_cell_kernel^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@@*
dtype0o
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@@e
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes

:@@Б
Read_20/DisableCopyOnReadDisableCopyOnReadNread_20_disablecopyonread_adam_m_simple_rnn_1_simple_rnn_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 л
Read_20/ReadVariableOpReadVariableOpNread_20_disablecopyonread_adam_m_simple_rnn_1_simple_rnn_cell_recurrent_kernel^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@@*
dtype0o
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@@e
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes

:@@Б
Read_21/DisableCopyOnReadDisableCopyOnReadNread_21_disablecopyonread_adam_v_simple_rnn_1_simple_rnn_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 л
Read_21/ReadVariableOpReadVariableOpNread_21_disablecopyonread_adam_v_simple_rnn_1_simple_rnn_cell_recurrent_kernel^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@@*
dtype0o
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@@e
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes

:@@Ќ
Read_22/DisableCopyOnReadDisableCopyOnReadBread_22_disablecopyonread_adam_m_simple_rnn_1_simple_rnn_cell_bias"/device:CPU:0*
_output_shapes
 └
Read_22/ReadVariableOpReadVariableOpBread_22_disablecopyonread_adam_m_simple_rnn_1_simple_rnn_cell_bias^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes
:@Ќ
Read_23/DisableCopyOnReadDisableCopyOnReadBread_23_disablecopyonread_adam_v_simple_rnn_1_simple_rnn_cell_bias"/device:CPU:0*
_output_shapes
 └
Read_23/ReadVariableOpReadVariableOpBread_23_disablecopyonread_adam_v_simple_rnn_1_simple_rnn_cell_bias^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes
:@ѓ
Read_24/DisableCopyOnReadDisableCopyOnRead-read_24_disablecopyonread_adam_m_dense_kernel"/device:CPU:0*
_output_shapes
 »
Read_24/ReadVariableOpReadVariableOp-read_24_disablecopyonread_adam_m_dense_kernel^Read_24/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@ *
dtype0o
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@ e
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes

:@ ѓ
Read_25/DisableCopyOnReadDisableCopyOnRead-read_25_disablecopyonread_adam_v_dense_kernel"/device:CPU:0*
_output_shapes
 »
Read_25/ReadVariableOpReadVariableOp-read_25_disablecopyonread_adam_v_dense_kernel^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@ *
dtype0o
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@ e
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes

:@ ђ
Read_26/DisableCopyOnReadDisableCopyOnRead+read_26_disablecopyonread_adam_m_dense_bias"/device:CPU:0*
_output_shapes
 Е
Read_26/ReadVariableOpReadVariableOp+read_26_disablecopyonread_adam_m_dense_bias^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes
: ђ
Read_27/DisableCopyOnReadDisableCopyOnRead+read_27_disablecopyonread_adam_v_dense_bias"/device:CPU:0*
_output_shapes
 Е
Read_27/ReadVariableOpReadVariableOp+read_27_disablecopyonread_adam_v_dense_bias^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes
: ё
Read_28/DisableCopyOnReadDisableCopyOnRead/read_28_disablecopyonread_adam_m_dense_1_kernel"/device:CPU:0*
_output_shapes
 ▒
Read_28/ReadVariableOpReadVariableOp/read_28_disablecopyonread_adam_m_dense_1_kernel^Read_28/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: *
dtype0o
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: e
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes

: ё
Read_29/DisableCopyOnReadDisableCopyOnRead/read_29_disablecopyonread_adam_v_dense_1_kernel"/device:CPU:0*
_output_shapes
 ▒
Read_29/ReadVariableOpReadVariableOp/read_29_disablecopyonread_adam_v_dense_1_kernel^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: *
dtype0o
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: e
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes

: ѓ
Read_30/DisableCopyOnReadDisableCopyOnRead-read_30_disablecopyonread_adam_m_dense_1_bias"/device:CPU:0*
_output_shapes
 Ф
Read_30/ReadVariableOpReadVariableOp-read_30_disablecopyonread_adam_m_dense_1_bias^Read_30/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*
_output_shapes
:ѓ
Read_31/DisableCopyOnReadDisableCopyOnRead-read_31_disablecopyonread_adam_v_dense_1_bias"/device:CPU:0*
_output_shapes
 Ф
Read_31/ReadVariableOpReadVariableOp-read_31_disablecopyonread_adam_v_dense_1_bias^Read_31/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*
_output_shapes
:t
Read_32/DisableCopyOnReadDisableCopyOnReadread_32_disablecopyonread_total"/device:CPU:0*
_output_shapes
 Ў
Read_32/ReadVariableOpReadVariableOpread_32_disablecopyonread_total^Read_32/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_33/DisableCopyOnReadDisableCopyOnReadread_33_disablecopyonread_count"/device:CPU:0*
_output_shapes
 Ў
Read_33/ReadVariableOpReadVariableOpread_33_disablecopyonread_count^Read_33/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes
: З
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:#*
dtype0*Ю
valueЊBљ#B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH│
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:#*
dtype0*Y
valuePBN#B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B р
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *1
dtypes'
%2#	љ
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:│
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_68Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_69IdentityIdentity_68:output:0^NoOp*
T0*
_output_shapes
: Е
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_69Identity_69:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:=#9

_output_shapes
: 

_user_specified_nameConst:%"!

_user_specified_namecount:%!!

_user_specified_nametotal:3 /
-
_user_specified_nameAdam/v/dense_1/bias:3/
-
_user_specified_nameAdam/m/dense_1/bias:51
/
_user_specified_nameAdam/v/dense_1/kernel:51
/
_user_specified_nameAdam/m/dense_1/kernel:1-
+
_user_specified_nameAdam/v/dense/bias:1-
+
_user_specified_nameAdam/m/dense/bias:3/
-
_user_specified_nameAdam/v/dense/kernel:3/
-
_user_specified_nameAdam/m/dense/kernel:HD
B
_user_specified_name*(Adam/v/simple_rnn_1/simple_rnn_cell/bias:HD
B
_user_specified_name*(Adam/m/simple_rnn_1/simple_rnn_cell/bias:TP
N
_user_specified_name64Adam/v/simple_rnn_1/simple_rnn_cell/recurrent_kernel:TP
N
_user_specified_name64Adam/m/simple_rnn_1/simple_rnn_cell/recurrent_kernel:JF
D
_user_specified_name,*Adam/v/simple_rnn_1/simple_rnn_cell/kernel:JF
D
_user_specified_name,*Adam/m/simple_rnn_1/simple_rnn_cell/kernel:FB
@
_user_specified_name(&Adam/v/simple_rnn/simple_rnn_cell/bias:FB
@
_user_specified_name(&Adam/m/simple_rnn/simple_rnn_cell/bias:RN
L
_user_specified_name42Adam/v/simple_rnn/simple_rnn_cell/recurrent_kernel:RN
L
_user_specified_name42Adam/m/simple_rnn/simple_rnn_cell/recurrent_kernel:HD
B
_user_specified_name*(Adam/v/simple_rnn/simple_rnn_cell/kernel:HD
B
_user_specified_name*(Adam/m/simple_rnn/simple_rnn_cell/kernel:-)
'
_user_specified_namelearning_rate:)%
#
_user_specified_name	iteration:,
(
&
_user_specified_namedense_1/bias:.	*
(
_user_specified_namedense_1/kernel:*&
$
_user_specified_name
dense/bias:,(
&
_user_specified_namedense/kernel:A=
;
_user_specified_name#!simple_rnn_1/simple_rnn_cell/bias:MI
G
_user_specified_name/-simple_rnn_1/simple_rnn_cell/recurrent_kernel:C?
=
_user_specified_name%#simple_rnn_1/simple_rnn_cell/kernel:?;
9
_user_specified_name!simple_rnn/simple_rnn_cell/bias:KG
E
_user_specified_name-+simple_rnn/simple_rnn_cell/recurrent_kernel:A=
;
_user_specified_name#!simple_rnn/simple_rnn_cell/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
ќ/
┤
while_body_4819
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:@@E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:@J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:@@C
5while_simple_rnn_cell_biasadd_readvariableop_resource:@H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:@@ѕб,while/simple_rnn_cell/BiasAdd/ReadVariableOpб+while/simple_rnn_cell/MatMul/ReadVariableOpб-while/simple_rnn_cell/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         @*
element_dtype0б
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0┐
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @а
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0И
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @д
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0д
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @д
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:         @s
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:         @r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : №
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: {
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:         @х

while/NoOpNoOp-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0")
while_identitywhile/Identity:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :         @: : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
ќ/
┤
while_body_5996
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:@@E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:@J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:@@C
5while_simple_rnn_cell_biasadd_readvariableop_resource:@H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:@@ѕб,while/simple_rnn_cell/BiasAdd/ReadVariableOpб+while/simple_rnn_cell/MatMul/ReadVariableOpб-while/simple_rnn_cell/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         @*
element_dtype0б
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0┐
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @а
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0И
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @д
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0д
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @д
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:         @s
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:         @r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : №
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: {
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:         @х

while/NoOpNoOp-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0")
while_identitywhile/Identity:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :         @: : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
═

Ы
A__inference_dense_1_layer_call_and_return_conditional_losses_5238

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:         S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:          : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:          
 
_user_specified_nameinputs
П
а
while_cond_4253
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_12
.while_while_cond_4253___redundant_placeholder02
.while_while_cond_4253___redundant_placeholder12
.while_while_cond_4253___redundant_placeholder22
.while_while_cond_4253___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :         @: :::::

_output_shapes
::GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
Ю	
М
+__inference_sequential_1_layer_call_fn_5285
dense_input
unknown:@ 
	unknown_0: 
	unknown_1: 
	unknown_2:
identityѕбStatefulPartitionedCallЩ
StatefulPartitionedCallStatefulPartitionedCalldense_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_sequential_1_layer_call_and_return_conditional_losses_5259o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:$ 

_user_specified_name5281:$ 

_user_specified_name5279:$ 

_user_specified_name5277:$ 

_user_specified_name5275:T P
'
_output_shapes
:         @
%
_user_specified_namedense_input
ф
■
+__inference_sequential_2_layer_call_fn_5380
sequential_input
unknown:
@
	unknown_0:@
	unknown_1:@@
	unknown_2:@@
	unknown_3:@
	unknown_4:@@
	unknown_5:@ 
	unknown_6: 
	unknown_7: 
	unknown_8:
identityѕбStatefulPartitionedCall═
StatefulPartitionedCallStatefulPartitionedCallsequential_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_sequential_2_layer_call_and_return_conditional_losses_5329o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:                  
: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:$
 

_user_specified_name5376:$	 

_user_specified_name5374:$ 

_user_specified_name5372:$ 

_user_specified_name5370:$ 

_user_specified_name5368:$ 

_user_specified_name5366:$ 

_user_specified_name5364:$ 

_user_specified_name5362:$ 

_user_specified_name5360:$ 

_user_specified_name5358:f b
4
_output_shapes"
 :                  

*
_user_specified_namesequential_input
о>
»
F__inference_simple_rnn_1_layer_call_and_return_conditional_losses_6063
inputs_0@
.simple_rnn_cell_matmul_readvariableop_resource:@@=
/simple_rnn_cell_biasadd_readvariableop_resource:@B
0simple_rnn_cell_matmul_1_readvariableop_resource:@@
identityѕб&simple_rnn_cell/BiasAdd/ReadVariableOpб%simple_rnn_cell/MatMul/ReadVariableOpб'simple_rnn_cell/MatMul_1/ReadVariableOpбwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         @c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  @R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_maskћ
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0Џ
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @њ
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0д
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @ў
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0Ћ
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @ћ
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:         @g
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:         @n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ▒
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :         @: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_5996*
condR
while_cond_5995*8
output_shapes'
%: : : : :         @: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   о
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         @*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         @g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         @Ц
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  @: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:^ Z
4
_output_shapes"
 :                  @
"
_user_specified_name
inputs_0
 

о
.__inference_simple_rnn_cell_layer_call_fn_6523

inputs
states_0
unknown:@@
	unknown_0:@
	unknown_1:@@
identity

identity_1ѕбStatefulPartitionedCallі
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:         @:         @*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *R
fMRK
I__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_4531o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:         @:         @: : : 22
StatefulPartitionedCallStatefulPartitionedCall:$ 

_user_specified_name6517:$ 

_user_specified_name6515:$ 

_user_specified_name6513:QM
'
_output_shapes
:         @
"
_user_specified_name
states_0:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
▄
а
F__inference_sequential_1_layer_call_and_return_conditional_losses_5259
dense_input

dense_5248:@ 

dense_5250: 
dense_1_5253: 
dense_1_5255:
identityѕбdense/StatefulPartitionedCallбdense_1/StatefulPartitionedCallс
dense/StatefulPartitionedCallStatefulPartitionedCalldense_input
dense_5248
dense_5250*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_5222є
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_5253dense_1_5255*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_5238w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         d
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @: : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:$ 

_user_specified_name5255:$ 

_user_specified_name5253:$ 

_user_specified_name5250:$ 

_user_specified_name5248:T P
'
_output_shapes
:         @
%
_user_specified_namedense_input
рO
м
2sequential_2_sequential_simple_rnn_while_body_3893b
^sequential_2_sequential_simple_rnn_while_sequential_2_sequential_simple_rnn_while_loop_counterh
dsequential_2_sequential_simple_rnn_while_sequential_2_sequential_simple_rnn_while_maximum_iterations8
4sequential_2_sequential_simple_rnn_while_placeholder:
6sequential_2_sequential_simple_rnn_while_placeholder_1:
6sequential_2_sequential_simple_rnn_while_placeholder_2a
]sequential_2_sequential_simple_rnn_while_sequential_2_sequential_simple_rnn_strided_slice_1_0ъ
Ўsequential_2_sequential_simple_rnn_while_tensorarrayv2read_tensorlistgetitem_sequential_2_sequential_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0k
Ysequential_2_sequential_simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0:
@h
Zsequential_2_sequential_simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0:@m
[sequential_2_sequential_simple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0:@@5
1sequential_2_sequential_simple_rnn_while_identity7
3sequential_2_sequential_simple_rnn_while_identity_17
3sequential_2_sequential_simple_rnn_while_identity_27
3sequential_2_sequential_simple_rnn_while_identity_37
3sequential_2_sequential_simple_rnn_while_identity_4_
[sequential_2_sequential_simple_rnn_while_sequential_2_sequential_simple_rnn_strided_slice_1ю
Ќsequential_2_sequential_simple_rnn_while_tensorarrayv2read_tensorlistgetitem_sequential_2_sequential_simple_rnn_tensorarrayunstack_tensorlistfromtensori
Wsequential_2_sequential_simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource:
@f
Xsequential_2_sequential_simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource:@k
Ysequential_2_sequential_simple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource:@@ѕбOsequential_2/sequential/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOpбNsequential_2/sequential/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOpбPsequential_2/sequential/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOpФ
Zsequential_2/sequential/simple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   о
Lsequential_2/sequential/simple_rnn/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemЎsequential_2_sequential_simple_rnn_while_tensorarrayv2read_tensorlistgetitem_sequential_2_sequential_simple_rnn_tensorarrayunstack_tensorlistfromtensor_04sequential_2_sequential_simple_rnn_while_placeholdercsequential_2/sequential/simple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         
*
element_dtype0У
Nsequential_2/sequential/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOpYsequential_2_sequential_simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:
@*
dtype0е
?sequential_2/sequential/simple_rnn/while/simple_rnn_cell/MatMulMatMulSsequential_2/sequential/simple_rnn/while/TensorArrayV2Read/TensorListGetItem:item:0Vsequential_2/sequential/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @Т
Osequential_2/sequential/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOpZsequential_2_sequential_simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0А
@sequential_2/sequential/simple_rnn/while/simple_rnn_cell/BiasAddBiasAddIsequential_2/sequential/simple_rnn/while/simple_rnn_cell/MatMul:product:0Wsequential_2/sequential/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @В
Psequential_2/sequential/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp[sequential_2_sequential_simple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0Ј
Asequential_2/sequential/simple_rnn/while/simple_rnn_cell/MatMul_1MatMul6sequential_2_sequential_simple_rnn_while_placeholder_2Xsequential_2/sequential/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @Ј
<sequential_2/sequential/simple_rnn/while/simple_rnn_cell/addAddV2Isequential_2/sequential/simple_rnn/while/simple_rnn_cell/BiasAdd:output:0Ksequential_2/sequential/simple_rnn/while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:         @╣
=sequential_2/sequential/simple_rnn/while/simple_rnn_cell/TanhTanh@sequential_2/sequential/simple_rnn/while/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:         @М
Msequential_2/sequential/simple_rnn/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem6sequential_2_sequential_simple_rnn_while_placeholder_14sequential_2_sequential_simple_rnn_while_placeholderAsequential_2/sequential/simple_rnn/while/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:жУмp
.sequential_2/sequential/simple_rnn/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :┼
,sequential_2/sequential/simple_rnn/while/addAddV24sequential_2_sequential_simple_rnn_while_placeholder7sequential_2/sequential/simple_rnn/while/add/y:output:0*
T0*
_output_shapes
: r
0sequential_2/sequential/simple_rnn/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :з
.sequential_2/sequential/simple_rnn/while/add_1AddV2^sequential_2_sequential_simple_rnn_while_sequential_2_sequential_simple_rnn_while_loop_counter9sequential_2/sequential/simple_rnn/while/add_1/y:output:0*
T0*
_output_shapes
: ┬
1sequential_2/sequential/simple_rnn/while/IdentityIdentity2sequential_2/sequential/simple_rnn/while/add_1:z:0.^sequential_2/sequential/simple_rnn/while/NoOp*
T0*
_output_shapes
: Ш
3sequential_2/sequential/simple_rnn/while/Identity_1Identitydsequential_2_sequential_simple_rnn_while_sequential_2_sequential_simple_rnn_while_maximum_iterations.^sequential_2/sequential/simple_rnn/while/NoOp*
T0*
_output_shapes
: ┬
3sequential_2/sequential/simple_rnn/while/Identity_2Identity0sequential_2/sequential/simple_rnn/while/add:z:0.^sequential_2/sequential/simple_rnn/while/NoOp*
T0*
_output_shapes
: №
3sequential_2/sequential/simple_rnn/while/Identity_3Identity]sequential_2/sequential/simple_rnn/while/TensorArrayV2Write/TensorListSetItem:output_handle:0.^sequential_2/sequential/simple_rnn/while/NoOp*
T0*
_output_shapes
: С
3sequential_2/sequential/simple_rnn/while/Identity_4IdentityAsequential_2/sequential/simple_rnn/while/simple_rnn_cell/Tanh:y:0.^sequential_2/sequential/simple_rnn/while/NoOp*
T0*'
_output_shapes
:         @┴
-sequential_2/sequential/simple_rnn/while/NoOpNoOpP^sequential_2/sequential/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOpO^sequential_2/sequential/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOpQ^sequential_2/sequential/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "s
3sequential_2_sequential_simple_rnn_while_identity_1<sequential_2/sequential/simple_rnn/while/Identity_1:output:0"s
3sequential_2_sequential_simple_rnn_while_identity_2<sequential_2/sequential/simple_rnn/while/Identity_2:output:0"s
3sequential_2_sequential_simple_rnn_while_identity_3<sequential_2/sequential/simple_rnn/while/Identity_3:output:0"s
3sequential_2_sequential_simple_rnn_while_identity_4<sequential_2/sequential/simple_rnn/while/Identity_4:output:0"o
1sequential_2_sequential_simple_rnn_while_identity:sequential_2/sequential/simple_rnn/while/Identity:output:0"╝
[sequential_2_sequential_simple_rnn_while_sequential_2_sequential_simple_rnn_strided_slice_1]sequential_2_sequential_simple_rnn_while_sequential_2_sequential_simple_rnn_strided_slice_1_0"Х
Xsequential_2_sequential_simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resourceZsequential_2_sequential_simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0"И
Ysequential_2_sequential_simple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource[sequential_2_sequential_simple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0"┤
Wsequential_2_sequential_simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resourceYsequential_2_sequential_simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0"Х
Ќsequential_2_sequential_simple_rnn_while_tensorarrayv2read_tensorlistgetitem_sequential_2_sequential_simple_rnn_tensorarrayunstack_tensorlistfromtensorЎsequential_2_sequential_simple_rnn_while_tensorarrayv2read_tensorlistgetitem_sequential_2_sequential_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :         @: : : : : 2б
Osequential_2/sequential/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOpOsequential_2/sequential/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp2а
Nsequential_2/sequential/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOpNsequential_2/sequential/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp2ц
Psequential_2/sequential/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOpPsequential_2/sequential/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:ѓ~

_output_shapes
: 
d
_user_specified_nameLJsequential_2/sequential/simple_rnn/TensorArrayUnstack/TensorListFromTensor:jf

_output_shapes
: 
L
_user_specified_name42sequential_2/sequential/simple_rnn/strided_slice_1:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: :so

_output_shapes
: 
U
_user_specified_name=;sequential_2/sequential/simple_rnn/while/maximum_iterations:m i

_output_shapes
: 
O
_user_specified_name75sequential_2/sequential/simple_rnn/while/loop_counter
П
а
while_cond_5518
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_12
.while_while_cond_5518___redundant_placeholder02
.while_while_cond_5518___redundant_placeholder12
.while_while_cond_5518___redundant_placeholder22
.while_while_cond_5518___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :         @: :::::

_output_shapes
::GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
Ю	
М
+__inference_sequential_1_layer_call_fn_5272
dense_input
unknown:@ 
	unknown_0: 
	unknown_1: 
	unknown_2:
identityѕбStatefulPartitionedCallЩ
StatefulPartitionedCallStatefulPartitionedCalldense_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_sequential_1_layer_call_and_return_conditional_losses_5245o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:$ 

_user_specified_name5268:$ 

_user_specified_name5266:$ 

_user_specified_name5264:$ 

_user_specified_name5262:T P
'
_output_shapes
:         @
%
_user_specified_namedense_input
Щ-
┤
while_body_5735
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:
@E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:@J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:
@C
5while_simple_rnn_cell_biasadd_readvariableop_resource:@H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:@@ѕб,while/simple_rnn_cell/BiasAdd/ReadVariableOpб+while/simple_rnn_cell/MatMul/ReadVariableOpб-while/simple_rnn_cell/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         
*
element_dtype0б
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:
@*
dtype0┐
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @а
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0И
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @д
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0д
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @д
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:         @s
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:         @К
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: {
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:         @х

while/NoOpNoOp-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0")
while_identitywhile/Identity:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :         @: : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
Щ
ш
"__inference_signature_wrapper_5433
sequential_input
unknown:
@
	unknown_0:@
	unknown_1:@@
	unknown_2:@@
	unknown_3:@
	unknown_4:@@
	unknown_5:@ 
	unknown_6: 
	unknown_7: 
	unknown_8:
identityѕбStatefulPartitionedCallд
StatefulPartitionedCallStatefulPartitionedCallsequential_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8ѓ *(
f#R!
__inference__wrapped_model_4079o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:                  
: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:$
 

_user_specified_name5429:$	 

_user_specified_name5427:$ 

_user_specified_name5425:$ 

_user_specified_name5423:$ 

_user_specified_name5421:$ 

_user_specified_name5419:$ 

_user_specified_name5417:$ 

_user_specified_name5415:$ 

_user_specified_name5413:$ 

_user_specified_name5411:f b
4
_output_shapes"
 :                  

*
_user_specified_namesequential_input
С
Њ
&__inference_dense_1_layer_call_fn_6422

inputs
unknown: 
	unknown_0:
identityѕбStatefulPartitionedCallо
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_5238o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:          : : 22
StatefulPartitionedCallStatefulPartitionedCall:$ 

_user_specified_name6418:$ 

_user_specified_name6416:O K
'
_output_shapes
:          
 
_user_specified_nameinputs
р=
Ф
D__inference_simple_rnn_layer_call_and_return_conditional_losses_4769

inputs@
.simple_rnn_cell_matmul_readvariableop_resource:
@=
/simple_rnn_cell_biasadd_readvariableop_resource:@B
0simple_rnn_cell_matmul_1_readvariableop_resource:@@
identityѕб&simple_rnn_cell/BiasAdd/ReadVariableOpб%simple_rnn_cell/MatMul/ReadVariableOpб'simple_rnn_cell/MatMul_1/ReadVariableOpбwhileI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         @c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  
R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maskћ
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:
@*
dtype0Џ
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @њ
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0д
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @ў
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0Ћ
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @ћ
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:         @g
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:         @n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ▒
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :         @: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_4703*
condR
while_cond_4702*8
output_shapes'
%: : : : :         @: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  @*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  @k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  @Ц
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  
: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:\ X
4
_output_shapes"
 :                  

 
_user_specified_nameinputs
Я
и
+__inference_simple_rnn_1_layer_call_fn_5920
inputs_0
unknown:@@
	unknown_0:@
	unknown_1:@@
identityѕбStatefulPartitionedCallЖ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_simple_rnn_1_layer_call_and_return_conditional_losses_4488o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  @: : : 22
StatefulPartitionedCallStatefulPartitionedCall:$ 

_user_specified_name5916:$ 

_user_specified_name5914:$ 

_user_specified_name5912:^ Z
4
_output_shapes"
 :                  @
"
_user_specified_name
inputs_0
ж=
Г
D__inference_simple_rnn_layer_call_and_return_conditional_losses_5585
inputs_0@
.simple_rnn_cell_matmul_readvariableop_resource:
@=
/simple_rnn_cell_biasadd_readvariableop_resource:@B
0simple_rnn_cell_matmul_1_readvariableop_resource:@@
identityѕб&simple_rnn_cell/BiasAdd/ReadVariableOpб%simple_rnn_cell/MatMul/ReadVariableOpб'simple_rnn_cell/MatMul_1/ReadVariableOpбwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         @c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  
R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maskћ
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:
@*
dtype0Џ
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @њ
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0д
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @ў
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0Ћ
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @ћ
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:         @g
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:         @n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ▒
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :         @: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_5519*
condR
while_cond_5518*8
output_shapes'
%: : : : :         @: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  @*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  @k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  @Ц
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  
: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:^ Z
4
_output_shapes"
 :                  

"
_user_specified_name
inputs_0
ќ/
┤
while_body_6326
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:@@E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:@J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:@@C
5while_simple_rnn_cell_biasadd_readvariableop_resource:@H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:@@ѕб,while/simple_rnn_cell/BiasAdd/ReadVariableOpб+while/simple_rnn_cell/MatMul/ReadVariableOpб-while/simple_rnn_cell/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         @*
element_dtype0б
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0┐
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @а
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0И
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @д
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0д
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @д
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:         @s
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:         @r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : №
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: {
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:         @х

while/NoOpNoOp-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0")
while_identitywhile/Identity:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :         @: : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
Щ-
┤
while_body_5843
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:
@E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:@J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:
@C
5while_simple_rnn_cell_biasadd_readvariableop_resource:@H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:@@ѕб,while/simple_rnn_cell/BiasAdd/ReadVariableOpб+while/simple_rnn_cell/MatMul/ReadVariableOpб-while/simple_rnn_cell/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         
*
element_dtype0б
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:
@*
dtype0┐
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @а
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0И
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @д
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0д
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @д
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:         @s
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:         @К
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: {
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:         @х

while/NoOpNoOp-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0")
while_identitywhile/Identity:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :         @: : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
Щ-
┤
while_body_5627
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:
@E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:@J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:
@C
5while_simple_rnn_cell_biasadd_readvariableop_resource:@H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:@@ѕб,while/simple_rnn_cell/BiasAdd/ReadVariableOpб+while/simple_rnn_cell/MatMul/ReadVariableOpб-while/simple_rnn_cell/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         
*
element_dtype0б
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:
@*
dtype0┐
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @а
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0И
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @д
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0д
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @д
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:         @s
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:         @К
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: {
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:         @х

while/NoOpNoOp-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0")
while_identitywhile/Identity:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :         @: : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
ќ/
┤
while_body_6106
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:@@E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:@J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:@@C
5while_simple_rnn_cell_biasadd_readvariableop_resource:@H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:@@ѕб,while/simple_rnn_cell/BiasAdd/ReadVariableOpб+while/simple_rnn_cell/MatMul/ReadVariableOpб-while/simple_rnn_cell/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         @*
element_dtype0б
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0┐
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @а
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0И
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @д
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0д
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @д
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:         @s
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:         @r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : №
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: {
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:         @х

while/NoOpNoOp-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0")
while_identitywhile/Identity:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :         @: : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
П
а
while_cond_4938
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_12
.while_while_cond_4938___redundant_placeholder02
.while_while_cond_4938___redundant_placeholder12
.while_while_cond_4938___redundant_placeholder22
.while_while_cond_4938___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :         @: :::::

_output_shapes
::GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
Д
Љ
F__inference_sequential_2_layer_call_and_return_conditional_losses_5329
sequential_input!
sequential_5306:
@
sequential_5308:@!
sequential_5310:@@!
sequential_5312:@@
sequential_5314:@!
sequential_5316:@@#
sequential_1_5319:@ 
sequential_1_5321: #
sequential_1_5323: 
sequential_1_5325:
identityѕб"sequential/StatefulPartitionedCallб$sequential_1/StatefulPartitionedCall╚
"sequential/StatefulPartitionedCallStatefulPartitionedCallsequential_inputsequential_5306sequential_5308sequential_5310sequential_5312sequential_5314sequential_5316*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_4895╔
$sequential_1/StatefulPartitionedCallStatefulPartitionedCall+sequential/StatefulPartitionedCall:output:0sequential_1_5319sequential_1_5321sequential_1_5323sequential_1_5325*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_sequential_1_layer_call_and_return_conditional_losses_5245|
IdentityIdentity-sequential_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         n
NoOpNoOp#^sequential/StatefulPartitionedCall%^sequential_1/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:                  
: : : : : : : : : : 2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall2L
$sequential_1/StatefulPartitionedCall$sequential_1/StatefulPartitionedCall:$
 

_user_specified_name5325:$	 

_user_specified_name5323:$ 

_user_specified_name5321:$ 

_user_specified_name5319:$ 

_user_specified_name5316:$ 

_user_specified_name5314:$ 

_user_specified_name5312:$ 

_user_specified_name5310:$ 

_user_specified_name5308:$ 

_user_specified_name5306:f b
4
_output_shapes"
 :                  

*
_user_specified_namesequential_input
П
а
while_cond_6215
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_12
.while_while_cond_6215___redundant_placeholder02
.while_while_cond_6215___redundant_placeholder12
.while_while_cond_6215___redundant_placeholder22
.while_while_cond_6215___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :         @: :::::

_output_shapes
::GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
┌
х
+__inference_simple_rnn_1_layer_call_fn_5953

inputs
unknown:@@
	unknown_0:@
	unknown_1:@@
identityѕбStatefulPartitionedCallУ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_simple_rnn_1_layer_call_and_return_conditional_losses_5122o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  @: : : 22
StatefulPartitionedCallStatefulPartitionedCall:$ 

_user_specified_name5949:$ 

_user_specified_name5947:$ 

_user_specified_name5945:\ X
4
_output_shapes"
 :                  @
 
_user_specified_nameinputs
Я
и
+__inference_simple_rnn_1_layer_call_fn_5931
inputs_0
unknown:@@
	unknown_0:@
	unknown_1:@@
identityѕбStatefulPartitionedCallЖ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_simple_rnn_1_layer_call_and_return_conditional_losses_4609o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  @: : : 22
StatefulPartitionedCallStatefulPartitionedCall:$ 

_user_specified_name5927:$ 

_user_specified_name5925:$ 

_user_specified_name5923:^ Z
4
_output_shapes"
 :                  @
"
_user_specified_name
inputs_0
Я#
х
while_body_4424
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_simple_rnn_cell_4446_0:@@*
while_simple_rnn_cell_4448_0:@.
while_simple_rnn_cell_4450_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_simple_rnn_cell_4446:@@(
while_simple_rnn_cell_4448:@,
while_simple_rnn_cell_4450:@@ѕб-while/simple_rnn_cell/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         @*
element_dtype0љ
-while/simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_4446_0while_simple_rnn_cell_4448_0while_simple_rnn_cell_4450_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:         @:         @*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *R
fMRK
I__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_4410r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Є
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:06while/simple_rnn_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Њ
while/Identity_4Identity6while/simple_rnn_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         @X

while/NoOpNoOp.^while/simple_rnn_cell/StatefulPartitionedCall*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0")
while_identitywhile/Identity:output:0":
while_simple_rnn_cell_4446while_simple_rnn_cell_4446_0":
while_simple_rnn_cell_4448while_simple_rnn_cell_4448_0":
while_simple_rnn_cell_4450while_simple_rnn_cell_4450_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :         @: : : : : 2^
-while/simple_rnn_cell/StatefulPartitionedCall-while/simple_rnn_cell/StatefulPartitionedCall:$	 

_user_specified_name4450:$ 

_user_specified_name4448:$ 

_user_specified_name4446:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
П
а
while_cond_5842
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_12
.while_while_cond_5842___redundant_placeholder02
.while_while_cond_5842___redundant_placeholder12
.while_while_cond_5842___redundant_placeholder22
.while_while_cond_5842___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :         @: :::::

_output_shapes
::GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
п
Т
I__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_6557

inputs
states_00
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@@
identity

identity_1ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:         @G
TanhTanhadd:z:0*
T0*'
_output_shapes
:         @W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:         @Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:         @m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:         @:         @: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:QM
'
_output_shapes
:         @
"
_user_specified_name
states_0:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
Я
Љ
$__inference_dense_layer_call_fn_6402

inputs
unknown:@ 
	unknown_0: 
identityѕбStatefulPartitionedCallн
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_5222o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:          <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 22
StatefulPartitionedCallStatefulPartitionedCall:$ 

_user_specified_name6398:$ 

_user_specified_name6396:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
╬>
Г
F__inference_simple_rnn_1_layer_call_and_return_conditional_losses_6393

inputs@
.simple_rnn_cell_matmul_readvariableop_resource:@@=
/simple_rnn_cell_biasadd_readvariableop_resource:@B
0simple_rnn_cell_matmul_1_readvariableop_resource:@@
identityѕб&simple_rnn_cell/BiasAdd/ReadVariableOpб%simple_rnn_cell/MatMul/ReadVariableOpб'simple_rnn_cell/MatMul_1/ReadVariableOpбwhileI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         @c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  @R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_maskћ
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0Џ
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @њ
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0д
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @ў
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0Ћ
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @ћ
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:         @g
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:         @n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ▒
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :         @: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_6326*
condR
while_cond_6325*8
output_shapes'
%: : : : :         @: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   о
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         @*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         @g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         @Ц
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  @: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:\ X
4
_output_shapes"
 :                  @
 
_user_specified_nameinputs
 

о
.__inference_simple_rnn_cell_layer_call_fn_6509

inputs
states_0
unknown:@@
	unknown_0:@
	unknown_1:@@
identity

identity_1ѕбStatefulPartitionedCallі
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:         @:         @*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *R
fMRK
I__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_4410o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:         @:         @: : : 22
StatefulPartitionedCallStatefulPartitionedCall:$ 

_user_specified_name6503:$ 

_user_specified_name6501:$ 

_user_specified_name6499:QM
'
_output_shapes
:         @
"
_user_specified_name
states_0:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
ќ/
┤
while_body_5055
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:@@E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:@J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:@@C
5while_simple_rnn_cell_biasadd_readvariableop_resource:@H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:@@ѕб,while/simple_rnn_cell/BiasAdd/ReadVariableOpб+while/simple_rnn_cell/MatMul/ReadVariableOpб-while/simple_rnn_cell/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         @*
element_dtype0б
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0┐
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @а
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0И
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @д
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0д
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @д
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:         @s
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:         @r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : №
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: {
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:         @х

while/NoOpNoOp-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0")
while_identitywhile/Identity:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :         @: : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
п
Т
I__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_6540

inputs
states_00
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@@
identity

identity_1ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:         @G
TanhTanhadd:z:0*
T0*'
_output_shapes
:         @W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:         @Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:         @m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:         @:         @: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:QM
'
_output_shapes
:         @
"
_user_specified_name
states_0:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
Ї5
І
F__inference_simple_rnn_1_layer_call_and_return_conditional_losses_4488

inputs&
simple_rnn_cell_4411:@@"
simple_rnn_cell_4413:@&
simple_rnn_cell_4415:@@
identityѕб'simple_rnn_cell/StatefulPartitionedCallбwhileI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         @c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  @R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_maskН
'simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_4411simple_rnn_cell_4413simple_rnn_cell_4415*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:         @:         @*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *R
fMRK
I__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_4410n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Я
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_4411simple_rnn_cell_4413simple_rnn_cell_4415*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :         @: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_4424*
condR
while_cond_4423*8
output_shapes'
%: : : : :         @: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   о
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         @*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         @g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         @T
NoOpNoOp(^simple_rnn_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  @: : : 2R
'simple_rnn_cell/StatefulPartitionedCall'simple_rnn_cell/StatefulPartitionedCall2
whilewhile:$ 

_user_specified_name4415:$ 

_user_specified_name4413:$ 

_user_specified_name4411:\ X
4
_output_shapes"
 :                  @
 
_user_specified_nameinputs
м
С
I__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_4410

inputs

states0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@@
identity

identity_1ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:         @G
TanhTanhadd:z:0*
T0*'
_output_shapes
:         @W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:         @Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:         @m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:         @:         @: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:OK
'
_output_shapes
:         @
 
_user_specified_namestates:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
­
│
)__inference_simple_rnn_layer_call_fn_5466

inputs
unknown:
@
	unknown_0:@
	unknown_1:@@
identityѕбStatefulPartitionedCallз
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  @*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_simple_rnn_layer_call_and_return_conditional_losses_4769|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:$ 

_user_specified_name5462:$ 

_user_specified_name5460:$ 

_user_specified_name5458:\ X
4
_output_shapes"
 :                  

 
_user_specified_nameinputs
х
▀
4sequential_2_sequential_simple_rnn_1_while_cond_3997f
bsequential_2_sequential_simple_rnn_1_while_sequential_2_sequential_simple_rnn_1_while_loop_counterl
hsequential_2_sequential_simple_rnn_1_while_sequential_2_sequential_simple_rnn_1_while_maximum_iterations:
6sequential_2_sequential_simple_rnn_1_while_placeholder<
8sequential_2_sequential_simple_rnn_1_while_placeholder_1<
8sequential_2_sequential_simple_rnn_1_while_placeholder_2h
dsequential_2_sequential_simple_rnn_1_while_less_sequential_2_sequential_simple_rnn_1_strided_slice_1|
xsequential_2_sequential_simple_rnn_1_while_sequential_2_sequential_simple_rnn_1_while_cond_3997___redundant_placeholder0|
xsequential_2_sequential_simple_rnn_1_while_sequential_2_sequential_simple_rnn_1_while_cond_3997___redundant_placeholder1|
xsequential_2_sequential_simple_rnn_1_while_sequential_2_sequential_simple_rnn_1_while_cond_3997___redundant_placeholder2|
xsequential_2_sequential_simple_rnn_1_while_sequential_2_sequential_simple_rnn_1_while_cond_3997___redundant_placeholder37
3sequential_2_sequential_simple_rnn_1_while_identity
Ш
/sequential_2/sequential/simple_rnn_1/while/LessLess6sequential_2_sequential_simple_rnn_1_while_placeholderdsequential_2_sequential_simple_rnn_1_while_less_sequential_2_sequential_simple_rnn_1_strided_slice_1*
T0*
_output_shapes
: Ћ
3sequential_2/sequential/simple_rnn_1/while/IdentityIdentity3sequential_2/sequential/simple_rnn_1/while/Less:z:0*
T0
*
_output_shapes
: "s
3sequential_2_sequential_simple_rnn_1_while_identity<sequential_2/sequential/simple_rnn_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :         @: :::::

_output_shapes
::lh

_output_shapes
: 
N
_user_specified_name64sequential_2/sequential/simple_rnn_1/strided_slice_1:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: :uq

_output_shapes
: 
W
_user_specified_name?=sequential_2/sequential/simple_rnn_1/while/maximum_iterations:o k

_output_shapes
: 
Q
_user_specified_name97sequential_2/sequential/simple_rnn_1/while/loop_counter
─"
х
while_body_4254
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_simple_rnn_cell_4276_0:
@*
while_simple_rnn_cell_4278_0:@.
while_simple_rnn_cell_4280_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_simple_rnn_cell_4276:
@(
while_simple_rnn_cell_4278:@,
while_simple_rnn_cell_4280:@@ѕб-while/simple_rnn_cell/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         
*
element_dtype0љ
-while/simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_4276_0while_simple_rnn_cell_4278_0while_simple_rnn_cell_4280_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:         @:         @*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *R
fMRK
I__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_4241▀
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder6while/simple_rnn_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Њ
while/Identity_4Identity6while/simple_rnn_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         @X

while/NoOpNoOp.^while/simple_rnn_cell/StatefulPartitionedCall*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0")
while_identitywhile/Identity:output:0":
while_simple_rnn_cell_4276while_simple_rnn_cell_4276_0":
while_simple_rnn_cell_4278while_simple_rnn_cell_4278_0":
while_simple_rnn_cell_4280while_simple_rnn_cell_4280_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :         @: : : : : 2^
-while/simple_rnn_cell/StatefulPartitionedCall-while/simple_rnn_cell/StatefulPartitionedCall:$	 

_user_specified_name4280:$ 

_user_specified_name4278:$ 

_user_specified_name4276:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
 

о
.__inference_simple_rnn_cell_layer_call_fn_6447

inputs
states_0
unknown:
@
	unknown_0:@
	unknown_1:@@
identity

identity_1ѕбStatefulPartitionedCallі
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:         @:         @*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *R
fMRK
I__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_4122o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:         
:         @: : : 22
StatefulPartitionedCallStatefulPartitionedCall:$ 

_user_specified_name6441:$ 

_user_specified_name6439:$ 

_user_specified_name6437:QM
'
_output_shapes
:         @
"
_user_specified_name
states_0:O K
'
_output_shapes
:         

 
_user_specified_nameinputs
р=
Ф
D__inference_simple_rnn_layer_call_and_return_conditional_losses_5909

inputs@
.simple_rnn_cell_matmul_readvariableop_resource:
@=
/simple_rnn_cell_biasadd_readvariableop_resource:@B
0simple_rnn_cell_matmul_1_readvariableop_resource:@@
identityѕб&simple_rnn_cell/BiasAdd/ReadVariableOpб%simple_rnn_cell/MatMul/ReadVariableOpб'simple_rnn_cell/MatMul_1/ReadVariableOpбwhileI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         @c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  
R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maskћ
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:
@*
dtype0Џ
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @њ
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0д
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @ў
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0Ћ
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @ћ
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:         @g
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:         @n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ▒
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :         @: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_5843*
condR
while_cond_5842*8
output_shapes'
%: : : : :         @: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  @*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  @k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  @Ц
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  
: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:\ X
4
_output_shapes"
 :                  

 
_user_specified_nameinputs
р=
Ф
D__inference_simple_rnn_layer_call_and_return_conditional_losses_5005

inputs@
.simple_rnn_cell_matmul_readvariableop_resource:
@=
/simple_rnn_cell_biasadd_readvariableop_resource:@B
0simple_rnn_cell_matmul_1_readvariableop_resource:@@
identityѕб&simple_rnn_cell/BiasAdd/ReadVariableOpб%simple_rnn_cell/MatMul/ReadVariableOpб'simple_rnn_cell/MatMul_1/ReadVariableOpбwhileI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         @c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  
R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maskћ
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:
@*
dtype0Џ
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @њ
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0д
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @ў
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0Ћ
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @ћ
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:         @g
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:         @n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ▒
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :         @: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_4939*
condR
while_cond_4938*8
output_shapes'
%: : : : :         @: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  @*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  @k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  @Ц
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  
: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:\ X
4
_output_shapes"
 :                  

 
_user_specified_nameinputs
­
│
)__inference_simple_rnn_layer_call_fn_5477

inputs
unknown:
@
	unknown_0:@
	unknown_1:@@
identityѕбStatefulPartitionedCallз
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  @*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_simple_rnn_layer_call_and_return_conditional_losses_5005|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:$ 

_user_specified_name5473:$ 

_user_specified_name5471:$ 

_user_specified_name5469:\ X
4
_output_shapes"
 :                  

 
_user_specified_nameinputs
ф
■
+__inference_sequential_2_layer_call_fn_5405
sequential_input
unknown:
@
	unknown_0:@
	unknown_1:@@
	unknown_2:@@
	unknown_3:@
	unknown_4:@@
	unknown_5:@ 
	unknown_6: 
	unknown_7: 
	unknown_8:
identityѕбStatefulPartitionedCall═
StatefulPartitionedCallStatefulPartitionedCallsequential_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_sequential_2_layer_call_and_return_conditional_losses_5355o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:                  
: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:$
 

_user_specified_name5401:$	 

_user_specified_name5399:$ 

_user_specified_name5397:$ 

_user_specified_name5395:$ 

_user_specified_name5393:$ 

_user_specified_name5391:$ 

_user_specified_name5389:$ 

_user_specified_name5387:$ 

_user_specified_name5385:$ 

_user_specified_name5383:f b
4
_output_shapes"
 :                  

*
_user_specified_namesequential_input
Д
Љ
F__inference_sequential_2_layer_call_and_return_conditional_losses_5355
sequential_input!
sequential_5332:
@
sequential_5334:@!
sequential_5336:@@!
sequential_5338:@@
sequential_5340:@!
sequential_5342:@@#
sequential_1_5345:@ 
sequential_1_5347: #
sequential_1_5349: 
sequential_1_5351:
identityѕб"sequential/StatefulPartitionedCallб$sequential_1/StatefulPartitionedCall╚
"sequential/StatefulPartitionedCallStatefulPartitionedCallsequential_inputsequential_5332sequential_5334sequential_5336sequential_5338sequential_5340sequential_5342*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_5131╔
$sequential_1/StatefulPartitionedCallStatefulPartitionedCall+sequential/StatefulPartitionedCall:output:0sequential_1_5345sequential_1_5347sequential_1_5349sequential_1_5351*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_sequential_1_layer_call_and_return_conditional_losses_5259|
IdentityIdentity-sequential_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         n
NoOpNoOp#^sequential/StatefulPartitionedCall%^sequential_1/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:                  
: : : : : : : : : : 2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall2L
$sequential_1/StatefulPartitionedCall$sequential_1/StatefulPartitionedCall:$
 

_user_specified_name5351:$	 

_user_specified_name5349:$ 

_user_specified_name5347:$ 

_user_specified_name5345:$ 

_user_specified_name5342:$ 

_user_specified_name5340:$ 

_user_specified_name5338:$ 

_user_specified_name5336:$ 

_user_specified_name5334:$ 

_user_specified_name5332:f b
4
_output_shapes"
 :                  

*
_user_specified_namesequential_input
п
Т
I__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_6478

inputs
states_00
matmul_readvariableop_resource:
@-
biasadd_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@@
identity

identity_1ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:         @G
TanhTanhadd:z:0*
T0*'
_output_shapes
:         @W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:         @Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:         @m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:         
:         @: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:QM
'
_output_shapes
:         @
"
_user_specified_name
states_0:O K
'
_output_shapes
:         

 
_user_specified_nameinputs
П
а
while_cond_5995
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_12
.while_while_cond_5995___redundant_placeholder02
.while_while_cond_5995___redundant_placeholder12
.while_while_cond_5995___redundant_placeholder22
.while_while_cond_5995___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :         @: :::::

_output_shapes
::GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
Щ-
┤
while_body_5519
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:
@E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:@J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:
@C
5while_simple_rnn_cell_biasadd_readvariableop_resource:@H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:@@ѕб,while/simple_rnn_cell/BiasAdd/ReadVariableOpб+while/simple_rnn_cell/MatMul/ReadVariableOpб-while/simple_rnn_cell/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         
*
element_dtype0б
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:
@*
dtype0┐
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @а
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0И
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @д
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0д
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @д
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:         @s
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:         @К
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: {
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:         @х

while/NoOpNoOp-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0")
while_identitywhile/Identity:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :         @: : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
П
а
while_cond_5734
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_12
.while_while_cond_5734___redundant_placeholder02
.while_while_cond_5734___redundant_placeholder12
.while_while_cond_5734___redundant_placeholder22
.while_while_cond_5734___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :         @: :::::

_output_shapes
::GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
щ
╣
2sequential_2_sequential_simple_rnn_while_cond_3892b
^sequential_2_sequential_simple_rnn_while_sequential_2_sequential_simple_rnn_while_loop_counterh
dsequential_2_sequential_simple_rnn_while_sequential_2_sequential_simple_rnn_while_maximum_iterations8
4sequential_2_sequential_simple_rnn_while_placeholder:
6sequential_2_sequential_simple_rnn_while_placeholder_1:
6sequential_2_sequential_simple_rnn_while_placeholder_2d
`sequential_2_sequential_simple_rnn_while_less_sequential_2_sequential_simple_rnn_strided_slice_1x
tsequential_2_sequential_simple_rnn_while_sequential_2_sequential_simple_rnn_while_cond_3892___redundant_placeholder0x
tsequential_2_sequential_simple_rnn_while_sequential_2_sequential_simple_rnn_while_cond_3892___redundant_placeholder1x
tsequential_2_sequential_simple_rnn_while_sequential_2_sequential_simple_rnn_while_cond_3892___redundant_placeholder2x
tsequential_2_sequential_simple_rnn_while_sequential_2_sequential_simple_rnn_while_cond_3892___redundant_placeholder35
1sequential_2_sequential_simple_rnn_while_identity
Ь
-sequential_2/sequential/simple_rnn/while/LessLess4sequential_2_sequential_simple_rnn_while_placeholder`sequential_2_sequential_simple_rnn_while_less_sequential_2_sequential_simple_rnn_strided_slice_1*
T0*
_output_shapes
: Љ
1sequential_2/sequential/simple_rnn/while/IdentityIdentity1sequential_2/sequential/simple_rnn/while/Less:z:0*
T0
*
_output_shapes
: "o
1sequential_2_sequential_simple_rnn_while_identity:sequential_2/sequential/simple_rnn/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :         @: :::::

_output_shapes
::jf

_output_shapes
: 
L
_user_specified_name42sequential_2/sequential/simple_rnn/strided_slice_1:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: :so

_output_shapes
: 
U
_user_specified_name=;sequential_2/sequential/simple_rnn/while/maximum_iterations:m i

_output_shapes
: 
O
_user_specified_name75sequential_2/sequential/simple_rnn/while/loop_counter
П
а
while_cond_4818
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_12
.while_while_cond_4818___redundant_placeholder02
.while_while_cond_4818___redundant_placeholder12
.while_while_cond_4818___redundant_placeholder22
.while_while_cond_4818___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :         @: :::::

_output_shapes
::GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
Щ-
┤
while_body_4939
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:
@E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:@J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:
@C
5while_simple_rnn_cell_biasadd_readvariableop_resource:@H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:@@ѕб,while/simple_rnn_cell/BiasAdd/ReadVariableOpб+while/simple_rnn_cell/MatMul/ReadVariableOpб-while/simple_rnn_cell/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         
*
element_dtype0б
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:
@*
dtype0┐
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @а
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0И
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @д
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0д
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @д
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:         @s
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:         @К
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: {
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:         @х

while/NoOpNoOp-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0")
while_identitywhile/Identity:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :         @: : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
Щ-
┤
while_body_4703
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:
@E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:@J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:
@C
5while_simple_rnn_cell_biasadd_readvariableop_resource:@H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:@@ѕб,while/simple_rnn_cell/BiasAdd/ReadVariableOpб+while/simple_rnn_cell/MatMul/ReadVariableOpб-while/simple_rnn_cell/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         
*
element_dtype0б
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:
@*
dtype0┐
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @а
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0И
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @д
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0д
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @д
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:         @s
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:         @К
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: {
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:         @х

while/NoOpNoOp-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0")
while_identitywhile/Identity:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :         @: : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
П
а
while_cond_4134
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_12
.while_while_cond_4134___redundant_placeholder02
.while_while_cond_4134___redundant_placeholder12
.while_while_cond_4134___redundant_placeholder22
.while_while_cond_4134___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :         @: :::::

_output_shapes
::GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
╬>
Г
F__inference_simple_rnn_1_layer_call_and_return_conditional_losses_6283

inputs@
.simple_rnn_cell_matmul_readvariableop_resource:@@=
/simple_rnn_cell_biasadd_readvariableop_resource:@B
0simple_rnn_cell_matmul_1_readvariableop_resource:@@
identityѕб&simple_rnn_cell/BiasAdd/ReadVariableOpб%simple_rnn_cell/MatMul/ReadVariableOpб'simple_rnn_cell/MatMul_1/ReadVariableOpбwhileI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         @c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  @R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_maskћ
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0Џ
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @њ
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0д
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @ў
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0Ћ
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @ћ
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:         @g
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:         @n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ▒
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :         @: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_6216*
condR
while_cond_6215*8
output_shapes'
%: : : : :         @: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   о
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         @*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         @g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         @Ц
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  @: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:\ X
4
_output_shapes"
 :                  @
 
_user_specified_nameinputs
м
С
I__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_4531

inputs

states0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@@
identity

identity_1ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:         @G
TanhTanhadd:z:0*
T0*'
_output_shapes
:         @W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:         @Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:         @m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:         @:         @: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:OK
'
_output_shapes
:         @
 
_user_specified_namestates:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
═

Ы
A__inference_dense_1_layer_call_and_return_conditional_losses_6433

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:         S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:          : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:          
 
_user_specified_nameinputs
П
а
while_cond_4544
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_12
.while_while_cond_4544___redundant_placeholder02
.while_while_cond_4544___redundant_placeholder12
.while_while_cond_4544___redundant_placeholder22
.while_while_cond_4544___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :         @: :::::

_output_shapes
::GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
Ш
х
)__inference_simple_rnn_layer_call_fn_5444
inputs_0
unknown:
@
	unknown_0:@
	unknown_1:@@
identityѕбStatefulPartitionedCallш
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  @*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_simple_rnn_layer_call_and_return_conditional_losses_4198|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:$ 

_user_specified_name5440:$ 

_user_specified_name5438:$ 

_user_specified_name5436:^ Z
4
_output_shapes"
 :                  

"
_user_specified_name
inputs_0
╬>
Г
F__inference_simple_rnn_1_layer_call_and_return_conditional_losses_4886

inputs@
.simple_rnn_cell_matmul_readvariableop_resource:@@=
/simple_rnn_cell_biasadd_readvariableop_resource:@B
0simple_rnn_cell_matmul_1_readvariableop_resource:@@
identityѕб&simple_rnn_cell/BiasAdd/ReadVariableOpб%simple_rnn_cell/MatMul/ReadVariableOpб'simple_rnn_cell/MatMul_1/ReadVariableOpбwhileI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         @c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  @R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_maskћ
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0Џ
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @њ
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0д
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @ў
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0Ћ
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @ћ
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:         @g
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:         @n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ▒
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :         @: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_4819*
condR
while_cond_4818*8
output_shapes'
%: : : : :         @: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   о
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         @*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         @g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         @Ц
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  @: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:\ X
4
_output_shapes"
 :                  @
 
_user_specified_nameinputs
П
а
while_cond_6105
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_12
.while_while_cond_6105___redundant_placeholder02
.while_while_cond_6105___redundant_placeholder12
.while_while_cond_6105___redundant_placeholder22
.while_while_cond_6105___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :         @: :::::

_output_shapes
::GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
к

­
?__inference_dense_layer_call_and_return_conditional_losses_5222

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:          a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:          S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
џS
ј
4sequential_2_sequential_simple_rnn_1_while_body_3998f
bsequential_2_sequential_simple_rnn_1_while_sequential_2_sequential_simple_rnn_1_while_loop_counterl
hsequential_2_sequential_simple_rnn_1_while_sequential_2_sequential_simple_rnn_1_while_maximum_iterations:
6sequential_2_sequential_simple_rnn_1_while_placeholder<
8sequential_2_sequential_simple_rnn_1_while_placeholder_1<
8sequential_2_sequential_simple_rnn_1_while_placeholder_2e
asequential_2_sequential_simple_rnn_1_while_sequential_2_sequential_simple_rnn_1_strided_slice_1_0б
Юsequential_2_sequential_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_sequential_2_sequential_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0m
[sequential_2_sequential_simple_rnn_1_while_simple_rnn_cell_matmul_readvariableop_resource_0:@@j
\sequential_2_sequential_simple_rnn_1_while_simple_rnn_cell_biasadd_readvariableop_resource_0:@o
]sequential_2_sequential_simple_rnn_1_while_simple_rnn_cell_matmul_1_readvariableop_resource_0:@@7
3sequential_2_sequential_simple_rnn_1_while_identity9
5sequential_2_sequential_simple_rnn_1_while_identity_19
5sequential_2_sequential_simple_rnn_1_while_identity_29
5sequential_2_sequential_simple_rnn_1_while_identity_39
5sequential_2_sequential_simple_rnn_1_while_identity_4c
_sequential_2_sequential_simple_rnn_1_while_sequential_2_sequential_simple_rnn_1_strided_slice_1а
Џsequential_2_sequential_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_sequential_2_sequential_simple_rnn_1_tensorarrayunstack_tensorlistfromtensork
Ysequential_2_sequential_simple_rnn_1_while_simple_rnn_cell_matmul_readvariableop_resource:@@h
Zsequential_2_sequential_simple_rnn_1_while_simple_rnn_cell_biasadd_readvariableop_resource:@m
[sequential_2_sequential_simple_rnn_1_while_simple_rnn_cell_matmul_1_readvariableop_resource:@@ѕбQsequential_2/sequential/simple_rnn_1/while/simple_rnn_cell/BiasAdd/ReadVariableOpбPsequential_2/sequential/simple_rnn_1/while/simple_rnn_cell/MatMul/ReadVariableOpбRsequential_2/sequential/simple_rnn_1/while/simple_rnn_cell/MatMul_1/ReadVariableOpГ
\sequential_2/sequential/simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   Я
Nsequential_2/sequential/simple_rnn_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemЮsequential_2_sequential_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_sequential_2_sequential_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_06sequential_2_sequential_simple_rnn_1_while_placeholderesequential_2/sequential/simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         @*
element_dtype0В
Psequential_2/sequential/simple_rnn_1/while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp[sequential_2_sequential_simple_rnn_1_while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0«
Asequential_2/sequential/simple_rnn_1/while/simple_rnn_cell/MatMulMatMulUsequential_2/sequential/simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem:item:0Xsequential_2/sequential/simple_rnn_1/while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @Ж
Qsequential_2/sequential/simple_rnn_1/while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp\sequential_2_sequential_simple_rnn_1_while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0Д
Bsequential_2/sequential/simple_rnn_1/while/simple_rnn_cell/BiasAddBiasAddKsequential_2/sequential/simple_rnn_1/while/simple_rnn_cell/MatMul:product:0Ysequential_2/sequential/simple_rnn_1/while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @­
Rsequential_2/sequential/simple_rnn_1/while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp]sequential_2_sequential_simple_rnn_1_while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0Ћ
Csequential_2/sequential/simple_rnn_1/while/simple_rnn_cell/MatMul_1MatMul8sequential_2_sequential_simple_rnn_1_while_placeholder_2Zsequential_2/sequential/simple_rnn_1/while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @Ћ
>sequential_2/sequential/simple_rnn_1/while/simple_rnn_cell/addAddV2Ksequential_2/sequential/simple_rnn_1/while/simple_rnn_cell/BiasAdd:output:0Msequential_2/sequential/simple_rnn_1/while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:         @й
?sequential_2/sequential/simple_rnn_1/while/simple_rnn_cell/TanhTanhBsequential_2/sequential/simple_rnn_1/while/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:         @Ќ
Usequential_2/sequential/simple_rnn_1/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Ѓ
Osequential_2/sequential/simple_rnn_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem8sequential_2_sequential_simple_rnn_1_while_placeholder_1^sequential_2/sequential/simple_rnn_1/while/TensorArrayV2Write/TensorListSetItem/index:output:0Csequential_2/sequential/simple_rnn_1/while/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:жУмr
0sequential_2/sequential/simple_rnn_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :╦
.sequential_2/sequential/simple_rnn_1/while/addAddV26sequential_2_sequential_simple_rnn_1_while_placeholder9sequential_2/sequential/simple_rnn_1/while/add/y:output:0*
T0*
_output_shapes
: t
2sequential_2/sequential/simple_rnn_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :ч
0sequential_2/sequential/simple_rnn_1/while/add_1AddV2bsequential_2_sequential_simple_rnn_1_while_sequential_2_sequential_simple_rnn_1_while_loop_counter;sequential_2/sequential/simple_rnn_1/while/add_1/y:output:0*
T0*
_output_shapes
: ╚
3sequential_2/sequential/simple_rnn_1/while/IdentityIdentity4sequential_2/sequential/simple_rnn_1/while/add_1:z:00^sequential_2/sequential/simple_rnn_1/while/NoOp*
T0*
_output_shapes
: ■
5sequential_2/sequential/simple_rnn_1/while/Identity_1Identityhsequential_2_sequential_simple_rnn_1_while_sequential_2_sequential_simple_rnn_1_while_maximum_iterations0^sequential_2/sequential/simple_rnn_1/while/NoOp*
T0*
_output_shapes
: ╚
5sequential_2/sequential/simple_rnn_1/while/Identity_2Identity2sequential_2/sequential/simple_rnn_1/while/add:z:00^sequential_2/sequential/simple_rnn_1/while/NoOp*
T0*
_output_shapes
: ш
5sequential_2/sequential/simple_rnn_1/while/Identity_3Identity_sequential_2/sequential/simple_rnn_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:00^sequential_2/sequential/simple_rnn_1/while/NoOp*
T0*
_output_shapes
: Ж
5sequential_2/sequential/simple_rnn_1/while/Identity_4IdentityCsequential_2/sequential/simple_rnn_1/while/simple_rnn_cell/Tanh:y:00^sequential_2/sequential/simple_rnn_1/while/NoOp*
T0*'
_output_shapes
:         @╔
/sequential_2/sequential/simple_rnn_1/while/NoOpNoOpR^sequential_2/sequential/simple_rnn_1/while/simple_rnn_cell/BiasAdd/ReadVariableOpQ^sequential_2/sequential/simple_rnn_1/while/simple_rnn_cell/MatMul/ReadVariableOpS^sequential_2/sequential/simple_rnn_1/while/simple_rnn_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "w
5sequential_2_sequential_simple_rnn_1_while_identity_1>sequential_2/sequential/simple_rnn_1/while/Identity_1:output:0"w
5sequential_2_sequential_simple_rnn_1_while_identity_2>sequential_2/sequential/simple_rnn_1/while/Identity_2:output:0"w
5sequential_2_sequential_simple_rnn_1_while_identity_3>sequential_2/sequential/simple_rnn_1/while/Identity_3:output:0"w
5sequential_2_sequential_simple_rnn_1_while_identity_4>sequential_2/sequential/simple_rnn_1/while/Identity_4:output:0"s
3sequential_2_sequential_simple_rnn_1_while_identity<sequential_2/sequential/simple_rnn_1/while/Identity:output:0"─
_sequential_2_sequential_simple_rnn_1_while_sequential_2_sequential_simple_rnn_1_strided_slice_1asequential_2_sequential_simple_rnn_1_while_sequential_2_sequential_simple_rnn_1_strided_slice_1_0"║
Zsequential_2_sequential_simple_rnn_1_while_simple_rnn_cell_biasadd_readvariableop_resource\sequential_2_sequential_simple_rnn_1_while_simple_rnn_cell_biasadd_readvariableop_resource_0"╝
[sequential_2_sequential_simple_rnn_1_while_simple_rnn_cell_matmul_1_readvariableop_resource]sequential_2_sequential_simple_rnn_1_while_simple_rnn_cell_matmul_1_readvariableop_resource_0"И
Ysequential_2_sequential_simple_rnn_1_while_simple_rnn_cell_matmul_readvariableop_resource[sequential_2_sequential_simple_rnn_1_while_simple_rnn_cell_matmul_readvariableop_resource_0"Й
Џsequential_2_sequential_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_sequential_2_sequential_simple_rnn_1_tensorarrayunstack_tensorlistfromtensorЮsequential_2_sequential_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_sequential_2_sequential_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :         @: : : : : 2д
Qsequential_2/sequential/simple_rnn_1/while/simple_rnn_cell/BiasAdd/ReadVariableOpQsequential_2/sequential/simple_rnn_1/while/simple_rnn_cell/BiasAdd/ReadVariableOp2ц
Psequential_2/sequential/simple_rnn_1/while/simple_rnn_cell/MatMul/ReadVariableOpPsequential_2/sequential/simple_rnn_1/while/simple_rnn_cell/MatMul/ReadVariableOp2е
Rsequential_2/sequential/simple_rnn_1/while/simple_rnn_cell/MatMul_1/ReadVariableOpRsequential_2/sequential/simple_rnn_1/while/simple_rnn_cell/MatMul_1/ReadVariableOp:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Ёђ

_output_shapes
: 
f
_user_specified_nameNLsequential_2/sequential/simple_rnn_1/TensorArrayUnstack/TensorListFromTensor:lh

_output_shapes
: 
N
_user_specified_name64sequential_2/sequential/simple_rnn_1/strided_slice_1:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: :uq

_output_shapes
: 
W
_user_specified_name?=sequential_2/sequential/simple_rnn_1/while/maximum_iterations:o k

_output_shapes
: 
Q
_user_specified_name97sequential_2/sequential/simple_rnn_1/while/loop_counter
╬>
Г
F__inference_simple_rnn_1_layer_call_and_return_conditional_losses_5122

inputs@
.simple_rnn_cell_matmul_readvariableop_resource:@@=
/simple_rnn_cell_biasadd_readvariableop_resource:@B
0simple_rnn_cell_matmul_1_readvariableop_resource:@@
identityѕб&simple_rnn_cell/BiasAdd/ReadVariableOpб%simple_rnn_cell/MatMul/ReadVariableOpб'simple_rnn_cell/MatMul_1/ReadVariableOpбwhileI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         @c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  @R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_maskћ
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0Џ
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @њ
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0д
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @ў
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0Ћ
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @ћ
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:         @g
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:         @n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ▒
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :         @: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_5055*
condR
while_cond_5054*8
output_shapes'
%: : : : :         @: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   о
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         @*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         @g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         @Ц
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  @: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:\ X
4
_output_shapes"
 :                  @
 
_user_specified_nameinputs
П
а
while_cond_6325
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_12
.while_while_cond_6325___redundant_placeholder02
.while_while_cond_6325___redundant_placeholder12
.while_while_cond_6325___redundant_placeholder22
.while_while_cond_6325___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :         @: :::::

_output_shapes
::GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
р=
Ф
D__inference_simple_rnn_layer_call_and_return_conditional_losses_5801

inputs@
.simple_rnn_cell_matmul_readvariableop_resource:
@=
/simple_rnn_cell_biasadd_readvariableop_resource:@B
0simple_rnn_cell_matmul_1_readvariableop_resource:@@
identityѕб&simple_rnn_cell/BiasAdd/ReadVariableOpб%simple_rnn_cell/MatMul/ReadVariableOpб'simple_rnn_cell/MatMul_1/ReadVariableOpбwhileI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         @c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  
R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maskћ
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:
@*
dtype0Џ
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @њ
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0д
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @ў
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0Ћ
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @ћ
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:         @g
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:         @n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ▒
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :         @: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_5735*
condR
while_cond_5734*8
output_shapes'
%: : : : :         @: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  @*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  @k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  @Ц
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  
: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:\ X
4
_output_shapes"
 :                  

 
_user_specified_nameinputs
ж=
Г
D__inference_simple_rnn_layer_call_and_return_conditional_losses_5693
inputs_0@
.simple_rnn_cell_matmul_readvariableop_resource:
@=
/simple_rnn_cell_biasadd_readvariableop_resource:@B
0simple_rnn_cell_matmul_1_readvariableop_resource:@@
identityѕб&simple_rnn_cell/BiasAdd/ReadVariableOpб%simple_rnn_cell/MatMul/ReadVariableOpб'simple_rnn_cell/MatMul_1/ReadVariableOpбwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         @c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  
R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maskћ
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:
@*
dtype0Џ
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @њ
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0д
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @ў
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0Ћ
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @ћ
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:         @g
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:         @n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ▒
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :         @: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_5627*
condR
while_cond_5626*8
output_shapes'
%: : : : :         @: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  @*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  @k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  @Ц
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  
: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:^ Z
4
_output_shapes"
 :                  

"
_user_specified_name
inputs_0
П
а
while_cond_4702
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_12
.while_while_cond_4702___redundant_placeholder02
.while_while_cond_4702___redundant_placeholder12
.while_while_cond_4702___redundant_placeholder22
.while_while_cond_4702___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :         @: :::::

_output_shapes
::GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
Т

љ
)__inference_sequential_layer_call_fn_5165
simple_rnn_input
unknown:
@
	unknown_0:@
	unknown_1:@@
	unknown_2:@@
	unknown_3:@
	unknown_4:@@
identityѕбStatefulPartitionedCallЌ
StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_5131o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:                  
: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:$ 

_user_specified_name5161:$ 

_user_specified_name5159:$ 

_user_specified_name5157:$ 

_user_specified_name5155:$ 

_user_specified_name5153:$ 

_user_specified_name5151:f b
4
_output_shapes"
 :                  

*
_user_specified_namesimple_rnn_input
м
С
I__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_4122

inputs

states0
matmul_readvariableop_resource:
@-
biasadd_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@@
identity

identity_1ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:         @G
TanhTanhadd:z:0*
T0*'
_output_shapes
:         @W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:         @Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:         @m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:         
:         @: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:OK
'
_output_shapes
:         @
 
_user_specified_namestates:O K
'
_output_shapes
:         

 
_user_specified_nameinputs
▄
а
F__inference_sequential_1_layer_call_and_return_conditional_losses_5245
dense_input

dense_5223:@ 

dense_5225: 
dense_1_5239: 
dense_1_5241:
identityѕбdense/StatefulPartitionedCallбdense_1/StatefulPartitionedCallс
dense/StatefulPartitionedCallStatefulPartitionedCalldense_input
dense_5223
dense_5225*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_5222є
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_5239dense_1_5241*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_5238w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         d
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @: : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:$ 

_user_specified_name5241:$ 

_user_specified_name5239:$ 

_user_specified_name5225:$ 

_user_specified_name5223:T P
'
_output_shapes
:         @
%
_user_specified_namedense_input
Я#
х
while_body_4545
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_simple_rnn_cell_4567_0:@@*
while_simple_rnn_cell_4569_0:@.
while_simple_rnn_cell_4571_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_simple_rnn_cell_4567:@@(
while_simple_rnn_cell_4569:@,
while_simple_rnn_cell_4571:@@ѕб-while/simple_rnn_cell/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         @*
element_dtype0љ
-while/simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_4567_0while_simple_rnn_cell_4569_0while_simple_rnn_cell_4571_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:         @:         @*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *R
fMRK
I__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_4531r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Є
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:06while/simple_rnn_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Њ
while/Identity_4Identity6while/simple_rnn_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         @X

while/NoOpNoOp.^while/simple_rnn_cell/StatefulPartitionedCall*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0")
while_identitywhile/Identity:output:0":
while_simple_rnn_cell_4567while_simple_rnn_cell_4567_0":
while_simple_rnn_cell_4569while_simple_rnn_cell_4569_0":
while_simple_rnn_cell_4571while_simple_rnn_cell_4571_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :         @: : : : : 2^
-while/simple_rnn_cell/StatefulPartitionedCall-while/simple_rnn_cell/StatefulPartitionedCall:$	 

_user_specified_name4571:$ 

_user_specified_name4569:$ 

_user_specified_name4567:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
м
С
I__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_4241

inputs

states0
matmul_readvariableop_resource:
@-
biasadd_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@@
identity

identity_1ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:         @G
TanhTanhadd:z:0*
T0*'
_output_shapes
:         @W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:         @Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:         @m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:         
:         @: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:OK
'
_output_shapes
:         @
 
_user_specified_namestates:O K
'
_output_shapes
:         

 
_user_specified_nameinputs
╚Ц
в
 __inference__traced_restore_6894
file_prefixD
2assignvariableop_simple_rnn_simple_rnn_cell_kernel:
@P
>assignvariableop_1_simple_rnn_simple_rnn_cell_recurrent_kernel:@@@
2assignvariableop_2_simple_rnn_simple_rnn_cell_bias:@H
6assignvariableop_3_simple_rnn_1_simple_rnn_cell_kernel:@@R
@assignvariableop_4_simple_rnn_1_simple_rnn_cell_recurrent_kernel:@@B
4assignvariableop_5_simple_rnn_1_simple_rnn_cell_bias:@1
assignvariableop_6_dense_kernel:@ +
assignvariableop_7_dense_bias: 3
!assignvariableop_8_dense_1_kernel: -
assignvariableop_9_dense_1_bias:'
assignvariableop_10_iteration:	 +
!assignvariableop_11_learning_rate: N
<assignvariableop_12_adam_m_simple_rnn_simple_rnn_cell_kernel:
@N
<assignvariableop_13_adam_v_simple_rnn_simple_rnn_cell_kernel:
@X
Fassignvariableop_14_adam_m_simple_rnn_simple_rnn_cell_recurrent_kernel:@@X
Fassignvariableop_15_adam_v_simple_rnn_simple_rnn_cell_recurrent_kernel:@@H
:assignvariableop_16_adam_m_simple_rnn_simple_rnn_cell_bias:@H
:assignvariableop_17_adam_v_simple_rnn_simple_rnn_cell_bias:@P
>assignvariableop_18_adam_m_simple_rnn_1_simple_rnn_cell_kernel:@@P
>assignvariableop_19_adam_v_simple_rnn_1_simple_rnn_cell_kernel:@@Z
Hassignvariableop_20_adam_m_simple_rnn_1_simple_rnn_cell_recurrent_kernel:@@Z
Hassignvariableop_21_adam_v_simple_rnn_1_simple_rnn_cell_recurrent_kernel:@@J
<assignvariableop_22_adam_m_simple_rnn_1_simple_rnn_cell_bias:@J
<assignvariableop_23_adam_v_simple_rnn_1_simple_rnn_cell_bias:@9
'assignvariableop_24_adam_m_dense_kernel:@ 9
'assignvariableop_25_adam_v_dense_kernel:@ 3
%assignvariableop_26_adam_m_dense_bias: 3
%assignvariableop_27_adam_v_dense_bias: ;
)assignvariableop_28_adam_m_dense_1_kernel: ;
)assignvariableop_29_adam_v_dense_1_kernel: 5
'assignvariableop_30_adam_m_dense_1_bias:5
'assignvariableop_31_adam_v_dense_1_bias:#
assignvariableop_32_total: #
assignvariableop_33_count: 
identity_35ѕбAssignVariableOpбAssignVariableOp_1бAssignVariableOp_10бAssignVariableOp_11бAssignVariableOp_12бAssignVariableOp_13бAssignVariableOp_14бAssignVariableOp_15бAssignVariableOp_16бAssignVariableOp_17бAssignVariableOp_18бAssignVariableOp_19бAssignVariableOp_2бAssignVariableOp_20бAssignVariableOp_21бAssignVariableOp_22бAssignVariableOp_23бAssignVariableOp_24бAssignVariableOp_25бAssignVariableOp_26бAssignVariableOp_27бAssignVariableOp_28бAssignVariableOp_29бAssignVariableOp_3бAssignVariableOp_30бAssignVariableOp_31бAssignVariableOp_32бAssignVariableOp_33бAssignVariableOp_4бAssignVariableOp_5бAssignVariableOp_6бAssignVariableOp_7бAssignVariableOp_8бAssignVariableOp_9э
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:#*
dtype0*Ю
valueЊBљ#B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHХ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:#*
dtype0*Y
valuePBN#B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B л
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*б
_output_shapesЈ
ї:::::::::::::::::::::::::::::::::::*1
dtypes'
%2#	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:┼
AssignVariableOpAssignVariableOp2assignvariableop_simple_rnn_simple_rnn_cell_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_1AssignVariableOp>assignvariableop_1_simple_rnn_simple_rnn_cell_recurrent_kernelIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:╔
AssignVariableOp_2AssignVariableOp2assignvariableop_2_simple_rnn_simple_rnn_cell_biasIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:═
AssignVariableOp_3AssignVariableOp6assignvariableop_3_simple_rnn_1_simple_rnn_cell_kernelIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_4AssignVariableOp@assignvariableop_4_simple_rnn_1_simple_rnn_cell_recurrent_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:╦
AssignVariableOp_5AssignVariableOp4assignvariableop_5_simple_rnn_1_simple_rnn_cell_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_6AssignVariableOpassignvariableop_6_dense_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:И
AssignVariableOp_8AssignVariableOp!assignvariableop_8_dense_1_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_9AssignVariableOpassignvariableop_9_dense_1_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:Х
AssignVariableOp_10AssignVariableOpassignvariableop_10_iterationIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_11AssignVariableOp!assignvariableop_11_learning_rateIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_12AssignVariableOp<assignvariableop_12_adam_m_simple_rnn_simple_rnn_cell_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_13AssignVariableOp<assignvariableop_13_adam_v_simple_rnn_simple_rnn_cell_kernelIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:▀
AssignVariableOp_14AssignVariableOpFassignvariableop_14_adam_m_simple_rnn_simple_rnn_cell_recurrent_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:▀
AssignVariableOp_15AssignVariableOpFassignvariableop_15_adam_v_simple_rnn_simple_rnn_cell_recurrent_kernelIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_16AssignVariableOp:assignvariableop_16_adam_m_simple_rnn_simple_rnn_cell_biasIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_17AssignVariableOp:assignvariableop_17_adam_v_simple_rnn_simple_rnn_cell_biasIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_18AssignVariableOp>assignvariableop_18_adam_m_simple_rnn_1_simple_rnn_cell_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_19AssignVariableOp>assignvariableop_19_adam_v_simple_rnn_1_simple_rnn_cell_kernelIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:р
AssignVariableOp_20AssignVariableOpHassignvariableop_20_adam_m_simple_rnn_1_simple_rnn_cell_recurrent_kernelIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:р
AssignVariableOp_21AssignVariableOpHassignvariableop_21_adam_v_simple_rnn_1_simple_rnn_cell_recurrent_kernelIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_22AssignVariableOp<assignvariableop_22_adam_m_simple_rnn_1_simple_rnn_cell_biasIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_23AssignVariableOp<assignvariableop_23_adam_v_simple_rnn_1_simple_rnn_cell_biasIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_24AssignVariableOp'assignvariableop_24_adam_m_dense_kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_25AssignVariableOp'assignvariableop_25_adam_v_dense_kernelIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Й
AssignVariableOp_26AssignVariableOp%assignvariableop_26_adam_m_dense_biasIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:Й
AssignVariableOp_27AssignVariableOp%assignvariableop_27_adam_v_dense_biasIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_m_dense_1_kernelIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_29AssignVariableOp)assignvariableop_29_adam_v_dense_1_kernelIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_30AssignVariableOp'assignvariableop_30_adam_m_dense_1_biasIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_31AssignVariableOp'assignvariableop_31_adam_v_dense_1_biasIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_32AssignVariableOpassignvariableop_32_totalIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_33AssignVariableOpassignvariableop_33_countIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 ╗
Identity_34Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_35IdentityIdentity_34:output:0^NoOp_1*
T0*
_output_shapes
: ё
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_35Identity_35:output:0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:%"!

_user_specified_namecount:%!!

_user_specified_nametotal:3 /
-
_user_specified_nameAdam/v/dense_1/bias:3/
-
_user_specified_nameAdam/m/dense_1/bias:51
/
_user_specified_nameAdam/v/dense_1/kernel:51
/
_user_specified_nameAdam/m/dense_1/kernel:1-
+
_user_specified_nameAdam/v/dense/bias:1-
+
_user_specified_nameAdam/m/dense/bias:3/
-
_user_specified_nameAdam/v/dense/kernel:3/
-
_user_specified_nameAdam/m/dense/kernel:HD
B
_user_specified_name*(Adam/v/simple_rnn_1/simple_rnn_cell/bias:HD
B
_user_specified_name*(Adam/m/simple_rnn_1/simple_rnn_cell/bias:TP
N
_user_specified_name64Adam/v/simple_rnn_1/simple_rnn_cell/recurrent_kernel:TP
N
_user_specified_name64Adam/m/simple_rnn_1/simple_rnn_cell/recurrent_kernel:JF
D
_user_specified_name,*Adam/v/simple_rnn_1/simple_rnn_cell/kernel:JF
D
_user_specified_name,*Adam/m/simple_rnn_1/simple_rnn_cell/kernel:FB
@
_user_specified_name(&Adam/v/simple_rnn/simple_rnn_cell/bias:FB
@
_user_specified_name(&Adam/m/simple_rnn/simple_rnn_cell/bias:RN
L
_user_specified_name42Adam/v/simple_rnn/simple_rnn_cell/recurrent_kernel:RN
L
_user_specified_name42Adam/m/simple_rnn/simple_rnn_cell/recurrent_kernel:HD
B
_user_specified_name*(Adam/v/simple_rnn/simple_rnn_cell/kernel:HD
B
_user_specified_name*(Adam/m/simple_rnn/simple_rnn_cell/kernel:-)
'
_user_specified_namelearning_rate:)%
#
_user_specified_name	iteration:,
(
&
_user_specified_namedense_1/bias:.	*
(
_user_specified_namedense_1/kernel:*&
$
_user_specified_name
dense/bias:,(
&
_user_specified_namedense/kernel:A=
;
_user_specified_name#!simple_rnn_1/simple_rnn_cell/bias:MI
G
_user_specified_name/-simple_rnn_1/simple_rnn_cell/recurrent_kernel:C?
=
_user_specified_name%#simple_rnn_1/simple_rnn_cell/kernel:?;
9
_user_specified_name!simple_rnn/simple_rnn_cell/bias:KG
E
_user_specified_name-+simple_rnn/simple_rnn_cell/recurrent_kernel:A=
;
_user_specified_name#!simple_rnn/simple_rnn_cell/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
о>
»
F__inference_simple_rnn_1_layer_call_and_return_conditional_losses_6173
inputs_0@
.simple_rnn_cell_matmul_readvariableop_resource:@@=
/simple_rnn_cell_biasadd_readvariableop_resource:@B
0simple_rnn_cell_matmul_1_readvariableop_resource:@@
identityѕб&simple_rnn_cell/BiasAdd/ReadVariableOpб%simple_rnn_cell/MatMul/ReadVariableOpб'simple_rnn_cell/MatMul_1/ReadVariableOpбwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         @c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  @R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_maskћ
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0Џ
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @њ
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0д
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @ў
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0Ћ
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @ћ
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:         @g
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:         @n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ▒
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :         @: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_6106*
condR
while_cond_6105*8
output_shapes'
%: : : : :         @: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   о
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         @*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         @g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         @Ц
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  @: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:^ Z
4
_output_shapes"
 :                  @
"
_user_specified_name
inputs_0
Т

љ
)__inference_sequential_layer_call_fn_5148
simple_rnn_input
unknown:
@
	unknown_0:@
	unknown_1:@@
	unknown_2:@@
	unknown_3:@
	unknown_4:@@
identityѕбStatefulPartitionedCallЌ
StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_4895o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:                  
: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:$ 

_user_specified_name5144:$ 

_user_specified_name5142:$ 

_user_specified_name5140:$ 

_user_specified_name5138:$ 

_user_specified_name5136:$ 

_user_specified_name5134:f b
4
_output_shapes"
 :                  

*
_user_specified_namesimple_rnn_input
┌
х
+__inference_simple_rnn_1_layer_call_fn_5942

inputs
unknown:@@
	unknown_0:@
	unknown_1:@@
identityѕбStatefulPartitionedCallУ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_simple_rnn_1_layer_call_and_return_conditional_losses_4886o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  @: : : 22
StatefulPartitionedCallStatefulPartitionedCall:$ 

_user_specified_name5938:$ 

_user_specified_name5936:$ 

_user_specified_name5934:\ X
4
_output_shapes"
 :                  @
 
_user_specified_nameinputs
П
а
while_cond_5054
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_12
.while_while_cond_5054___redundant_placeholder02
.while_while_cond_5054___redundant_placeholder12
.while_while_cond_5054___redundant_placeholder22
.while_while_cond_5054___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :         @: :::::

_output_shapes
::GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
─"
х
while_body_4135
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_simple_rnn_cell_4157_0:
@*
while_simple_rnn_cell_4159_0:@.
while_simple_rnn_cell_4161_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_simple_rnn_cell_4157:
@(
while_simple_rnn_cell_4159:@,
while_simple_rnn_cell_4161:@@ѕб-while/simple_rnn_cell/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         
*
element_dtype0љ
-while/simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_4157_0while_simple_rnn_cell_4159_0while_simple_rnn_cell_4161_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:         @:         @*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *R
fMRK
I__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_4122▀
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder6while/simple_rnn_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Њ
while/Identity_4Identity6while/simple_rnn_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         @X

while/NoOpNoOp.^while/simple_rnn_cell/StatefulPartitionedCall*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0")
while_identitywhile/Identity:output:0":
while_simple_rnn_cell_4157while_simple_rnn_cell_4157_0":
while_simple_rnn_cell_4159while_simple_rnn_cell_4159_0":
while_simple_rnn_cell_4161while_simple_rnn_cell_4161_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :         @: : : : : 2^
-while/simple_rnn_cell/StatefulPartitionedCall-while/simple_rnn_cell/StatefulPartitionedCall:$	 

_user_specified_name4161:$ 

_user_specified_name4159:$ 

_user_specified_name4157:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
П
а
while_cond_4423
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_12
.while_while_cond_4423___redundant_placeholder02
.while_while_cond_4423___redundant_placeholder12
.while_while_cond_4423___redundant_placeholder22
.while_while_cond_4423___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :         @: :::::

_output_shapes
::GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
ќ/
┤
while_body_6216
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:@@E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:@J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:@@C
5while_simple_rnn_cell_biasadd_readvariableop_resource:@H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:@@ѕб,while/simple_rnn_cell/BiasAdd/ReadVariableOpб+while/simple_rnn_cell/MatMul/ReadVariableOpб-while/simple_rnn_cell/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         @*
element_dtype0б
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0┐
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @а
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0И
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @д
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0д
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @д
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:         @s
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:         @r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : №
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: {
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:         @х

while/NoOpNoOp-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0")
while_identitywhile/Identity:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :         @: : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter"╩L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*╬
serving_default║
Z
sequential_inputF
"serving_default_sequential_input:0                  
@
sequential_10
StatefulPartitionedCall:0         tensorflow/serving/predict:са
┤
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	_default_save_signature

	optimizer

signatures"
_tf_keras_sequential
Э
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_sequential
Э
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_sequential
f
0
1
2
3
 4
!5
"6
#7
$8
%9"
trackable_list_wrapper
f
0
1
2
3
 4
!5
"6
#7
$8
%9"
trackable_list_wrapper
 "
trackable_list_wrapper
╩
&non_trainable_variables

'layers
(metrics
)layer_regularization_losses
*layer_metrics
	variables
trainable_variables
regularization_losses
__call__
	_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
╔
+trace_0
,trace_12њ
+__inference_sequential_2_layer_call_fn_5380
+__inference_sequential_2_layer_call_fn_5405х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z+trace_0z,trace_1
 
-trace_0
.trace_12╚
F__inference_sequential_2_layer_call_and_return_conditional_losses_5329
F__inference_sequential_2_layer_call_and_return_conditional_losses_5355х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z-trace_0z.trace_1
МBл
__inference__wrapped_model_4079sequential_input"ў
Љ▓Ї
FullArgSpec
argsџ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ю
/
_variables
0_iterations
1_learning_rate
2_index_dict
3
_momentums
4_velocities
5_update_step_xla"
experimentalOptimizer
,
6serving_default"
signature_map
├
7	variables
8trainable_variables
9regularization_losses
:	keras_api
;__call__
*<&call_and_return_all_conditional_losses
=cell
>
state_spec"
_tf_keras_rnn_layer
├
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses
Ecell
F
state_spec"
_tf_keras_rnn_layer
J
0
1
2
3
 4
!5"
trackable_list_wrapper
J
0
1
2
3
 4
!5"
trackable_list_wrapper
 "
trackable_list_wrapper
Г
Gnon_trainable_variables

Hlayers
Imetrics
Jlayer_regularization_losses
Klayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
┼
Ltrace_0
Mtrace_12ј
)__inference_sequential_layer_call_fn_5148
)__inference_sequential_layer_call_fn_5165х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zLtrace_0zMtrace_1
ч
Ntrace_0
Otrace_12─
D__inference_sequential_layer_call_and_return_conditional_losses_4895
D__inference_sequential_layer_call_and_return_conditional_losses_5131х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zNtrace_0zOtrace_1
╗
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses

"kernel
#bias"
_tf_keras_layer
╗
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
Z__call__
*[&call_and_return_all_conditional_losses

$kernel
%bias"
_tf_keras_layer
<
"0
#1
$2
%3"
trackable_list_wrapper
<
"0
#1
$2
%3"
trackable_list_wrapper
 "
trackable_list_wrapper
Г
\non_trainable_variables

]layers
^metrics
_layer_regularization_losses
`layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
╔
atrace_0
btrace_12њ
+__inference_sequential_1_layer_call_fn_5272
+__inference_sequential_1_layer_call_fn_5285х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zatrace_0zbtrace_1
 
ctrace_0
dtrace_12╚
F__inference_sequential_1_layer_call_and_return_conditional_losses_5245
F__inference_sequential_1_layer_call_and_return_conditional_losses_5259х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zctrace_0zdtrace_1
3:1
@2!simple_rnn/simple_rnn_cell/kernel
=:;@@2+simple_rnn/simple_rnn_cell/recurrent_kernel
-:+@2simple_rnn/simple_rnn_cell/bias
5:3@@2#simple_rnn_1/simple_rnn_cell/kernel
?:=@@2-simple_rnn_1/simple_rnn_cell/recurrent_kernel
/:-@2!simple_rnn_1/simple_rnn_cell/bias
:@ 2dense/kernel
: 2
dense/bias
 : 2dense_1/kernel
:2dense_1/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
'
e0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЧBщ
+__inference_sequential_2_layer_call_fn_5380sequential_input"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЧBщ
+__inference_sequential_2_layer_call_fn_5405sequential_input"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЌBћ
F__inference_sequential_2_layer_call_and_return_conditional_losses_5329sequential_input"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЌBћ
F__inference_sequential_2_layer_call_and_return_conditional_losses_5355sequential_input"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Й
00
f1
g2
h3
i4
j5
k6
l7
m8
n9
o10
p11
q12
r13
s14
t15
u16
v17
w18
x19
y20"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
f
f0
h1
j2
l3
n4
p5
r6
t7
v8
x9"
trackable_list_wrapper
f
g0
i1
k2
m3
o4
q5
s6
u7
w8
y9"
trackable_list_wrapper
х2▓»
д▓б
FullArgSpec*
args"џ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 0
мB¤
"__inference_signature_wrapper_5433sequential_input"ћ
Ї▓Ѕ
FullArgSpec
argsџ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
5
0
1
2"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
╣

zstates
{non_trainable_variables

|layers
}metrics
~layer_regularization_losses
layer_metrics
7	variables
8trainable_variables
9regularization_losses
;__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses"
_generic_user_object
В
ђtrace_0
Ђtrace_1
ѓtrace_2
Ѓtrace_32щ
)__inference_simple_rnn_layer_call_fn_5444
)__inference_simple_rnn_layer_call_fn_5455
)__inference_simple_rnn_layer_call_fn_5466
)__inference_simple_rnn_layer_call_fn_5477╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zђtrace_0zЂtrace_1zѓtrace_2zЃtrace_3
п
ёtrace_0
Ёtrace_1
єtrace_2
Єtrace_32т
D__inference_simple_rnn_layer_call_and_return_conditional_losses_5585
D__inference_simple_rnn_layer_call_and_return_conditional_losses_5693
D__inference_simple_rnn_layer_call_and_return_conditional_losses_5801
D__inference_simple_rnn_layer_call_and_return_conditional_losses_5909╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zёtrace_0zЁtrace_1zєtrace_2zЄtrace_3
№
ѕ	variables
Ѕtrainable_variables
іregularization_losses
І	keras_api
ї__call__
+Ї&call_and_return_all_conditional_losses
ј_random_generator

kernel
recurrent_kernel
bias"
_tf_keras_layer
 "
trackable_list_wrapper
5
0
 1
!2"
trackable_list_wrapper
5
0
 1
!2"
trackable_list_wrapper
 "
trackable_list_wrapper
┐
Јstates
љnon_trainable_variables
Љlayers
њmetrics
 Њlayer_regularization_losses
ћlayer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses"
_generic_user_object
З
Ћtrace_0
ќtrace_1
Ќtrace_2
ўtrace_32Ђ
+__inference_simple_rnn_1_layer_call_fn_5920
+__inference_simple_rnn_1_layer_call_fn_5931
+__inference_simple_rnn_1_layer_call_fn_5942
+__inference_simple_rnn_1_layer_call_fn_5953╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЋtrace_0zќtrace_1zЌtrace_2zўtrace_3
Я
Ўtrace_0
џtrace_1
Џtrace_2
юtrace_32ь
F__inference_simple_rnn_1_layer_call_and_return_conditional_losses_6063
F__inference_simple_rnn_1_layer_call_and_return_conditional_losses_6173
F__inference_simple_rnn_1_layer_call_and_return_conditional_losses_6283
F__inference_simple_rnn_1_layer_call_and_return_conditional_losses_6393╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЎtrace_0zџtrace_1zЏtrace_2zюtrace_3
№
Ю	variables
ъtrainable_variables
Ъregularization_losses
а	keras_api
А__call__
+б&call_and_return_all_conditional_losses
Б_random_generator

kernel
 recurrent_kernel
!bias"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЩBэ
)__inference_sequential_layer_call_fn_5148simple_rnn_input"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЩBэ
)__inference_sequential_layer_call_fn_5165simple_rnn_input"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЋBњ
D__inference_sequential_layer_call_and_return_conditional_losses_4895simple_rnn_input"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЋBњ
D__inference_sequential_layer_call_and_return_conditional_losses_5131simple_rnn_input"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
.
"0
#1"
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
цnon_trainable_variables
Цlayers
дmetrics
 Дlayer_regularization_losses
еlayer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses"
_generic_user_object
Я
Еtrace_02┴
$__inference_dense_layer_call_fn_6402ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЕtrace_0
ч
фtrace_02▄
?__inference_dense_layer_call_and_return_conditional_losses_6413ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zфtrace_0
.
$0
%1"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Фnon_trainable_variables
гlayers
Гmetrics
 «layer_regularization_losses
»layer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses"
_generic_user_object
Р
░trace_02├
&__inference_dense_1_layer_call_fn_6422ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z░trace_0
§
▒trace_02я
A__inference_dense_1_layer_call_and_return_conditional_losses_6433ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z▒trace_0
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
эBЗ
+__inference_sequential_1_layer_call_fn_5272dense_input"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
эBЗ
+__inference_sequential_1_layer_call_fn_5285dense_input"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
њBЈ
F__inference_sequential_1_layer_call_and_return_conditional_losses_5245dense_input"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
њBЈ
F__inference_sequential_1_layer_call_and_return_conditional_losses_5259dense_input"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
R
▓	variables
│	keras_api

┤total

хcount"
_tf_keras_metric
8:6
@2(Adam/m/simple_rnn/simple_rnn_cell/kernel
8:6
@2(Adam/v/simple_rnn/simple_rnn_cell/kernel
B:@@@22Adam/m/simple_rnn/simple_rnn_cell/recurrent_kernel
B:@@@22Adam/v/simple_rnn/simple_rnn_cell/recurrent_kernel
2:0@2&Adam/m/simple_rnn/simple_rnn_cell/bias
2:0@2&Adam/v/simple_rnn/simple_rnn_cell/bias
::8@@2*Adam/m/simple_rnn_1/simple_rnn_cell/kernel
::8@@2*Adam/v/simple_rnn_1/simple_rnn_cell/kernel
D:B@@24Adam/m/simple_rnn_1/simple_rnn_cell/recurrent_kernel
D:B@@24Adam/v/simple_rnn_1/simple_rnn_cell/recurrent_kernel
4:2@2(Adam/m/simple_rnn_1/simple_rnn_cell/bias
4:2@2(Adam/v/simple_rnn_1/simple_rnn_cell/bias
#:!@ 2Adam/m/dense/kernel
#:!@ 2Adam/v/dense/kernel
: 2Adam/m/dense/bias
: 2Adam/v/dense/bias
%:# 2Adam/m/dense_1/kernel
%:# 2Adam/v/dense_1/kernel
:2Adam/m/dense_1/bias
:2Adam/v/dense_1/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
=0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЄBё
)__inference_simple_rnn_layer_call_fn_5444inputs_0"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЄBё
)__inference_simple_rnn_layer_call_fn_5455inputs_0"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЁBѓ
)__inference_simple_rnn_layer_call_fn_5466inputs"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЁBѓ
)__inference_simple_rnn_layer_call_fn_5477inputs"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
бBЪ
D__inference_simple_rnn_layer_call_and_return_conditional_losses_5585inputs_0"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
бBЪ
D__inference_simple_rnn_layer_call_and_return_conditional_losses_5693inputs_0"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
аBЮ
D__inference_simple_rnn_layer_call_and_return_conditional_losses_5801inputs"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
аBЮ
D__inference_simple_rnn_layer_call_and_return_conditional_losses_5909inputs"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
5
0
1
2"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
И
Хnon_trainable_variables
иlayers
Иmetrics
 ╣layer_regularization_losses
║layer_metrics
ѕ	variables
Ѕtrainable_variables
іregularization_losses
ї__call__
+Ї&call_and_return_all_conditional_losses
'Ї"call_and_return_conditional_losses"
_generic_user_object
Л
╗trace_0
╝trace_12ќ
.__inference_simple_rnn_cell_layer_call_fn_6447
.__inference_simple_rnn_cell_layer_call_fn_6461│
г▓е
FullArgSpec+
args#џ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z╗trace_0z╝trace_1
Є
йtrace_0
Йtrace_12╠
I__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_6478
I__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_6495│
г▓е
FullArgSpec+
args#џ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zйtrace_0zЙtrace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
E0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЅBє
+__inference_simple_rnn_1_layer_call_fn_5920inputs_0"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЅBє
+__inference_simple_rnn_1_layer_call_fn_5931inputs_0"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЄBё
+__inference_simple_rnn_1_layer_call_fn_5942inputs"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЄBё
+__inference_simple_rnn_1_layer_call_fn_5953inputs"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
цBА
F__inference_simple_rnn_1_layer_call_and_return_conditional_losses_6063inputs_0"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
цBА
F__inference_simple_rnn_1_layer_call_and_return_conditional_losses_6173inputs_0"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
бBЪ
F__inference_simple_rnn_1_layer_call_and_return_conditional_losses_6283inputs"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
бBЪ
F__inference_simple_rnn_1_layer_call_and_return_conditional_losses_6393inputs"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
5
0
 1
!2"
trackable_list_wrapper
5
0
 1
!2"
trackable_list_wrapper
 "
trackable_list_wrapper
И
┐non_trainable_variables
└layers
┴metrics
 ┬layer_regularization_losses
├layer_metrics
Ю	variables
ъtrainable_variables
Ъregularization_losses
А__call__
+б&call_and_return_all_conditional_losses
'б"call_and_return_conditional_losses"
_generic_user_object
Л
─trace_0
┼trace_12ќ
.__inference_simple_rnn_cell_layer_call_fn_6509
.__inference_simple_rnn_cell_layer_call_fn_6523│
г▓е
FullArgSpec+
args#џ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z─trace_0z┼trace_1
Є
кtrace_0
Кtrace_12╠
I__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_6540
I__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_6557│
г▓е
FullArgSpec+
args#џ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zкtrace_0zКtrace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
╬B╦
$__inference_dense_layer_call_fn_6402inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
жBТ
?__inference_dense_layer_call_and_return_conditional_losses_6413inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
лB═
&__inference_dense_1_layer_call_fn_6422inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
вBУ
A__inference_dense_1_layer_call_and_return_conditional_losses_6433inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
0
┤0
х1"
trackable_list_wrapper
.
▓	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
§BЩ
.__inference_simple_rnn_cell_layer_call_fn_6447inputsstates_0"│
г▓е
FullArgSpec+
args#џ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
§BЩ
.__inference_simple_rnn_cell_layer_call_fn_6461inputsstates_0"│
г▓е
FullArgSpec+
args#џ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ўBЋ
I__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_6478inputsstates_0"│
г▓е
FullArgSpec+
args#џ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ўBЋ
I__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_6495inputsstates_0"│
г▓е
FullArgSpec+
args#џ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
§BЩ
.__inference_simple_rnn_cell_layer_call_fn_6509inputsstates_0"│
г▓е
FullArgSpec+
args#џ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
§BЩ
.__inference_simple_rnn_cell_layer_call_fn_6523inputsstates_0"│
г▓е
FullArgSpec+
args#џ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ўBЋ
I__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_6540inputsstates_0"│
г▓е
FullArgSpec+
args#џ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ўBЋ
I__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_6557inputsstates_0"│
г▓е
FullArgSpec+
args#џ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 х
__inference__wrapped_model_4079Љ
! "#$%FбC
<б9
7і4
sequential_input                  

ф ";ф8
6
sequential_1&і#
sequential_1         е
A__inference_dense_1_layer_call_and_return_conditional_losses_6433c$%/б,
%б"
 і
inputs          
ф ",б)
"і
tensor_0         
џ ѓ
&__inference_dense_1_layer_call_fn_6422X$%/б,
%б"
 і
inputs          
ф "!і
unknown         д
?__inference_dense_layer_call_and_return_conditional_losses_6413c"#/б,
%б"
 і
inputs         @
ф ",б)
"і
tensor_0          
џ ђ
$__inference_dense_layer_call_fn_6402X"#/б,
%б"
 і
inputs         @
ф "!і
unknown          ╝
F__inference_sequential_1_layer_call_and_return_conditional_losses_5245r"#$%<б9
2б/
%і"
dense_input         @
p

 
ф ",б)
"і
tensor_0         
џ ╝
F__inference_sequential_1_layer_call_and_return_conditional_losses_5259r"#$%<б9
2б/
%і"
dense_input         @
p 

 
ф ",б)
"і
tensor_0         
џ ќ
+__inference_sequential_1_layer_call_fn_5272g"#$%<б9
2б/
%і"
dense_input         @
p

 
ф "!і
unknown         ќ
+__inference_sequential_1_layer_call_fn_5285g"#$%<б9
2б/
%і"
dense_input         @
p 

 
ф "!і
unknown         Н
F__inference_sequential_2_layer_call_and_return_conditional_losses_5329і
! "#$%NбK
DбA
7і4
sequential_input                  

p

 
ф ",б)
"і
tensor_0         
џ Н
F__inference_sequential_2_layer_call_and_return_conditional_losses_5355і
! "#$%NбK
DбA
7і4
sequential_input                  

p 

 
ф ",б)
"і
tensor_0         
џ «
+__inference_sequential_2_layer_call_fn_5380
! "#$%NбK
DбA
7і4
sequential_input                  

p

 
ф "!і
unknown         «
+__inference_sequential_2_layer_call_fn_5405
! "#$%NбK
DбA
7і4
sequential_input                  

p 

 
ф "!і
unknown         ¤
D__inference_sequential_layer_call_and_return_conditional_losses_4895є! NбK
DбA
7і4
simple_rnn_input                  

p

 
ф ",б)
"і
tensor_0         @
џ ¤
D__inference_sequential_layer_call_and_return_conditional_losses_5131є! NбK
DбA
7і4
simple_rnn_input                  

p 

 
ф ",б)
"і
tensor_0         @
џ е
)__inference_sequential_layer_call_fn_5148{! NбK
DбA
7і4
simple_rnn_input                  

p

 
ф "!і
unknown         @е
)__inference_sequential_layer_call_fn_5165{! NбK
DбA
7і4
simple_rnn_input                  

p 

 
ф "!і
unknown         @╠
"__inference_signature_wrapper_5433Ц
! "#$%ZбW
б 
PфM
K
sequential_input7і4
sequential_input                  
";ф8
6
sequential_1&і#
sequential_1         ¤
F__inference_simple_rnn_1_layer_call_and_return_conditional_losses_6063ё! OбL
EбB
4џ1
/і,
inputs_0                  @

 
p

 
ф ",б)
"і
tensor_0         @
џ ¤
F__inference_simple_rnn_1_layer_call_and_return_conditional_losses_6173ё! OбL
EбB
4џ1
/і,
inputs_0                  @

 
p 

 
ф ",б)
"і
tensor_0         @
џ К
F__inference_simple_rnn_1_layer_call_and_return_conditional_losses_6283}! HбE
>б;
-і*
inputs                  @

 
p

 
ф ",б)
"і
tensor_0         @
џ К
F__inference_simple_rnn_1_layer_call_and_return_conditional_losses_6393}! HбE
>б;
-і*
inputs                  @

 
p 

 
ф ",б)
"і
tensor_0         @
џ е
+__inference_simple_rnn_1_layer_call_fn_5920y! OбL
EбB
4џ1
/і,
inputs_0                  @

 
p

 
ф "!і
unknown         @е
+__inference_simple_rnn_1_layer_call_fn_5931y! OбL
EбB
4џ1
/і,
inputs_0                  @

 
p 

 
ф "!і
unknown         @А
+__inference_simple_rnn_1_layer_call_fn_5942r! HбE
>б;
-і*
inputs                  @

 
p

 
ф "!і
unknown         @А
+__inference_simple_rnn_1_layer_call_fn_5953r! HбE
>б;
-і*
inputs                  @

 
p 

 
ф "!і
unknown         @Њ
I__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_6478┼\бY
RбO
 і
inputs         

'б$
"і
states_0         @
p
ф "`б]
VбS
$і!

tensor_0_0         @
+џ(
&і#
tensor_0_1_0         @
џ Њ
I__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_6495┼\бY
RбO
 і
inputs         

'б$
"і
states_0         @
p 
ф "`б]
VбS
$і!

tensor_0_0         @
+џ(
&і#
tensor_0_1_0         @
џ Њ
I__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_6540┼! \бY
RбO
 і
inputs         @
'б$
"і
states_0         @
p
ф "`б]
VбS
$і!

tensor_0_0         @
+џ(
&і#
tensor_0_1_0         @
џ Њ
I__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_6557┼! \бY
RбO
 і
inputs         @
'б$
"і
states_0         @
p 
ф "`б]
VбS
$і!

tensor_0_0         @
+џ(
&і#
tensor_0_1_0         @
џ Ж
.__inference_simple_rnn_cell_layer_call_fn_6447и\бY
RбO
 і
inputs         

'б$
"і
states_0         @
p
ф "RбO
"і
tensor_0         @
)џ&
$і!

tensor_1_0         @Ж
.__inference_simple_rnn_cell_layer_call_fn_6461и\бY
RбO
 і
inputs         

'б$
"і
states_0         @
p 
ф "RбO
"і
tensor_0         @
)џ&
$і!

tensor_1_0         @Ж
.__inference_simple_rnn_cell_layer_call_fn_6509и! \бY
RбO
 і
inputs         @
'б$
"і
states_0         @
p
ф "RбO
"і
tensor_0         @
)џ&
$і!

tensor_1_0         @Ж
.__inference_simple_rnn_cell_layer_call_fn_6523и! \бY
RбO
 і
inputs         @
'б$
"і
states_0         @
p 
ф "RбO
"і
tensor_0         @
)џ&
$і!

tensor_1_0         @┌
D__inference_simple_rnn_layer_call_and_return_conditional_losses_5585ЉOбL
EбB
4џ1
/і,
inputs_0                  


 
p

 
ф "9б6
/і,
tensor_0                  @
џ ┌
D__inference_simple_rnn_layer_call_and_return_conditional_losses_5693ЉOбL
EбB
4џ1
/і,
inputs_0                  


 
p 

 
ф "9б6
/і,
tensor_0                  @
џ М
D__inference_simple_rnn_layer_call_and_return_conditional_losses_5801іHбE
>б;
-і*
inputs                  


 
p

 
ф "9б6
/і,
tensor_0                  @
џ М
D__inference_simple_rnn_layer_call_and_return_conditional_losses_5909іHбE
>б;
-і*
inputs                  


 
p 

 
ф "9б6
/і,
tensor_0                  @
џ ┤
)__inference_simple_rnn_layer_call_fn_5444єOбL
EбB
4џ1
/і,
inputs_0                  


 
p

 
ф ".і+
unknown                  @┤
)__inference_simple_rnn_layer_call_fn_5455єOбL
EбB
4џ1
/і,
inputs_0                  


 
p 

 
ф ".і+
unknown                  @г
)__inference_simple_rnn_layer_call_fn_5466HбE
>б;
-і*
inputs                  


 
p

 
ф ".і+
unknown                  @г
)__inference_simple_rnn_layer_call_fn_5477HбE
>б;
-і*
inputs                  


 
p 

 
ф ".і+
unknown                  @