РЯ
░ 
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
Ы
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
В
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
Ж
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( И
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
dtypetypeИ
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
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
executor_typestring Ии
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.11.02v2.11.0-rc2-17-gd5b57ca93e58НС
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
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
В
Nadam/v/dense_26/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*&
shared_nameNadam/v/dense_26/bias
{
)Nadam/v/dense_26/bias/Read/ReadVariableOpReadVariableOpNadam/v/dense_26/bias*
_output_shapes
:
*
dtype0
В
Nadam/m/dense_26/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*&
shared_nameNadam/m/dense_26/bias
{
)Nadam/m/dense_26/bias/Read/ReadVariableOpReadVariableOpNadam/m/dense_26/bias*
_output_shapes
:
*
dtype0
Л
Nadam/v/dense_26/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А
*(
shared_nameNadam/v/dense_26/kernel
Д
+Nadam/v/dense_26/kernel/Read/ReadVariableOpReadVariableOpNadam/v/dense_26/kernel*
_output_shapes
:	А
*
dtype0
Л
Nadam/m/dense_26/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А
*(
shared_nameNadam/m/dense_26/kernel
Д
+Nadam/m/dense_26/kernel/Read/ReadVariableOpReadVariableOpNadam/m/dense_26/kernel*
_output_shapes
:	А
*
dtype0
Г
Nadam/v/dense_25/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*&
shared_nameNadam/v/dense_25/bias
|
)Nadam/v/dense_25/bias/Read/ReadVariableOpReadVariableOpNadam/v/dense_25/bias*
_output_shapes	
:А*
dtype0
Г
Nadam/m/dense_25/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*&
shared_nameNadam/m/dense_25/bias
|
)Nadam/m/dense_25/bias/Read/ReadVariableOpReadVariableOpNadam/m/dense_25/bias*
_output_shapes	
:А*
dtype0
М
Nadam/v/dense_25/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*(
shared_nameNadam/v/dense_25/kernel
Е
+Nadam/v/dense_25/kernel/Read/ReadVariableOpReadVariableOpNadam/v/dense_25/kernel* 
_output_shapes
:
АА*
dtype0
М
Nadam/m/dense_25/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*(
shared_nameNadam/m/dense_25/kernel
Е
+Nadam/m/dense_25/kernel/Read/ReadVariableOpReadVariableOpNadam/m/dense_25/kernel* 
_output_shapes
:
АА*
dtype0
Г
Nadam/v/dense_24/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*&
shared_nameNadam/v/dense_24/bias
|
)Nadam/v/dense_24/bias/Read/ReadVariableOpReadVariableOpNadam/v/dense_24/bias*
_output_shapes	
:А*
dtype0
Г
Nadam/m/dense_24/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*&
shared_nameNadam/m/dense_24/bias
|
)Nadam/m/dense_24/bias/Read/ReadVariableOpReadVariableOpNadam/m/dense_24/bias*
_output_shapes	
:А*
dtype0
М
Nadam/v/dense_24/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*(
shared_nameNadam/v/dense_24/kernel
Е
+Nadam/v/dense_24/kernel/Read/ReadVariableOpReadVariableOpNadam/v/dense_24/kernel* 
_output_shapes
:
АА*
dtype0
М
Nadam/m/dense_24/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*(
shared_nameNadam/m/dense_24/kernel
Е
+Nadam/m/dense_24/kernel/Read/ReadVariableOpReadVariableOpNadam/m/dense_24/kernel* 
_output_shapes
:
АА*
dtype0
Е
Nadam/v/conv2d_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*'
shared_nameNadam/v/conv2d_10/bias
~
*Nadam/v/conv2d_10/bias/Read/ReadVariableOpReadVariableOpNadam/v/conv2d_10/bias*
_output_shapes	
:А*
dtype0
Е
Nadam/m/conv2d_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*'
shared_nameNadam/m/conv2d_10/bias
~
*Nadam/m/conv2d_10/bias/Read/ReadVariableOpReadVariableOpNadam/m/conv2d_10/bias*
_output_shapes	
:А*
dtype0
Ц
Nadam/v/conv2d_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*)
shared_nameNadam/v/conv2d_10/kernel
П
,Nadam/v/conv2d_10/kernel/Read/ReadVariableOpReadVariableOpNadam/v/conv2d_10/kernel*(
_output_shapes
:АА*
dtype0
Ц
Nadam/m/conv2d_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*)
shared_nameNadam/m/conv2d_10/kernel
П
,Nadam/m/conv2d_10/kernel/Read/ReadVariableOpReadVariableOpNadam/m/conv2d_10/kernel*(
_output_shapes
:АА*
dtype0
Г
Nadam/v/conv2d_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*&
shared_nameNadam/v/conv2d_9/bias
|
)Nadam/v/conv2d_9/bias/Read/ReadVariableOpReadVariableOpNadam/v/conv2d_9/bias*
_output_shapes	
:А*
dtype0
Г
Nadam/m/conv2d_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*&
shared_nameNadam/m/conv2d_9/bias
|
)Nadam/m/conv2d_9/bias/Read/ReadVariableOpReadVariableOpNadam/m/conv2d_9/bias*
_output_shapes	
:А*
dtype0
У
Nadam/v/conv2d_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А*(
shared_nameNadam/v/conv2d_9/kernel
М
+Nadam/v/conv2d_9/kernel/Read/ReadVariableOpReadVariableOpNadam/v/conv2d_9/kernel*'
_output_shapes
:@А*
dtype0
У
Nadam/m/conv2d_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А*(
shared_nameNadam/m/conv2d_9/kernel
М
+Nadam/m/conv2d_9/kernel/Read/ReadVariableOpReadVariableOpNadam/m/conv2d_9/kernel*'
_output_shapes
:@А*
dtype0
В
Nadam/v/conv2d_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameNadam/v/conv2d_8/bias
{
)Nadam/v/conv2d_8/bias/Read/ReadVariableOpReadVariableOpNadam/v/conv2d_8/bias*
_output_shapes
:@*
dtype0
В
Nadam/m/conv2d_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameNadam/m/conv2d_8/bias
{
)Nadam/m/conv2d_8/bias/Read/ReadVariableOpReadVariableOpNadam/m/conv2d_8/bias*
_output_shapes
:@*
dtype0
Т
Nadam/v/conv2d_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameNadam/v/conv2d_8/kernel
Л
+Nadam/v/conv2d_8/kernel/Read/ReadVariableOpReadVariableOpNadam/v/conv2d_8/kernel*&
_output_shapes
:@*
dtype0
Т
Nadam/m/conv2d_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameNadam/m/conv2d_8/kernel
Л
+Nadam/m/conv2d_8/kernel/Read/ReadVariableOpReadVariableOpNadam/m/conv2d_8/kernel*&
_output_shapes
:@*
dtype0
p
Nadam/VariableVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameNadam/Variable
i
"Nadam/Variable/Read/ReadVariableOpReadVariableOpNadam/Variable*
_output_shapes
: *
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
r
dense_26/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_26/bias
k
!dense_26/bias/Read/ReadVariableOpReadVariableOpdense_26/bias*
_output_shapes
:
*
dtype0
{
dense_26/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А
* 
shared_namedense_26/kernel
t
#dense_26/kernel/Read/ReadVariableOpReadVariableOpdense_26/kernel*
_output_shapes
:	А
*
dtype0
s
dense_25/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_namedense_25/bias
l
!dense_25/bias/Read/ReadVariableOpReadVariableOpdense_25/bias*
_output_shapes	
:А*
dtype0
|
dense_25/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА* 
shared_namedense_25/kernel
u
#dense_25/kernel/Read/ReadVariableOpReadVariableOpdense_25/kernel* 
_output_shapes
:
АА*
dtype0
s
dense_24/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_namedense_24/bias
l
!dense_24/bias/Read/ReadVariableOpReadVariableOpdense_24/bias*
_output_shapes	
:А*
dtype0
|
dense_24/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА* 
shared_namedense_24/kernel
u
#dense_24/kernel/Read/ReadVariableOpReadVariableOpdense_24/kernel* 
_output_shapes
:
АА*
dtype0
u
conv2d_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameconv2d_10/bias
n
"conv2d_10/bias/Read/ReadVariableOpReadVariableOpconv2d_10/bias*
_output_shapes	
:А*
dtype0
Ж
conv2d_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*!
shared_nameconv2d_10/kernel

$conv2d_10/kernel/Read/ReadVariableOpReadVariableOpconv2d_10/kernel*(
_output_shapes
:АА*
dtype0
s
conv2d_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameconv2d_9/bias
l
!conv2d_9/bias/Read/ReadVariableOpReadVariableOpconv2d_9/bias*
_output_shapes	
:А*
dtype0
Г
conv2d_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А* 
shared_nameconv2d_9/kernel
|
#conv2d_9/kernel/Read/ReadVariableOpReadVariableOpconv2d_9/kernel*'
_output_shapes
:@А*
dtype0
r
conv2d_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_8/bias
k
!conv2d_8/bias/Read/ReadVariableOpReadVariableOpconv2d_8/bias*
_output_shapes
:@*
dtype0
В
conv2d_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv2d_8/kernel
{
#conv2d_8/kernel/Read/ReadVariableOpReadVariableOpconv2d_8/kernel*&
_output_shapes
:@*
dtype0
К
serving_default_input_5Placeholder*/
_output_shapes
:           *
dtype0*$
shape:           
О
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_5conv2d_8/kernelconv2d_8/biasconv2d_9/kernelconv2d_9/biasconv2d_10/kernelconv2d_10/biasdense_24/kerneldense_24/biasdense_25/kerneldense_25/biasdense_26/kerneldense_26/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *,
f'R%
#__inference_signature_wrapper_78569

NoOpNoOp
нl
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*шk
value▐kB█k B╘k
Ф
layer_with_weights-0
layer-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer_with_weights-3
	layer-8

layer-9
layer_with_weights-4
layer-10
layer-11
layer_with_weights-5
layer-12
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
╚
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op*
О
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses* 
е
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses
,_random_generator* 
╚
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1__call__
*2&call_and_return_all_conditional_losses

3kernel
4bias
 5_jit_compiled_convolution_op*
О
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses* 
е
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses
B_random_generator* 
╚
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses

Ikernel
Jbias
 K_jit_compiled_convolution_op*
О
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
P__call__
*Q&call_and_return_all_conditional_losses* 
ж
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
V__call__
*W&call_and_return_all_conditional_losses

Xkernel
Ybias*
е
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
^__call__
*_&call_and_return_all_conditional_losses
`_random_generator* 
ж
a	variables
btrainable_variables
cregularization_losses
d	keras_api
e__call__
*f&call_and_return_all_conditional_losses

gkernel
hbias*
е
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
m__call__
*n&call_and_return_all_conditional_losses
o_random_generator* 
ж
p	variables
qtrainable_variables
rregularization_losses
s	keras_api
t__call__
*u&call_and_return_all_conditional_losses

vkernel
wbias*
Z
0
1
32
43
I4
J5
X6
Y7
g8
h9
v10
w11*
Z
0
1
32
43
I4
J5
X6
Y7
g8
h9
v10
w11*
* 
░
xnon_trainable_variables

ylayers
zmetrics
{layer_regularization_losses
|layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
7
}trace_0
~trace_1
trace_2
Аtrace_3* 
:
Бtrace_0
Вtrace_1
Гtrace_2
Дtrace_3* 
* 
Щ
Е
_variables
Ж_iterations
З_learning_rate
И_index_dict
Й
_momentums
К_velocities
Л
_u_product
М_update_step_xla*

Нserving_default* 

0
1*

0
1*
* 
Ш
Оnon_trainable_variables
Пlayers
Рmetrics
 Сlayer_regularization_losses
Тlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Уtrace_0* 

Фtrace_0* 
_Y
VARIABLE_VALUEconv2d_8/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_8/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
Хnon_trainable_variables
Цlayers
Чmetrics
 Шlayer_regularization_losses
Щlayer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses* 

Ъtrace_0* 

Ыtrace_0* 
* 
* 
* 
Ц
Ьnon_trainable_variables
Эlayers
Юmetrics
 Яlayer_regularization_losses
аlayer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses* 

бtrace_0
вtrace_1* 

гtrace_0
дtrace_1* 
* 

30
41*

30
41*
* 
Ш
еnon_trainable_variables
жlayers
зmetrics
 иlayer_regularization_losses
йlayer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses*

кtrace_0* 

лtrace_0* 
_Y
VARIABLE_VALUEconv2d_9/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_9/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
мnon_trainable_variables
нlayers
оmetrics
 пlayer_regularization_losses
░layer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses* 

▒trace_0* 

▓trace_0* 
* 
* 
* 
Ц
│non_trainable_variables
┤layers
╡metrics
 ╢layer_regularization_losses
╖layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses* 

╕trace_0
╣trace_1* 

║trace_0
╗trace_1* 
* 

I0
J1*

I0
J1*
* 
Ш
╝non_trainable_variables
╜layers
╛metrics
 ┐layer_regularization_losses
└layer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses*

┴trace_0* 

┬trace_0* 
`Z
VARIABLE_VALUEconv2d_10/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_10/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
├non_trainable_variables
─layers
┼metrics
 ╞layer_regularization_losses
╟layer_metrics
L	variables
Mtrainable_variables
Nregularization_losses
P__call__
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses* 

╚trace_0* 

╔trace_0* 

X0
Y1*

X0
Y1*
* 
Ш
╩non_trainable_variables
╦layers
╠metrics
 ═layer_regularization_losses
╬layer_metrics
R	variables
Strainable_variables
Tregularization_losses
V__call__
*W&call_and_return_all_conditional_losses
&W"call_and_return_conditional_losses*

╧trace_0* 

╨trace_0* 
_Y
VARIABLE_VALUEdense_24/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_24/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
Ц
╤non_trainable_variables
╥layers
╙metrics
 ╘layer_regularization_losses
╒layer_metrics
Z	variables
[trainable_variables
\regularization_losses
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses* 

╓trace_0
╫trace_1* 

╪trace_0
┘trace_1* 
* 

g0
h1*

g0
h1*
* 
Ш
┌non_trainable_variables
█layers
▄metrics
 ▌layer_regularization_losses
▐layer_metrics
a	variables
btrainable_variables
cregularization_losses
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses*

▀trace_0* 

рtrace_0* 
_Y
VARIABLE_VALUEdense_25/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_25/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
Ц
сnon_trainable_variables
тlayers
уmetrics
 фlayer_regularization_losses
хlayer_metrics
i	variables
jtrainable_variables
kregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses* 

цtrace_0
чtrace_1* 

шtrace_0
щtrace_1* 
* 

v0
w1*

v0
w1*
* 
Ш
ъnon_trainable_variables
ыlayers
ьmetrics
 эlayer_regularization_losses
юlayer_metrics
p	variables
qtrainable_variables
rregularization_losses
t__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses*

яtrace_0* 

Ёtrace_0* 
_Y
VARIABLE_VALUEdense_26/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_26/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
b
0
1
2
3
4
5
6
7
	8

9
10
11
12*

ё0
Є1*
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
█
Ж0
є1
Ї2
ї3
Ў4
ў5
°6
∙7
·8
√9
№10
¤11
■12
 13
А14
Б15
В16
Г17
Д18
Е19
Ж20
З21
И22
Й23
К24*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
f
є0
ї1
ў2
∙3
√4
¤5
 6
Б7
Г8
Е9
З10
Й11*
f
Ї0
Ў1
°2
·3
№4
■5
А6
В7
Д8
Ж9
И10
К11*
WQ
VARIABLE_VALUENadam/Variable/optimizer/_u_product/.ATTRIBUTES/VARIABLE_VALUE*
м
Лtrace_0
Мtrace_1
Нtrace_2
Оtrace_3
Пtrace_4
Рtrace_5
Сtrace_6
Тtrace_7
Уtrace_8
Фtrace_9
Хtrace_10
Цtrace_11* 
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
<
Ч	variables
Ш	keras_api

Щtotal

Ъcount*
M
Ы	variables
Ь	keras_api

Эtotal

Юcount
Я
_fn_kwargs*
b\
VARIABLE_VALUENadam/m/conv2d_8/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUENadam/v/conv2d_8/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUENadam/m/conv2d_8/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUENadam/v/conv2d_8/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUENadam/m/conv2d_9/kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUENadam/v/conv2d_9/kernel1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUENadam/m/conv2d_9/bias1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUENadam/v/conv2d_9/bias1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUENadam/m/conv2d_10/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUENadam/v/conv2d_10/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUENadam/m/conv2d_10/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUENadam/v/conv2d_10/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUENadam/m/dense_24/kernel2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUENadam/v/dense_24/kernel2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUENadam/m/dense_24/bias2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUENadam/v/dense_24/bias2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUENadam/m/dense_25/kernel2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUENadam/v/dense_25/kernel2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUENadam/m/dense_25/bias2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUENadam/v/dense_25/bias2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUENadam/m/dense_26/kernel2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUENadam/v/dense_26/kernel2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUENadam/m/dense_26/bias2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUENadam/v/dense_26/bias2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUE*
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
Щ0
Ъ1*

Ч	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

Э0
Ю1*

Ы	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ї
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#conv2d_8/kernel/Read/ReadVariableOp!conv2d_8/bias/Read/ReadVariableOp#conv2d_9/kernel/Read/ReadVariableOp!conv2d_9/bias/Read/ReadVariableOp$conv2d_10/kernel/Read/ReadVariableOp"conv2d_10/bias/Read/ReadVariableOp#dense_24/kernel/Read/ReadVariableOp!dense_24/bias/Read/ReadVariableOp#dense_25/kernel/Read/ReadVariableOp!dense_25/bias/Read/ReadVariableOp#dense_26/kernel/Read/ReadVariableOp!dense_26/bias/Read/ReadVariableOpiteration/Read/ReadVariableOp!learning_rate/Read/ReadVariableOp"Nadam/Variable/Read/ReadVariableOp+Nadam/m/conv2d_8/kernel/Read/ReadVariableOp+Nadam/v/conv2d_8/kernel/Read/ReadVariableOp)Nadam/m/conv2d_8/bias/Read/ReadVariableOp)Nadam/v/conv2d_8/bias/Read/ReadVariableOp+Nadam/m/conv2d_9/kernel/Read/ReadVariableOp+Nadam/v/conv2d_9/kernel/Read/ReadVariableOp)Nadam/m/conv2d_9/bias/Read/ReadVariableOp)Nadam/v/conv2d_9/bias/Read/ReadVariableOp,Nadam/m/conv2d_10/kernel/Read/ReadVariableOp,Nadam/v/conv2d_10/kernel/Read/ReadVariableOp*Nadam/m/conv2d_10/bias/Read/ReadVariableOp*Nadam/v/conv2d_10/bias/Read/ReadVariableOp+Nadam/m/dense_24/kernel/Read/ReadVariableOp+Nadam/v/dense_24/kernel/Read/ReadVariableOp)Nadam/m/dense_24/bias/Read/ReadVariableOp)Nadam/v/dense_24/bias/Read/ReadVariableOp+Nadam/m/dense_25/kernel/Read/ReadVariableOp+Nadam/v/dense_25/kernel/Read/ReadVariableOp)Nadam/m/dense_25/bias/Read/ReadVariableOp)Nadam/v/dense_25/bias/Read/ReadVariableOp+Nadam/m/dense_26/kernel/Read/ReadVariableOp+Nadam/v/dense_26/kernel/Read/ReadVariableOp)Nadam/m/dense_26/bias/Read/ReadVariableOp)Nadam/v/dense_26/bias/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst*8
Tin1
/2-	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *'
f"R 
__inference__traced_save_79174
У	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_8/kernelconv2d_8/biasconv2d_9/kernelconv2d_9/biasconv2d_10/kernelconv2d_10/biasdense_24/kerneldense_24/biasdense_25/kerneldense_25/biasdense_26/kerneldense_26/bias	iterationlearning_rateNadam/VariableNadam/m/conv2d_8/kernelNadam/v/conv2d_8/kernelNadam/m/conv2d_8/biasNadam/v/conv2d_8/biasNadam/m/conv2d_9/kernelNadam/v/conv2d_9/kernelNadam/m/conv2d_9/biasNadam/v/conv2d_9/biasNadam/m/conv2d_10/kernelNadam/v/conv2d_10/kernelNadam/m/conv2d_10/biasNadam/v/conv2d_10/biasNadam/m/dense_24/kernelNadam/v/dense_24/kernelNadam/m/dense_24/biasNadam/v/dense_24/biasNadam/m/dense_25/kernelNadam/v/dense_25/kernelNadam/m/dense_25/biasNadam/v/dense_25/biasNadam/m/dense_26/kernelNadam/v/dense_26/kernelNadam/m/dense_26/biasNadam/v/dense_26/biastotal_1count_1totalcount*7
Tin0
.2,*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В **
f%R#
!__inference__traced_restore_79313·░	
ЗU
Ё
__inference__traced_save_79174
file_prefix.
*savev2_conv2d_8_kernel_read_readvariableop,
(savev2_conv2d_8_bias_read_readvariableop.
*savev2_conv2d_9_kernel_read_readvariableop,
(savev2_conv2d_9_bias_read_readvariableop/
+savev2_conv2d_10_kernel_read_readvariableop-
)savev2_conv2d_10_bias_read_readvariableop.
*savev2_dense_24_kernel_read_readvariableop,
(savev2_dense_24_bias_read_readvariableop.
*savev2_dense_25_kernel_read_readvariableop,
(savev2_dense_25_bias_read_readvariableop.
*savev2_dense_26_kernel_read_readvariableop,
(savev2_dense_26_bias_read_readvariableop(
$savev2_iteration_read_readvariableop	,
(savev2_learning_rate_read_readvariableop-
)savev2_nadam_variable_read_readvariableop6
2savev2_nadam_m_conv2d_8_kernel_read_readvariableop6
2savev2_nadam_v_conv2d_8_kernel_read_readvariableop4
0savev2_nadam_m_conv2d_8_bias_read_readvariableop4
0savev2_nadam_v_conv2d_8_bias_read_readvariableop6
2savev2_nadam_m_conv2d_9_kernel_read_readvariableop6
2savev2_nadam_v_conv2d_9_kernel_read_readvariableop4
0savev2_nadam_m_conv2d_9_bias_read_readvariableop4
0savev2_nadam_v_conv2d_9_bias_read_readvariableop7
3savev2_nadam_m_conv2d_10_kernel_read_readvariableop7
3savev2_nadam_v_conv2d_10_kernel_read_readvariableop5
1savev2_nadam_m_conv2d_10_bias_read_readvariableop5
1savev2_nadam_v_conv2d_10_bias_read_readvariableop6
2savev2_nadam_m_dense_24_kernel_read_readvariableop6
2savev2_nadam_v_dense_24_kernel_read_readvariableop4
0savev2_nadam_m_dense_24_bias_read_readvariableop4
0savev2_nadam_v_dense_24_bias_read_readvariableop6
2savev2_nadam_m_dense_25_kernel_read_readvariableop6
2savev2_nadam_v_dense_25_kernel_read_readvariableop4
0savev2_nadam_m_dense_25_bias_read_readvariableop4
0savev2_nadam_v_dense_25_bias_read_readvariableop6
2savev2_nadam_m_dense_26_kernel_read_readvariableop6
2savev2_nadam_v_dense_26_kernel_read_readvariableop4
0savev2_nadam_m_dense_26_bias_read_readvariableop4
0savev2_nadam_v_dense_26_bias_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop
savev2_const

identity_1ИвMergeV2Checkpointsw
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
_temp/partБ
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
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: х
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:,*
dtype0*О
valueДBБ,B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB/optimizer/_u_product/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH┼
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:,*
dtype0*k
valuebB`,B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ▄
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_conv2d_8_kernel_read_readvariableop(savev2_conv2d_8_bias_read_readvariableop*savev2_conv2d_9_kernel_read_readvariableop(savev2_conv2d_9_bias_read_readvariableop+savev2_conv2d_10_kernel_read_readvariableop)savev2_conv2d_10_bias_read_readvariableop*savev2_dense_24_kernel_read_readvariableop(savev2_dense_24_bias_read_readvariableop*savev2_dense_25_kernel_read_readvariableop(savev2_dense_25_bias_read_readvariableop*savev2_dense_26_kernel_read_readvariableop(savev2_dense_26_bias_read_readvariableop$savev2_iteration_read_readvariableop(savev2_learning_rate_read_readvariableop)savev2_nadam_variable_read_readvariableop2savev2_nadam_m_conv2d_8_kernel_read_readvariableop2savev2_nadam_v_conv2d_8_kernel_read_readvariableop0savev2_nadam_m_conv2d_8_bias_read_readvariableop0savev2_nadam_v_conv2d_8_bias_read_readvariableop2savev2_nadam_m_conv2d_9_kernel_read_readvariableop2savev2_nadam_v_conv2d_9_kernel_read_readvariableop0savev2_nadam_m_conv2d_9_bias_read_readvariableop0savev2_nadam_v_conv2d_9_bias_read_readvariableop3savev2_nadam_m_conv2d_10_kernel_read_readvariableop3savev2_nadam_v_conv2d_10_kernel_read_readvariableop1savev2_nadam_m_conv2d_10_bias_read_readvariableop1savev2_nadam_v_conv2d_10_bias_read_readvariableop2savev2_nadam_m_dense_24_kernel_read_readvariableop2savev2_nadam_v_dense_24_kernel_read_readvariableop0savev2_nadam_m_dense_24_bias_read_readvariableop0savev2_nadam_v_dense_24_bias_read_readvariableop2savev2_nadam_m_dense_25_kernel_read_readvariableop2savev2_nadam_v_dense_25_kernel_read_readvariableop0savev2_nadam_m_dense_25_bias_read_readvariableop0savev2_nadam_v_dense_25_bias_read_readvariableop2savev2_nadam_m_dense_26_kernel_read_readvariableop2savev2_nadam_v_dense_26_kernel_read_readvariableop0savev2_nadam_m_dense_26_bias_read_readvariableop0savev2_nadam_v_dense_26_bias_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *:
dtypes0
.2,	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:│
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*│
_input_shapesб
Ю: :@:@:@А:А:АА:А:
АА:А:
АА:А:	А
:
: : : :@:@:@:@:@А:@А:А:А:АА:АА:А:А:
АА:
АА:А:А:
АА:
АА:А:А:	А
:	А
:
:
: : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:@: 

_output_shapes
:@:-)
'
_output_shapes
:@А:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:&"
 
_output_shapes
:
АА:!

_output_shapes	
:А:&	"
 
_output_shapes
:
АА:!


_output_shapes	
:А:%!

_output_shapes
:	А
: 

_output_shapes
:
:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:@:,(
&
_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:-)
'
_output_shapes
:@А:-)
'
_output_shapes
:@А:!

_output_shapes	
:А:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:!

_output_shapes	
:А:&"
 
_output_shapes
:
АА:&"
 
_output_shapes
:
АА:!

_output_shapes	
:А:!

_output_shapes	
:А:& "
 
_output_shapes
:
АА:&!"
 
_output_shapes
:
АА:!"

_output_shapes	
:А:!#

_output_shapes	
:А:%$!

_output_shapes
:	А
:%%!

_output_shapes
:	А
: &

_output_shapes
:
: '

_output_shapes
:
:(

_output_shapes
: :)

_output_shapes
: :*

_output_shapes
: :+

_output_shapes
: :,

_output_shapes
: 
е
╠
,__inference_sequential_2_layer_call_fn_78598

inputs!
unknown:@
	unknown_0:@$
	unknown_1:@А
	unknown_2:	А%
	unknown_3:АА
	unknown_4:	А
	unknown_5:
АА
	unknown_6:	А
	unknown_7:
АА
	unknown_8:	А
	unknown_9:	А


unknown_10:

identityИвStatefulPartitionedCallт
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_78141o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:           : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:           
 
_user_specified_nameinputs
°
c
E__inference_dropout_16_layer_call_and_return_conditional_losses_78808

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:         @c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:         @"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
╩

d
E__inference_dropout_17_layer_call_and_return_conditional_losses_78877

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n█╢?m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:         АC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Х
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>п
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         АT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ь
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentitydropout/SelectV2:output:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
№
c
E__inference_dropout_17_layer_call_and_return_conditional_losses_78048

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:         Аd

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:         А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
▀4
р
G__inference_sequential_2_layer_call_and_return_conditional_losses_78495
input_5(
conv2d_8_78457:@
conv2d_8_78459:@)
conv2d_9_78464:@А
conv2d_9_78466:	А+
conv2d_10_78471:АА
conv2d_10_78473:	А"
dense_24_78477:
АА
dense_24_78479:	А"
dense_25_78483:
АА
dense_25_78485:	А!
dense_26_78489:	А

dense_26_78491:

identityИв!conv2d_10/StatefulPartitionedCallв conv2d_8/StatefulPartitionedCallв conv2d_9/StatefulPartitionedCallв dense_24/StatefulPartitionedCallв dense_25/StatefulPartitionedCallв dense_26/StatefulPartitionedCall∙
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCallinput_5conv2d_8_78457conv2d_8_78459*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_conv2d_8_layer_call_and_return_conditional_losses_78011є
max_pooling2d_4/PartitionedCallPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_77978ш
dropout_16/PartitionedCallPartitionedCall(max_pooling2d_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_16_layer_call_and_return_conditional_losses_78023Ц
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall#dropout_16/PartitionedCall:output:0conv2d_9_78464conv2d_9_78466*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_conv2d_9_layer_call_and_return_conditional_losses_78036Ї
max_pooling2d_5/PartitionedCallPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_77990щ
dropout_17/PartitionedCallPartitionedCall(max_pooling2d_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_17_layer_call_and_return_conditional_losses_78048Ъ
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall#dropout_17/PartitionedCall:output:0conv2d_10_78471conv2d_10_78473*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_10_layer_call_and_return_conditional_losses_78061с
flatten_2/PartitionedCallPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_78073Н
 dense_24/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_24_78477dense_24_78479*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_24_layer_call_and_return_conditional_losses_78086т
dropout_18/PartitionedCallPartitionedCall)dense_24/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_18_layer_call_and_return_conditional_losses_78097О
 dense_25/StatefulPartitionedCallStatefulPartitionedCall#dropout_18/PartitionedCall:output:0dense_25_78483dense_25_78485*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_25_layer_call_and_return_conditional_losses_78110т
dropout_19/PartitionedCallPartitionedCall)dense_25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_19_layer_call_and_return_conditional_losses_78121Н
 dense_26/StatefulPartitionedCallStatefulPartitionedCall#dropout_19/PartitionedCall:output:0dense_26_78489dense_26_78491*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_26_layer_call_and_return_conditional_losses_78134x
IdentityIdentity)dense_26/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         
Щ
NoOpNoOp"^conv2d_10/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall!^dense_24/StatefulPartitionedCall!^dense_25/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:           : : : : : : : : : : : : 2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2D
 dense_24/StatefulPartitionedCall dense_24/StatefulPartitionedCall2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall:X T
/
_output_shapes
:           
!
_user_specified_name	input_5
┤
E
)__inference_flatten_2_layer_call_fn_78902

inputs
identity│
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_78073a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Т

d
E__inference_dropout_19_layer_call_and_return_conditional_losses_79002

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n█╢?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         АC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Н
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>з
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         АT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ф
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╚
`
D__inference_flatten_2_layer_call_and_return_conditional_losses_78908

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"       ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         АY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Т
f
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_78793

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
ш?
╥	
G__inference_sequential_2_layer_call_and_return_conditional_losses_78681

inputsA
'conv2d_8_conv2d_readvariableop_resource:@6
(conv2d_8_biasadd_readvariableop_resource:@B
'conv2d_9_conv2d_readvariableop_resource:@А7
(conv2d_9_biasadd_readvariableop_resource:	АD
(conv2d_10_conv2d_readvariableop_resource:АА8
)conv2d_10_biasadd_readvariableop_resource:	А;
'dense_24_matmul_readvariableop_resource:
АА7
(dense_24_biasadd_readvariableop_resource:	А;
'dense_25_matmul_readvariableop_resource:
АА7
(dense_25_biasadd_readvariableop_resource:	А:
'dense_26_matmul_readvariableop_resource:	А
6
(dense_26_biasadd_readvariableop_resource:

identityИв conv2d_10/BiasAdd/ReadVariableOpвconv2d_10/Conv2D/ReadVariableOpвconv2d_8/BiasAdd/ReadVariableOpвconv2d_8/Conv2D/ReadVariableOpвconv2d_9/BiasAdd/ReadVariableOpвconv2d_9/Conv2D/ReadVariableOpвdense_24/BiasAdd/ReadVariableOpвdense_24/MatMul/ReadVariableOpвdense_25/BiasAdd/ReadVariableOpвdense_25/MatMul/ReadVariableOpвdense_26/BiasAdd/ReadVariableOpвdense_26/MatMul/ReadVariableOpО
conv2d_8/Conv2D/ReadVariableOpReadVariableOp'conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0м
conv2d_8/Conv2DConv2Dinputs&conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
Д
conv2d_8/BiasAdd/ReadVariableOpReadVariableOp(conv2d_8_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ш
conv2d_8/BiasAddBiasAddconv2d_8/Conv2D:output:0'conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @j
conv2d_8/ReluReluconv2d_8/BiasAdd:output:0*
T0*/
_output_shapes
:         @м
max_pooling2d_4/MaxPoolMaxPoolconv2d_8/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
{
dropout_16/IdentityIdentity max_pooling2d_4/MaxPool:output:0*
T0*/
_output_shapes
:         @П
conv2d_9/Conv2D/ReadVariableOpReadVariableOp'conv2d_9_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0├
conv2d_9/Conv2DConv2Ddropout_16/Identity:output:0&conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
Е
conv2d_9/BiasAdd/ReadVariableOpReadVariableOp(conv2d_9_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Щ
conv2d_9/BiasAddBiasAddconv2d_9/Conv2D:output:0'conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аk
conv2d_9/ReluReluconv2d_9/BiasAdd:output:0*
T0*0
_output_shapes
:         Ан
max_pooling2d_5/MaxPoolMaxPoolconv2d_9/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
|
dropout_17/IdentityIdentity max_pooling2d_5/MaxPool:output:0*
T0*0
_output_shapes
:         АТ
conv2d_10/Conv2D/ReadVariableOpReadVariableOp(conv2d_10_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0┼
conv2d_10/Conv2DConv2Ddropout_17/Identity:output:0'conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
З
 conv2d_10/BiasAdd/ReadVariableOpReadVariableOp)conv2d_10_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ь
conv2d_10/BiasAddBiasAddconv2d_10/Conv2D:output:0(conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аm
conv2d_10/ReluReluconv2d_10/BiasAdd:output:0*
T0*0
_output_shapes
:         А`
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"       З
flatten_2/ReshapeReshapeconv2d_10/Relu:activations:0flatten_2/Const:output:0*
T0*(
_output_shapes
:         АИ
dense_24/MatMul/ReadVariableOpReadVariableOp'dense_24_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0Р
dense_24/MatMulMatMulflatten_2/Reshape:output:0&dense_24/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АЕ
dense_24/BiasAdd/ReadVariableOpReadVariableOp(dense_24_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Т
dense_24/BiasAddBiasAdddense_24/MatMul:product:0'dense_24/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аc
dense_24/ReluReludense_24/BiasAdd:output:0*
T0*(
_output_shapes
:         Аo
dropout_18/IdentityIdentitydense_24/Relu:activations:0*
T0*(
_output_shapes
:         АИ
dense_25/MatMul/ReadVariableOpReadVariableOp'dense_25_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0Т
dense_25/MatMulMatMuldropout_18/Identity:output:0&dense_25/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АЕ
dense_25/BiasAdd/ReadVariableOpReadVariableOp(dense_25_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Т
dense_25/BiasAddBiasAdddense_25/MatMul:product:0'dense_25/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аc
dense_25/ReluReludense_25/BiasAdd:output:0*
T0*(
_output_shapes
:         Аo
dropout_19/IdentityIdentitydense_25/Relu:activations:0*
T0*(
_output_shapes
:         АЗ
dense_26/MatMul/ReadVariableOpReadVariableOp'dense_26_matmul_readvariableop_resource*
_output_shapes
:	А
*
dtype0С
dense_26/MatMulMatMuldropout_19/Identity:output:0&dense_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
Д
dense_26/BiasAdd/ReadVariableOpReadVariableOp(dense_26_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0С
dense_26/BiasAddBiasAdddense_26/MatMul:product:0'dense_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
h
dense_26/SoftmaxSoftmaxdense_26/BiasAdd:output:0*
T0*'
_output_shapes
:         
i
IdentityIdentitydense_26/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         
┌
NoOpNoOp!^conv2d_10/BiasAdd/ReadVariableOp ^conv2d_10/Conv2D/ReadVariableOp ^conv2d_8/BiasAdd/ReadVariableOp^conv2d_8/Conv2D/ReadVariableOp ^conv2d_9/BiasAdd/ReadVariableOp^conv2d_9/Conv2D/ReadVariableOp ^dense_24/BiasAdd/ReadVariableOp^dense_24/MatMul/ReadVariableOp ^dense_25/BiasAdd/ReadVariableOp^dense_25/MatMul/ReadVariableOp ^dense_26/BiasAdd/ReadVariableOp^dense_26/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:           : : : : : : : : : : : : 2D
 conv2d_10/BiasAdd/ReadVariableOp conv2d_10/BiasAdd/ReadVariableOp2B
conv2d_10/Conv2D/ReadVariableOpconv2d_10/Conv2D/ReadVariableOp2B
conv2d_8/BiasAdd/ReadVariableOpconv2d_8/BiasAdd/ReadVariableOp2@
conv2d_8/Conv2D/ReadVariableOpconv2d_8/Conv2D/ReadVariableOp2B
conv2d_9/BiasAdd/ReadVariableOpconv2d_9/BiasAdd/ReadVariableOp2@
conv2d_9/Conv2D/ReadVariableOpconv2d_9/Conv2D/ReadVariableOp2B
dense_24/BiasAdd/ReadVariableOpdense_24/BiasAdd/ReadVariableOp2@
dense_24/MatMul/ReadVariableOpdense_24/MatMul/ReadVariableOp2B
dense_25/BiasAdd/ReadVariableOpdense_25/BiasAdd/ReadVariableOp2@
dense_25/MatMul/ReadVariableOpdense_25/MatMul/ReadVariableOp2B
dense_26/BiasAdd/ReadVariableOpdense_26/BiasAdd/ReadVariableOp2@
dense_26/MatMul/ReadVariableOpdense_26/MatMul/ReadVariableOp:W S
/
_output_shapes
:           
 
_user_specified_nameinputs
а╡
А
!__inference__traced_restore_79313
file_prefix:
 assignvariableop_conv2d_8_kernel:@.
 assignvariableop_1_conv2d_8_bias:@=
"assignvariableop_2_conv2d_9_kernel:@А/
 assignvariableop_3_conv2d_9_bias:	А?
#assignvariableop_4_conv2d_10_kernel:АА0
!assignvariableop_5_conv2d_10_bias:	А6
"assignvariableop_6_dense_24_kernel:
АА/
 assignvariableop_7_dense_24_bias:	А6
"assignvariableop_8_dense_25_kernel:
АА/
 assignvariableop_9_dense_25_bias:	А6
#assignvariableop_10_dense_26_kernel:	А
/
!assignvariableop_11_dense_26_bias:
'
assignvariableop_12_iteration:	 +
!assignvariableop_13_learning_rate: ,
"assignvariableop_14_nadam_variable: E
+assignvariableop_15_nadam_m_conv2d_8_kernel:@E
+assignvariableop_16_nadam_v_conv2d_8_kernel:@7
)assignvariableop_17_nadam_m_conv2d_8_bias:@7
)assignvariableop_18_nadam_v_conv2d_8_bias:@F
+assignvariableop_19_nadam_m_conv2d_9_kernel:@АF
+assignvariableop_20_nadam_v_conv2d_9_kernel:@А8
)assignvariableop_21_nadam_m_conv2d_9_bias:	А8
)assignvariableop_22_nadam_v_conv2d_9_bias:	АH
,assignvariableop_23_nadam_m_conv2d_10_kernel:ААH
,assignvariableop_24_nadam_v_conv2d_10_kernel:АА9
*assignvariableop_25_nadam_m_conv2d_10_bias:	А9
*assignvariableop_26_nadam_v_conv2d_10_bias:	А?
+assignvariableop_27_nadam_m_dense_24_kernel:
АА?
+assignvariableop_28_nadam_v_dense_24_kernel:
АА8
)assignvariableop_29_nadam_m_dense_24_bias:	А8
)assignvariableop_30_nadam_v_dense_24_bias:	А?
+assignvariableop_31_nadam_m_dense_25_kernel:
АА?
+assignvariableop_32_nadam_v_dense_25_kernel:
АА8
)assignvariableop_33_nadam_m_dense_25_bias:	А8
)assignvariableop_34_nadam_v_dense_25_bias:	А>
+assignvariableop_35_nadam_m_dense_26_kernel:	А
>
+assignvariableop_36_nadam_v_dense_26_kernel:	А
7
)assignvariableop_37_nadam_m_dense_26_bias:
7
)assignvariableop_38_nadam_v_dense_26_bias:
%
assignvariableop_39_total_1: %
assignvariableop_40_count_1: #
assignvariableop_41_total: #
assignvariableop_42_count: 
identity_44ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_24вAssignVariableOp_25вAssignVariableOp_26вAssignVariableOp_27вAssignVariableOp_28вAssignVariableOp_29вAssignVariableOp_3вAssignVariableOp_30вAssignVariableOp_31вAssignVariableOp_32вAssignVariableOp_33вAssignVariableOp_34вAssignVariableOp_35вAssignVariableOp_36вAssignVariableOp_37вAssignVariableOp_38вAssignVariableOp_39вAssignVariableOp_4вAssignVariableOp_40вAssignVariableOp_41вAssignVariableOp_42вAssignVariableOp_5вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9ш
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:,*
dtype0*О
valueДBБ,B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB/optimizer/_u_product/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH╚
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:,*
dtype0*k
valuebB`,B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ¤
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*╞
_output_shapes│
░::::::::::::::::::::::::::::::::::::::::::::*:
dtypes0
.2,	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOpAssignVariableOp assignvariableop_conv2d_8_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:╖
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv2d_8_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:╣
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv2d_9_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:╖
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv2d_9_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv2d_10_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:╕
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv2d_10_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:╣
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_24_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:╖
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_24_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:╣
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_25_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:╖
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_25_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:╝
AssignVariableOp_10AssignVariableOp#assignvariableop_10_dense_26_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_11AssignVariableOp!assignvariableop_11_dense_26_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0	*
_output_shapes
:╢
AssignVariableOp_12AssignVariableOpassignvariableop_12_iterationIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_13AssignVariableOp!assignvariableop_13_learning_rateIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:╗
AssignVariableOp_14AssignVariableOp"assignvariableop_14_nadam_variableIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_15AssignVariableOp+assignvariableop_15_nadam_m_conv2d_8_kernelIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_16AssignVariableOp+assignvariableop_16_nadam_v_conv2d_8_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_17AssignVariableOp)assignvariableop_17_nadam_m_conv2d_8_biasIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_18AssignVariableOp)assignvariableop_18_nadam_v_conv2d_8_biasIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_19AssignVariableOp+assignvariableop_19_nadam_m_conv2d_9_kernelIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_20AssignVariableOp+assignvariableop_20_nadam_v_conv2d_9_kernelIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_21AssignVariableOp)assignvariableop_21_nadam_m_conv2d_9_biasIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_22AssignVariableOp)assignvariableop_22_nadam_v_conv2d_9_biasIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:┼
AssignVariableOp_23AssignVariableOp,assignvariableop_23_nadam_m_conv2d_10_kernelIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:┼
AssignVariableOp_24AssignVariableOp,assignvariableop_24_nadam_v_conv2d_10_kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_25AssignVariableOp*assignvariableop_25_nadam_m_conv2d_10_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_26AssignVariableOp*assignvariableop_26_nadam_v_conv2d_10_biasIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_27AssignVariableOp+assignvariableop_27_nadam_m_dense_24_kernelIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_28AssignVariableOp+assignvariableop_28_nadam_v_dense_24_kernelIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_29AssignVariableOp)assignvariableop_29_nadam_m_dense_24_biasIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_30AssignVariableOp)assignvariableop_30_nadam_v_dense_24_biasIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_31AssignVariableOp+assignvariableop_31_nadam_m_dense_25_kernelIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_32AssignVariableOp+assignvariableop_32_nadam_v_dense_25_kernelIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_33AssignVariableOp)assignvariableop_33_nadam_m_dense_25_biasIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_34AssignVariableOp)assignvariableop_34_nadam_v_dense_25_biasIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_35AssignVariableOp+assignvariableop_35_nadam_m_dense_26_kernelIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_36AssignVariableOp+assignvariableop_36_nadam_v_dense_26_kernelIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_37AssignVariableOp)assignvariableop_37_nadam_m_dense_26_biasIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_38AssignVariableOp)assignvariableop_38_nadam_v_dense_26_biasIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_39AssignVariableOpassignvariableop_39_total_1Identity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_40AssignVariableOpassignvariableop_40_count_1Identity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_41AssignVariableOpassignvariableop_41_totalIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_42AssignVariableOpassignvariableop_42_countIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 Б
Identity_43Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_44IdentityIdentity_43:output:0^NoOp_1*
T0*
_output_shapes
: ю
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_44Identity_44:output:0*k
_input_shapesZ
X: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
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
AssignVariableOp_2AssignVariableOp_22*
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
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
╞
Ц
(__inference_dense_26_layer_call_fn_79011

inputs
unknown:	А

	unknown_0:

identityИвStatefulPartitionedCall█
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_26_layer_call_and_return_conditional_losses_78134o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
║
O
"__inference__update_step_xla_77170
gradient
variable:	А
*
_XlaMustCompile(*(
_construction_contextkEagerRuntime* 
_input_shapes
:	А
: *
	_noinline(:I E

_output_shapes
:	А

"
_user_specified_name
gradient:($
"
_user_specified_name
variable
Т

d
E__inference_dropout_18_layer_call_and_return_conditional_losses_78955

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n█╢?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         АC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Н
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>з
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         АT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ф
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
ж
F
*__inference_dropout_18_layer_call_fn_78933

inputs
identity┤
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_18_layer_call_and_return_conditional_losses_78097a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
я
Я
(__inference_conv2d_9_layer_call_fn_78829

inputs"
unknown:@А
	unknown_0:	А
identityИвStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_conv2d_9_layer_call_and_return_conditional_losses_78036x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
Р
А
D__inference_conv2d_10_layer_call_and_return_conditional_losses_78897

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
ж

ў
C__inference_dense_24_layer_call_and_return_conditional_losses_78086

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
л
J
"__inference__update_step_xla_77125
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:D @

_output_shapes
:@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
Ф
c
*__inference_dropout_16_layer_call_fn_78803

inputs
identityИвStatefulPartitionedCall╦
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_16_layer_call_and_return_conditional_losses_78313w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
╣
K
/__inference_max_pooling2d_4_layer_call_fn_78788

inputs
identity█
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_77978Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
╩
Ш
(__inference_dense_25_layer_call_fn_78964

inputs
unknown:
АА
	unknown_0:	А
identityИвStatefulPartitionedCall▄
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_25_layer_call_and_return_conditional_losses_78110p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
и
═
,__inference_sequential_2_layer_call_fn_78168
input_5!
unknown:@
	unknown_0:@$
	unknown_1:@А
	unknown_2:	А%
	unknown_3:АА
	unknown_4:	А
	unknown_5:
АА
	unknown_6:	А
	unknown_7:
АА
	unknown_8:	А
	unknown_9:	А


unknown_10:

identityИвStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinput_5unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_78141o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:           : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:           
!
_user_specified_name	input_5
л
J
"__inference__update_step_xla_77175
gradient
variable:
*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:
: *
	_noinline(:D @

_output_shapes
:

"
_user_specified_name
gradient:($
"
_user_specified_name
variable
╨N
ф
 __inference__wrapped_model_77969
input_5N
4sequential_2_conv2d_8_conv2d_readvariableop_resource:@C
5sequential_2_conv2d_8_biasadd_readvariableop_resource:@O
4sequential_2_conv2d_9_conv2d_readvariableop_resource:@АD
5sequential_2_conv2d_9_biasadd_readvariableop_resource:	АQ
5sequential_2_conv2d_10_conv2d_readvariableop_resource:ААE
6sequential_2_conv2d_10_biasadd_readvariableop_resource:	АH
4sequential_2_dense_24_matmul_readvariableop_resource:
ААD
5sequential_2_dense_24_biasadd_readvariableop_resource:	АH
4sequential_2_dense_25_matmul_readvariableop_resource:
ААD
5sequential_2_dense_25_biasadd_readvariableop_resource:	АG
4sequential_2_dense_26_matmul_readvariableop_resource:	А
C
5sequential_2_dense_26_biasadd_readvariableop_resource:

identityИв-sequential_2/conv2d_10/BiasAdd/ReadVariableOpв,sequential_2/conv2d_10/Conv2D/ReadVariableOpв,sequential_2/conv2d_8/BiasAdd/ReadVariableOpв+sequential_2/conv2d_8/Conv2D/ReadVariableOpв,sequential_2/conv2d_9/BiasAdd/ReadVariableOpв+sequential_2/conv2d_9/Conv2D/ReadVariableOpв,sequential_2/dense_24/BiasAdd/ReadVariableOpв+sequential_2/dense_24/MatMul/ReadVariableOpв,sequential_2/dense_25/BiasAdd/ReadVariableOpв+sequential_2/dense_25/MatMul/ReadVariableOpв,sequential_2/dense_26/BiasAdd/ReadVariableOpв+sequential_2/dense_26/MatMul/ReadVariableOpи
+sequential_2/conv2d_8/Conv2D/ReadVariableOpReadVariableOp4sequential_2_conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0╟
sequential_2/conv2d_8/Conv2DConv2Dinput_53sequential_2/conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
Ю
,sequential_2/conv2d_8/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_conv2d_8_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0┐
sequential_2/conv2d_8/BiasAddBiasAdd%sequential_2/conv2d_8/Conv2D:output:04sequential_2/conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @Д
sequential_2/conv2d_8/ReluRelu&sequential_2/conv2d_8/BiasAdd:output:0*
T0*/
_output_shapes
:         @╞
$sequential_2/max_pooling2d_4/MaxPoolMaxPool(sequential_2/conv2d_8/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
Х
 sequential_2/dropout_16/IdentityIdentity-sequential_2/max_pooling2d_4/MaxPool:output:0*
T0*/
_output_shapes
:         @й
+sequential_2/conv2d_9/Conv2D/ReadVariableOpReadVariableOp4sequential_2_conv2d_9_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0ъ
sequential_2/conv2d_9/Conv2DConv2D)sequential_2/dropout_16/Identity:output:03sequential_2/conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
Я
,sequential_2/conv2d_9/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_conv2d_9_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0└
sequential_2/conv2d_9/BiasAddBiasAdd%sequential_2/conv2d_9/Conv2D:output:04sequential_2/conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АЕ
sequential_2/conv2d_9/ReluRelu&sequential_2/conv2d_9/BiasAdd:output:0*
T0*0
_output_shapes
:         А╟
$sequential_2/max_pooling2d_5/MaxPoolMaxPool(sequential_2/conv2d_9/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
Ц
 sequential_2/dropout_17/IdentityIdentity-sequential_2/max_pooling2d_5/MaxPool:output:0*
T0*0
_output_shapes
:         Ам
,sequential_2/conv2d_10/Conv2D/ReadVariableOpReadVariableOp5sequential_2_conv2d_10_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0ь
sequential_2/conv2d_10/Conv2DConv2D)sequential_2/dropout_17/Identity:output:04sequential_2/conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
б
-sequential_2/conv2d_10/BiasAdd/ReadVariableOpReadVariableOp6sequential_2_conv2d_10_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0├
sequential_2/conv2d_10/BiasAddBiasAdd&sequential_2/conv2d_10/Conv2D:output:05sequential_2/conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АЗ
sequential_2/conv2d_10/ReluRelu'sequential_2/conv2d_10/BiasAdd:output:0*
T0*0
_output_shapes
:         Аm
sequential_2/flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"       о
sequential_2/flatten_2/ReshapeReshape)sequential_2/conv2d_10/Relu:activations:0%sequential_2/flatten_2/Const:output:0*
T0*(
_output_shapes
:         Ав
+sequential_2/dense_24/MatMul/ReadVariableOpReadVariableOp4sequential_2_dense_24_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0╖
sequential_2/dense_24/MatMulMatMul'sequential_2/flatten_2/Reshape:output:03sequential_2/dense_24/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АЯ
,sequential_2/dense_24/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_dense_24_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╣
sequential_2/dense_24/BiasAddBiasAdd&sequential_2/dense_24/MatMul:product:04sequential_2/dense_24/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А}
sequential_2/dense_24/ReluRelu&sequential_2/dense_24/BiasAdd:output:0*
T0*(
_output_shapes
:         АЙ
 sequential_2/dropout_18/IdentityIdentity(sequential_2/dense_24/Relu:activations:0*
T0*(
_output_shapes
:         Ав
+sequential_2/dense_25/MatMul/ReadVariableOpReadVariableOp4sequential_2_dense_25_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0╣
sequential_2/dense_25/MatMulMatMul)sequential_2/dropout_18/Identity:output:03sequential_2/dense_25/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АЯ
,sequential_2/dense_25/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_dense_25_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╣
sequential_2/dense_25/BiasAddBiasAdd&sequential_2/dense_25/MatMul:product:04sequential_2/dense_25/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А}
sequential_2/dense_25/ReluRelu&sequential_2/dense_25/BiasAdd:output:0*
T0*(
_output_shapes
:         АЙ
 sequential_2/dropout_19/IdentityIdentity(sequential_2/dense_25/Relu:activations:0*
T0*(
_output_shapes
:         Аб
+sequential_2/dense_26/MatMul/ReadVariableOpReadVariableOp4sequential_2_dense_26_matmul_readvariableop_resource*
_output_shapes
:	А
*
dtype0╕
sequential_2/dense_26/MatMulMatMul)sequential_2/dropout_19/Identity:output:03sequential_2/dense_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
Ю
,sequential_2/dense_26/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_dense_26_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0╕
sequential_2/dense_26/BiasAddBiasAdd&sequential_2/dense_26/MatMul:product:04sequential_2/dense_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
В
sequential_2/dense_26/SoftmaxSoftmax&sequential_2/dense_26/BiasAdd:output:0*
T0*'
_output_shapes
:         
v
IdentityIdentity'sequential_2/dense_26/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         
Ў
NoOpNoOp.^sequential_2/conv2d_10/BiasAdd/ReadVariableOp-^sequential_2/conv2d_10/Conv2D/ReadVariableOp-^sequential_2/conv2d_8/BiasAdd/ReadVariableOp,^sequential_2/conv2d_8/Conv2D/ReadVariableOp-^sequential_2/conv2d_9/BiasAdd/ReadVariableOp,^sequential_2/conv2d_9/Conv2D/ReadVariableOp-^sequential_2/dense_24/BiasAdd/ReadVariableOp,^sequential_2/dense_24/MatMul/ReadVariableOp-^sequential_2/dense_25/BiasAdd/ReadVariableOp,^sequential_2/dense_25/MatMul/ReadVariableOp-^sequential_2/dense_26/BiasAdd/ReadVariableOp,^sequential_2/dense_26/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:           : : : : : : : : : : : : 2^
-sequential_2/conv2d_10/BiasAdd/ReadVariableOp-sequential_2/conv2d_10/BiasAdd/ReadVariableOp2\
,sequential_2/conv2d_10/Conv2D/ReadVariableOp,sequential_2/conv2d_10/Conv2D/ReadVariableOp2\
,sequential_2/conv2d_8/BiasAdd/ReadVariableOp,sequential_2/conv2d_8/BiasAdd/ReadVariableOp2Z
+sequential_2/conv2d_8/Conv2D/ReadVariableOp+sequential_2/conv2d_8/Conv2D/ReadVariableOp2\
,sequential_2/conv2d_9/BiasAdd/ReadVariableOp,sequential_2/conv2d_9/BiasAdd/ReadVariableOp2Z
+sequential_2/conv2d_9/Conv2D/ReadVariableOp+sequential_2/conv2d_9/Conv2D/ReadVariableOp2\
,sequential_2/dense_24/BiasAdd/ReadVariableOp,sequential_2/dense_24/BiasAdd/ReadVariableOp2Z
+sequential_2/dense_24/MatMul/ReadVariableOp+sequential_2/dense_24/MatMul/ReadVariableOp2\
,sequential_2/dense_25/BiasAdd/ReadVariableOp,sequential_2/dense_25/BiasAdd/ReadVariableOp2Z
+sequential_2/dense_25/MatMul/ReadVariableOp+sequential_2/dense_25/MatMul/ReadVariableOp2\
,sequential_2/dense_26/BiasAdd/ReadVariableOp,sequential_2/dense_26/BiasAdd/ReadVariableOp2Z
+sequential_2/dense_26/MatMul/ReadVariableOp+sequential_2/dense_26/MatMul/ReadVariableOp:X T
/
_output_shapes
:           
!
_user_specified_name	input_5
├

d
E__inference_dropout_16_layer_call_and_return_conditional_losses_78313

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n█╢?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:         @C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Ф
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:         @*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>о
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         @T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ы
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*/
_output_shapes
:         @i
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:         @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
╩
Ш
(__inference_dense_24_layer_call_fn_78917

inputs
unknown:
АА
	unknown_0:	А
identityИвStatefulPartitionedCall▄
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_24_layer_call_and_return_conditional_losses_78086p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
▄
c
E__inference_dropout_19_layer_call_and_return_conditional_losses_78990

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:         А\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╚
`
D__inference_flatten_2_layer_call_and_return_conditional_losses_78073

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"       ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         АY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
▄
c
E__inference_dropout_19_layer_call_and_return_conditional_losses_78121

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:         А\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
Г
№
C__inference_conv2d_8_layer_call_and_return_conditional_losses_78783

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         @i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         @w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:           : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:           
 
_user_specified_nameinputs
√:
є
G__inference_sequential_2_layer_call_and_return_conditional_losses_78398

inputs(
conv2d_8_78360:@
conv2d_8_78362:@)
conv2d_9_78367:@А
conv2d_9_78369:	А+
conv2d_10_78374:АА
conv2d_10_78376:	А"
dense_24_78380:
АА
dense_24_78382:	А"
dense_25_78386:
АА
dense_25_78388:	А!
dense_26_78392:	А

dense_26_78394:

identityИв!conv2d_10/StatefulPartitionedCallв conv2d_8/StatefulPartitionedCallв conv2d_9/StatefulPartitionedCallв dense_24/StatefulPartitionedCallв dense_25/StatefulPartitionedCallв dense_26/StatefulPartitionedCallв"dropout_16/StatefulPartitionedCallв"dropout_17/StatefulPartitionedCallв"dropout_18/StatefulPartitionedCallв"dropout_19/StatefulPartitionedCall°
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_8_78360conv2d_8_78362*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_conv2d_8_layer_call_and_return_conditional_losses_78011є
max_pooling2d_4/PartitionedCallPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_77978°
"dropout_16/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_16_layer_call_and_return_conditional_losses_78313Ю
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall+dropout_16/StatefulPartitionedCall:output:0conv2d_9_78367conv2d_9_78369*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_conv2d_9_layer_call_and_return_conditional_losses_78036Ї
max_pooling2d_5/PartitionedCallPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_77990Ю
"dropout_17/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_5/PartitionedCall:output:0#^dropout_16/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_17_layer_call_and_return_conditional_losses_78280в
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall+dropout_17/StatefulPartitionedCall:output:0conv2d_10_78374conv2d_10_78376*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_10_layer_call_and_return_conditional_losses_78061с
flatten_2/PartitionedCallPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_78073Н
 dense_24/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_24_78380dense_24_78382*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_24_layer_call_and_return_conditional_losses_78086Ч
"dropout_18/StatefulPartitionedCallStatefulPartitionedCall)dense_24/StatefulPartitionedCall:output:0#^dropout_17/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_18_layer_call_and_return_conditional_losses_78231Ц
 dense_25/StatefulPartitionedCallStatefulPartitionedCall+dropout_18/StatefulPartitionedCall:output:0dense_25_78386dense_25_78388*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_25_layer_call_and_return_conditional_losses_78110Ч
"dropout_19/StatefulPartitionedCallStatefulPartitionedCall)dense_25/StatefulPartitionedCall:output:0#^dropout_18/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_19_layer_call_and_return_conditional_losses_78198Х
 dense_26/StatefulPartitionedCallStatefulPartitionedCall+dropout_19/StatefulPartitionedCall:output:0dense_26_78392dense_26_78394*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_26_layer_call_and_return_conditional_losses_78134x
IdentityIdentity)dense_26/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         
н
NoOpNoOp"^conv2d_10/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall!^dense_24/StatefulPartitionedCall!^dense_25/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall#^dropout_16/StatefulPartitionedCall#^dropout_17/StatefulPartitionedCall#^dropout_18/StatefulPartitionedCall#^dropout_19/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:           : : : : : : : : : : : : 2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2D
 dense_24/StatefulPartitionedCall dense_24/StatefulPartitionedCall2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2H
"dropout_16/StatefulPartitionedCall"dropout_16/StatefulPartitionedCall2H
"dropout_17/StatefulPartitionedCall"dropout_17/StatefulPartitionedCall2H
"dropout_18/StatefulPartitionedCall"dropout_18/StatefulPartitionedCall2H
"dropout_19/StatefulPartitionedCall"dropout_19/StatefulPartitionedCall:W S
/
_output_shapes
:           
 
_user_specified_nameinputs
°

─
#__inference_signature_wrapper_78569
input_5!
unknown:@
	unknown_0:@$
	unknown_1:@А
	unknown_2:	А%
	unknown_3:АА
	unknown_4:	А
	unknown_5:
АА
	unknown_6:	А
	unknown_7:
АА
	unknown_8:	А
	unknown_9:	А


unknown_10:

identityИвStatefulPartitionedCall╝
StatefulPartitionedCallStatefulPartitionedCallinput_5unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *)
f$R"
 __inference__wrapped_model_77969o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:           : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:           
!
_user_specified_name	input_5
Л
■
C__inference_conv2d_9_layer_call_and_return_conditional_losses_78840

inputs9
conv2d_readvariableop_resource:@А.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
°
c
E__inference_dropout_16_layer_call_and_return_conditional_losses_78023

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:         @c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:         @"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
╦_
╥	
G__inference_sequential_2_layer_call_and_return_conditional_losses_78763

inputsA
'conv2d_8_conv2d_readvariableop_resource:@6
(conv2d_8_biasadd_readvariableop_resource:@B
'conv2d_9_conv2d_readvariableop_resource:@А7
(conv2d_9_biasadd_readvariableop_resource:	АD
(conv2d_10_conv2d_readvariableop_resource:АА8
)conv2d_10_biasadd_readvariableop_resource:	А;
'dense_24_matmul_readvariableop_resource:
АА7
(dense_24_biasadd_readvariableop_resource:	А;
'dense_25_matmul_readvariableop_resource:
АА7
(dense_25_biasadd_readvariableop_resource:	А:
'dense_26_matmul_readvariableop_resource:	А
6
(dense_26_biasadd_readvariableop_resource:

identityИв conv2d_10/BiasAdd/ReadVariableOpвconv2d_10/Conv2D/ReadVariableOpвconv2d_8/BiasAdd/ReadVariableOpвconv2d_8/Conv2D/ReadVariableOpвconv2d_9/BiasAdd/ReadVariableOpвconv2d_9/Conv2D/ReadVariableOpвdense_24/BiasAdd/ReadVariableOpвdense_24/MatMul/ReadVariableOpвdense_25/BiasAdd/ReadVariableOpвdense_25/MatMul/ReadVariableOpвdense_26/BiasAdd/ReadVariableOpвdense_26/MatMul/ReadVariableOpО
conv2d_8/Conv2D/ReadVariableOpReadVariableOp'conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0м
conv2d_8/Conv2DConv2Dinputs&conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
Д
conv2d_8/BiasAdd/ReadVariableOpReadVariableOp(conv2d_8_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ш
conv2d_8/BiasAddBiasAddconv2d_8/Conv2D:output:0'conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @j
conv2d_8/ReluReluconv2d_8/BiasAdd:output:0*
T0*/
_output_shapes
:         @м
max_pooling2d_4/MaxPoolMaxPoolconv2d_8/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
]
dropout_16/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n█╢?Ь
dropout_16/dropout/MulMul max_pooling2d_4/MaxPool:output:0!dropout_16/dropout/Const:output:0*
T0*/
_output_shapes
:         @h
dropout_16/dropout/ShapeShape max_pooling2d_4/MaxPool:output:0*
T0*
_output_shapes
:к
/dropout_16/dropout/random_uniform/RandomUniformRandomUniform!dropout_16/dropout/Shape:output:0*
T0*/
_output_shapes
:         @*
dtype0f
!dropout_16/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>╧
dropout_16/dropout/GreaterEqualGreaterEqual8dropout_16/dropout/random_uniform/RandomUniform:output:0*dropout_16/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         @_
dropout_16/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ╟
dropout_16/dropout/SelectV2SelectV2#dropout_16/dropout/GreaterEqual:z:0dropout_16/dropout/Mul:z:0#dropout_16/dropout/Const_1:output:0*
T0*/
_output_shapes
:         @П
conv2d_9/Conv2D/ReadVariableOpReadVariableOp'conv2d_9_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0╦
conv2d_9/Conv2DConv2D$dropout_16/dropout/SelectV2:output:0&conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
Е
conv2d_9/BiasAdd/ReadVariableOpReadVariableOp(conv2d_9_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Щ
conv2d_9/BiasAddBiasAddconv2d_9/Conv2D:output:0'conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аk
conv2d_9/ReluReluconv2d_9/BiasAdd:output:0*
T0*0
_output_shapes
:         Ан
max_pooling2d_5/MaxPoolMaxPoolconv2d_9/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
]
dropout_17/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n█╢?Э
dropout_17/dropout/MulMul max_pooling2d_5/MaxPool:output:0!dropout_17/dropout/Const:output:0*
T0*0
_output_shapes
:         Аh
dropout_17/dropout/ShapeShape max_pooling2d_5/MaxPool:output:0*
T0*
_output_shapes
:л
/dropout_17/dropout/random_uniform/RandomUniformRandomUniform!dropout_17/dropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype0f
!dropout_17/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>╨
dropout_17/dropout/GreaterEqualGreaterEqual8dropout_17/dropout/random_uniform/RandomUniform:output:0*dropout_17/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         А_
dropout_17/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ╚
dropout_17/dropout/SelectV2SelectV2#dropout_17/dropout/GreaterEqual:z:0dropout_17/dropout/Mul:z:0#dropout_17/dropout/Const_1:output:0*
T0*0
_output_shapes
:         АТ
conv2d_10/Conv2D/ReadVariableOpReadVariableOp(conv2d_10_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0═
conv2d_10/Conv2DConv2D$dropout_17/dropout/SelectV2:output:0'conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
З
 conv2d_10/BiasAdd/ReadVariableOpReadVariableOp)conv2d_10_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ь
conv2d_10/BiasAddBiasAddconv2d_10/Conv2D:output:0(conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аm
conv2d_10/ReluReluconv2d_10/BiasAdd:output:0*
T0*0
_output_shapes
:         А`
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"       З
flatten_2/ReshapeReshapeconv2d_10/Relu:activations:0flatten_2/Const:output:0*
T0*(
_output_shapes
:         АИ
dense_24/MatMul/ReadVariableOpReadVariableOp'dense_24_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0Р
dense_24/MatMulMatMulflatten_2/Reshape:output:0&dense_24/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АЕ
dense_24/BiasAdd/ReadVariableOpReadVariableOp(dense_24_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Т
dense_24/BiasAddBiasAdddense_24/MatMul:product:0'dense_24/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аc
dense_24/ReluReludense_24/BiasAdd:output:0*
T0*(
_output_shapes
:         А]
dropout_18/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n█╢?Р
dropout_18/dropout/MulMuldense_24/Relu:activations:0!dropout_18/dropout/Const:output:0*
T0*(
_output_shapes
:         Аc
dropout_18/dropout/ShapeShapedense_24/Relu:activations:0*
T0*
_output_shapes
:г
/dropout_18/dropout/random_uniform/RandomUniformRandomUniform!dropout_18/dropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0f
!dropout_18/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>╚
dropout_18/dropout/GreaterEqualGreaterEqual8dropout_18/dropout/random_uniform/RandomUniform:output:0*dropout_18/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         А_
dropout_18/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    └
dropout_18/dropout/SelectV2SelectV2#dropout_18/dropout/GreaterEqual:z:0dropout_18/dropout/Mul:z:0#dropout_18/dropout/Const_1:output:0*
T0*(
_output_shapes
:         АИ
dense_25/MatMul/ReadVariableOpReadVariableOp'dense_25_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0Ъ
dense_25/MatMulMatMul$dropout_18/dropout/SelectV2:output:0&dense_25/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АЕ
dense_25/BiasAdd/ReadVariableOpReadVariableOp(dense_25_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Т
dense_25/BiasAddBiasAdddense_25/MatMul:product:0'dense_25/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аc
dense_25/ReluReludense_25/BiasAdd:output:0*
T0*(
_output_shapes
:         А]
dropout_19/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n█╢?Р
dropout_19/dropout/MulMuldense_25/Relu:activations:0!dropout_19/dropout/Const:output:0*
T0*(
_output_shapes
:         Аc
dropout_19/dropout/ShapeShapedense_25/Relu:activations:0*
T0*
_output_shapes
:г
/dropout_19/dropout/random_uniform/RandomUniformRandomUniform!dropout_19/dropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0f
!dropout_19/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>╚
dropout_19/dropout/GreaterEqualGreaterEqual8dropout_19/dropout/random_uniform/RandomUniform:output:0*dropout_19/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         А_
dropout_19/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    └
dropout_19/dropout/SelectV2SelectV2#dropout_19/dropout/GreaterEqual:z:0dropout_19/dropout/Mul:z:0#dropout_19/dropout/Const_1:output:0*
T0*(
_output_shapes
:         АЗ
dense_26/MatMul/ReadVariableOpReadVariableOp'dense_26_matmul_readvariableop_resource*
_output_shapes
:	А
*
dtype0Щ
dense_26/MatMulMatMul$dropout_19/dropout/SelectV2:output:0&dense_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
Д
dense_26/BiasAdd/ReadVariableOpReadVariableOp(dense_26_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0С
dense_26/BiasAddBiasAdddense_26/MatMul:product:0'dense_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
h
dense_26/SoftmaxSoftmaxdense_26/BiasAdd:output:0*
T0*'
_output_shapes
:         
i
IdentityIdentitydense_26/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         
┌
NoOpNoOp!^conv2d_10/BiasAdd/ReadVariableOp ^conv2d_10/Conv2D/ReadVariableOp ^conv2d_8/BiasAdd/ReadVariableOp^conv2d_8/Conv2D/ReadVariableOp ^conv2d_9/BiasAdd/ReadVariableOp^conv2d_9/Conv2D/ReadVariableOp ^dense_24/BiasAdd/ReadVariableOp^dense_24/MatMul/ReadVariableOp ^dense_25/BiasAdd/ReadVariableOp^dense_25/MatMul/ReadVariableOp ^dense_26/BiasAdd/ReadVariableOp^dense_26/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:           : : : : : : : : : : : : 2D
 conv2d_10/BiasAdd/ReadVariableOp conv2d_10/BiasAdd/ReadVariableOp2B
conv2d_10/Conv2D/ReadVariableOpconv2d_10/Conv2D/ReadVariableOp2B
conv2d_8/BiasAdd/ReadVariableOpconv2d_8/BiasAdd/ReadVariableOp2@
conv2d_8/Conv2D/ReadVariableOpconv2d_8/Conv2D/ReadVariableOp2B
conv2d_9/BiasAdd/ReadVariableOpconv2d_9/BiasAdd/ReadVariableOp2@
conv2d_9/Conv2D/ReadVariableOpconv2d_9/Conv2D/ReadVariableOp2B
dense_24/BiasAdd/ReadVariableOpdense_24/BiasAdd/ReadVariableOp2@
dense_24/MatMul/ReadVariableOpdense_24/MatMul/ReadVariableOp2B
dense_25/BiasAdd/ReadVariableOpdense_25/BiasAdd/ReadVariableOp2@
dense_25/MatMul/ReadVariableOpdense_25/MatMul/ReadVariableOp2B
dense_26/BiasAdd/ReadVariableOpdense_26/BiasAdd/ReadVariableOp2@
dense_26/MatMul/ReadVariableOpdense_26/MatMul/ReadVariableOp:W S
/
_output_shapes
:           
 
_user_specified_nameinputs
ж
F
*__inference_dropout_19_layer_call_fn_78980

inputs
identity┤
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_19_layer_call_and_return_conditional_losses_78121a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
г

ї
C__inference_dense_26_layer_call_and_return_conditional_losses_78134

inputs1
matmul_readvariableop_resource:	А
-
biasadd_readvariableop_resource:

identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         
`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:         
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
▄4
▀
G__inference_sequential_2_layer_call_and_return_conditional_losses_78141

inputs(
conv2d_8_78012:@
conv2d_8_78014:@)
conv2d_9_78037:@А
conv2d_9_78039:	А+
conv2d_10_78062:АА
conv2d_10_78064:	А"
dense_24_78087:
АА
dense_24_78089:	А"
dense_25_78111:
АА
dense_25_78113:	А!
dense_26_78135:	А

dense_26_78137:

identityИв!conv2d_10/StatefulPartitionedCallв conv2d_8/StatefulPartitionedCallв conv2d_9/StatefulPartitionedCallв dense_24/StatefulPartitionedCallв dense_25/StatefulPartitionedCallв dense_26/StatefulPartitionedCall°
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_8_78012conv2d_8_78014*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_conv2d_8_layer_call_and_return_conditional_losses_78011є
max_pooling2d_4/PartitionedCallPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_77978ш
dropout_16/PartitionedCallPartitionedCall(max_pooling2d_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_16_layer_call_and_return_conditional_losses_78023Ц
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall#dropout_16/PartitionedCall:output:0conv2d_9_78037conv2d_9_78039*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_conv2d_9_layer_call_and_return_conditional_losses_78036Ї
max_pooling2d_5/PartitionedCallPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_77990щ
dropout_17/PartitionedCallPartitionedCall(max_pooling2d_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_17_layer_call_and_return_conditional_losses_78048Ъ
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall#dropout_17/PartitionedCall:output:0conv2d_10_78062conv2d_10_78064*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_10_layer_call_and_return_conditional_losses_78061с
flatten_2/PartitionedCallPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_78073Н
 dense_24/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_24_78087dense_24_78089*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_24_layer_call_and_return_conditional_losses_78086т
dropout_18/PartitionedCallPartitionedCall)dense_24/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_18_layer_call_and_return_conditional_losses_78097О
 dense_25/StatefulPartitionedCallStatefulPartitionedCall#dropout_18/PartitionedCall:output:0dense_25_78111dense_25_78113*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_25_layer_call_and_return_conditional_losses_78110т
dropout_19/PartitionedCallPartitionedCall)dense_25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_19_layer_call_and_return_conditional_losses_78121Н
 dense_26/StatefulPartitionedCallStatefulPartitionedCall#dropout_19/PartitionedCall:output:0dense_26_78135dense_26_78137*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_26_layer_call_and_return_conditional_losses_78134x
IdentityIdentity)dense_26/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         
Щ
NoOpNoOp"^conv2d_10/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall!^dense_24/StatefulPartitionedCall!^dense_25/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:           : : : : : : : : : : : : 2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2D
 dense_24/StatefulPartitionedCall dense_24/StatefulPartitionedCall2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall:W S
/
_output_shapes
:           
 
_user_specified_nameinputs
Т
f
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_77978

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
о
K
"__inference__update_step_xla_77135
gradient
variable:	А*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:А: *
	_noinline(:E A

_output_shapes	
:А
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
Л
■
C__inference_conv2d_9_layer_call_and_return_conditional_losses_78036

inputs9
conv2d_readvariableop_resource:@А.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
╧
V
"__inference__update_step_xla_77120
gradient"
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:@: *
	_noinline(:P L
&
_output_shapes
:@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
о
K
"__inference__update_step_xla_77165
gradient
variable:	А*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:А: *
	_noinline(:E A

_output_shapes	
:А
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
г

ї
C__inference_dense_26_layer_call_and_return_conditional_losses_79022

inputs1
matmul_readvariableop_resource:	А
-
biasadd_readvariableop_resource:

identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         
`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:         
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
°
c
*__inference_dropout_18_layer_call_fn_78938

inputs
identityИвStatefulPartitionedCall─
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_18_layer_call_and_return_conditional_losses_78231p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
ж

ў
C__inference_dense_25_layer_call_and_return_conditional_losses_78975

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╜
P
"__inference__update_step_xla_77150
gradient
variable:
АА*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*!
_input_shapes
:
АА: *
	_noinline(:J F
 
_output_shapes
:
АА
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
ы
Э
(__inference_conv2d_8_layer_call_fn_78772

inputs!
unknown:@
	unknown_0:@
identityИвStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_conv2d_8_layer_call_and_return_conditional_losses_78011w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:           : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:           
 
_user_specified_nameinputs
Ї
б
)__inference_conv2d_10_layer_call_fn_78886

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_10_layer_call_and_return_conditional_losses_78061x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
■:
Ї
G__inference_sequential_2_layer_call_and_return_conditional_losses_78536
input_5(
conv2d_8_78498:@
conv2d_8_78500:@)
conv2d_9_78505:@А
conv2d_9_78507:	А+
conv2d_10_78512:АА
conv2d_10_78514:	А"
dense_24_78518:
АА
dense_24_78520:	А"
dense_25_78524:
АА
dense_25_78526:	А!
dense_26_78530:	А

dense_26_78532:

identityИв!conv2d_10/StatefulPartitionedCallв conv2d_8/StatefulPartitionedCallв conv2d_9/StatefulPartitionedCallв dense_24/StatefulPartitionedCallв dense_25/StatefulPartitionedCallв dense_26/StatefulPartitionedCallв"dropout_16/StatefulPartitionedCallв"dropout_17/StatefulPartitionedCallв"dropout_18/StatefulPartitionedCallв"dropout_19/StatefulPartitionedCall∙
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCallinput_5conv2d_8_78498conv2d_8_78500*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_conv2d_8_layer_call_and_return_conditional_losses_78011є
max_pooling2d_4/PartitionedCallPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_77978°
"dropout_16/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_16_layer_call_and_return_conditional_losses_78313Ю
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall+dropout_16/StatefulPartitionedCall:output:0conv2d_9_78505conv2d_9_78507*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_conv2d_9_layer_call_and_return_conditional_losses_78036Ї
max_pooling2d_5/PartitionedCallPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_77990Ю
"dropout_17/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_5/PartitionedCall:output:0#^dropout_16/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_17_layer_call_and_return_conditional_losses_78280в
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall+dropout_17/StatefulPartitionedCall:output:0conv2d_10_78512conv2d_10_78514*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_10_layer_call_and_return_conditional_losses_78061с
flatten_2/PartitionedCallPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_78073Н
 dense_24/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_24_78518dense_24_78520*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_24_layer_call_and_return_conditional_losses_78086Ч
"dropout_18/StatefulPartitionedCallStatefulPartitionedCall)dense_24/StatefulPartitionedCall:output:0#^dropout_17/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_18_layer_call_and_return_conditional_losses_78231Ц
 dense_25/StatefulPartitionedCallStatefulPartitionedCall+dropout_18/StatefulPartitionedCall:output:0dense_25_78524dense_25_78526*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_25_layer_call_and_return_conditional_losses_78110Ч
"dropout_19/StatefulPartitionedCallStatefulPartitionedCall)dense_25/StatefulPartitionedCall:output:0#^dropout_18/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_19_layer_call_and_return_conditional_losses_78198Х
 dense_26/StatefulPartitionedCallStatefulPartitionedCall+dropout_19/StatefulPartitionedCall:output:0dense_26_78530dense_26_78532*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_26_layer_call_and_return_conditional_losses_78134x
IdentityIdentity)dense_26/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         
н
NoOpNoOp"^conv2d_10/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall!^dense_24/StatefulPartitionedCall!^dense_25/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall#^dropout_16/StatefulPartitionedCall#^dropout_17/StatefulPartitionedCall#^dropout_18/StatefulPartitionedCall#^dropout_19/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:           : : : : : : : : : : : : 2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2D
 dense_24/StatefulPartitionedCall dense_24/StatefulPartitionedCall2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2H
"dropout_16/StatefulPartitionedCall"dropout_16/StatefulPartitionedCall2H
"dropout_17/StatefulPartitionedCall"dropout_17/StatefulPartitionedCall2H
"dropout_18/StatefulPartitionedCall"dropout_18/StatefulPartitionedCall2H
"dropout_19/StatefulPartitionedCall"dropout_19/StatefulPartitionedCall:X T
/
_output_shapes
:           
!
_user_specified_name	input_5
Г
№
C__inference_conv2d_8_layer_call_and_return_conditional_losses_78011

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         @i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         @w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:           : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:           
 
_user_specified_nameinputs
╜
P
"__inference__update_step_xla_77160
gradient
variable:
АА*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*!
_input_shapes
:
АА: *
	_noinline(:J F
 
_output_shapes
:
АА
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
о
K
"__inference__update_step_xla_77155
gradient
variable:	А*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:А: *
	_noinline(:E A

_output_shapes	
:А
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
├

d
E__inference_dropout_16_layer_call_and_return_conditional_losses_78820

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n█╢?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:         @C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Ф
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:         @*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>о
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         @T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ы
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*/
_output_shapes
:         @i
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:         @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
е
╠
,__inference_sequential_2_layer_call_fn_78627

inputs!
unknown:@
	unknown_0:@$
	unknown_1:@А
	unknown_2:	А%
	unknown_3:АА
	unknown_4:	А
	unknown_5:
АА
	unknown_6:	А
	unknown_7:
АА
	unknown_8:	А
	unknown_9:	А


unknown_10:

identityИвStatefulPartitionedCallт
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_78398o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:           : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:           
 
_user_specified_nameinputs
и
═
,__inference_sequential_2_layer_call_fn_78454
input_5!
unknown:@
	unknown_0:@$
	unknown_1:@А
	unknown_2:	А%
	unknown_3:АА
	unknown_4:	А
	unknown_5:
АА
	unknown_6:	А
	unknown_7:
АА
	unknown_8:	А
	unknown_9:	А


unknown_10:

identityИвStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinput_5unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_78398o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:           : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:           
!
_user_specified_name	input_5
Р
А
D__inference_conv2d_10_layer_call_and_return_conditional_losses_78061

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
°
c
*__inference_dropout_19_layer_call_fn_78985

inputs
identityИвStatefulPartitionedCall─
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_19_layer_call_and_return_conditional_losses_78198p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
Т
f
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_78850

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
╣
K
/__inference_max_pooling2d_5_layer_call_fn_78845

inputs
identity█
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_77990Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
▄
c
E__inference_dropout_18_layer_call_and_return_conditional_losses_78943

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:         А\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╩

d
E__inference_dropout_17_layer_call_and_return_conditional_losses_78280

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n█╢?m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:         АC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Х
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>п
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         АT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ь
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentitydropout/SelectV2:output:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╒
X
"__inference__update_step_xla_77140
gradient$
variable:АА*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*)
_input_shapes
:АА: *
	_noinline(:R N
(
_output_shapes
:АА
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
Т
f
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_77990

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ш
c
*__inference_dropout_17_layer_call_fn_78860

inputs
identityИвStatefulPartitionedCall╠
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_17_layer_call_and_return_conditional_losses_78280x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
о
K
"__inference__update_step_xla_77145
gradient
variable:	А*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:А: *
	_noinline(:E A

_output_shapes	
:А
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
╥
W
"__inference__update_step_xla_77130
gradient#
variable:@А*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*(
_input_shapes
:@А: *
	_noinline(:Q M
'
_output_shapes
:@А
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
ж

ў
C__inference_dense_25_layer_call_and_return_conditional_losses_78110

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
Т

d
E__inference_dropout_19_layer_call_and_return_conditional_losses_78198

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n█╢?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         АC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Н
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>з
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         АT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ф
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
№
c
E__inference_dropout_17_layer_call_and_return_conditional_losses_78865

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:         Аd

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:         А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
┬
F
*__inference_dropout_16_layer_call_fn_78798

inputs
identity╗
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_16_layer_call_and_return_conditional_losses_78023h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
Т

d
E__inference_dropout_18_layer_call_and_return_conditional_losses_78231

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n█╢?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         АC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Н
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>з
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         АT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ф
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
ж

ў
C__inference_dense_24_layer_call_and_return_conditional_losses_78928

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╞
F
*__inference_dropout_17_layer_call_fn_78855

inputs
identity╝
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_17_layer_call_and_return_conditional_losses_78048i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
▄
c
E__inference_dropout_18_layer_call_and_return_conditional_losses_78097

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:         А\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs"Ж
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*│
serving_defaultЯ
C
input_58
serving_default_input_5:0           <
dense_260
StatefulPartitionedCall:0         
tensorflow/serving/predict:уў
о
layer_with_weights-0
layer-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer_with_weights-3
	layer-8

layer-9
layer_with_weights-4
layer-10
layer-11
layer_with_weights-5
layer-12
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
▌
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op"
_tf_keras_layer
е
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses"
_tf_keras_layer
╝
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses
,_random_generator"
_tf_keras_layer
▌
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1__call__
*2&call_and_return_all_conditional_losses

3kernel
4bias
 5_jit_compiled_convolution_op"
_tf_keras_layer
е
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses"
_tf_keras_layer
╝
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses
B_random_generator"
_tf_keras_layer
▌
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses

Ikernel
Jbias
 K_jit_compiled_convolution_op"
_tf_keras_layer
е
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
P__call__
*Q&call_and_return_all_conditional_losses"
_tf_keras_layer
╗
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
V__call__
*W&call_and_return_all_conditional_losses

Xkernel
Ybias"
_tf_keras_layer
╝
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
^__call__
*_&call_and_return_all_conditional_losses
`_random_generator"
_tf_keras_layer
╗
a	variables
btrainable_variables
cregularization_losses
d	keras_api
e__call__
*f&call_and_return_all_conditional_losses

gkernel
hbias"
_tf_keras_layer
╝
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
m__call__
*n&call_and_return_all_conditional_losses
o_random_generator"
_tf_keras_layer
╗
p	variables
qtrainable_variables
rregularization_losses
s	keras_api
t__call__
*u&call_and_return_all_conditional_losses

vkernel
wbias"
_tf_keras_layer
v
0
1
32
43
I4
J5
X6
Y7
g8
h9
v10
w11"
trackable_list_wrapper
v
0
1
32
43
I4
J5
X6
Y7
g8
h9
v10
w11"
trackable_list_wrapper
 "
trackable_list_wrapper
╩
xnon_trainable_variables

ylayers
zmetrics
{layer_regularization_losses
|layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ч
}trace_0
~trace_1
trace_2
Аtrace_32·
,__inference_sequential_2_layer_call_fn_78168
,__inference_sequential_2_layer_call_fn_78598
,__inference_sequential_2_layer_call_fn_78627
,__inference_sequential_2_layer_call_fn_78454┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z}trace_0z~trace_1ztrace_2zАtrace_3
┘
Бtrace_0
Вtrace_1
Гtrace_2
Дtrace_32ц
G__inference_sequential_2_layer_call_and_return_conditional_losses_78681
G__inference_sequential_2_layer_call_and_return_conditional_losses_78763
G__inference_sequential_2_layer_call_and_return_conditional_losses_78495
G__inference_sequential_2_layer_call_and_return_conditional_losses_78536┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zБtrace_0zВtrace_1zГtrace_2zДtrace_3
╦B╚
 __inference__wrapped_model_77969input_5"Ш
С▓Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
┤
Е
_variables
Ж_iterations
З_learning_rate
И_index_dict
Й
_momentums
К_velocities
Л
_u_product
М_update_step_xla"
experimentalOptimizer
-
Нserving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Оnon_trainable_variables
Пlayers
Рmetrics
 Сlayer_regularization_losses
Тlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ю
Уtrace_02╧
(__inference_conv2d_8_layer_call_fn_78772в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zУtrace_0
Й
Фtrace_02ъ
C__inference_conv2d_8_layer_call_and_return_conditional_losses_78783в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zФtrace_0
):'@2conv2d_8/kernel
:@2conv2d_8/bias
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Хnon_trainable_variables
Цlayers
Чmetrics
 Шlayer_regularization_losses
Щlayer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses"
_generic_user_object
ї
Ъtrace_02╓
/__inference_max_pooling2d_4_layer_call_fn_78788в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЪtrace_0
Р
Ыtrace_02ё
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_78793в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЫtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Ьnon_trainable_variables
Эlayers
Юmetrics
 Яlayer_regularization_losses
аlayer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses"
_generic_user_object
╔
бtrace_0
вtrace_12О
*__inference_dropout_16_layer_call_fn_78798
*__inference_dropout_16_layer_call_fn_78803│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zбtrace_0zвtrace_1
 
гtrace_0
дtrace_12─
E__inference_dropout_16_layer_call_and_return_conditional_losses_78808
E__inference_dropout_16_layer_call_and_return_conditional_losses_78820│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zгtrace_0zдtrace_1
"
_generic_user_object
.
30
41"
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
еnon_trainable_variables
жlayers
зmetrics
 иlayer_regularization_losses
йlayer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses"
_generic_user_object
ю
кtrace_02╧
(__inference_conv2d_9_layer_call_fn_78829в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zкtrace_0
Й
лtrace_02ъ
C__inference_conv2d_9_layer_call_and_return_conditional_losses_78840в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zлtrace_0
*:(@А2conv2d_9/kernel
:А2conv2d_9/bias
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
мnon_trainable_variables
нlayers
оmetrics
 пlayer_regularization_losses
░layer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses"
_generic_user_object
ї
▒trace_02╓
/__inference_max_pooling2d_5_layer_call_fn_78845в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z▒trace_0
Р
▓trace_02ё
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_78850в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z▓trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
│non_trainable_variables
┤layers
╡metrics
 ╢layer_regularization_losses
╖layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses"
_generic_user_object
╔
╕trace_0
╣trace_12О
*__inference_dropout_17_layer_call_fn_78855
*__inference_dropout_17_layer_call_fn_78860│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╕trace_0z╣trace_1
 
║trace_0
╗trace_12─
E__inference_dropout_17_layer_call_and_return_conditional_losses_78865
E__inference_dropout_17_layer_call_and_return_conditional_losses_78877│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z║trace_0z╗trace_1
"
_generic_user_object
.
I0
J1"
trackable_list_wrapper
.
I0
J1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╝non_trainable_variables
╜layers
╛metrics
 ┐layer_regularization_losses
└layer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses"
_generic_user_object
я
┴trace_02╨
)__inference_conv2d_10_layer_call_fn_78886в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z┴trace_0
К
┬trace_02ы
D__inference_conv2d_10_layer_call_and_return_conditional_losses_78897в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z┬trace_0
,:*АА2conv2d_10/kernel
:А2conv2d_10/bias
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
├non_trainable_variables
─layers
┼metrics
 ╞layer_regularization_losses
╟layer_metrics
L	variables
Mtrainable_variables
Nregularization_losses
P__call__
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses"
_generic_user_object
я
╚trace_02╨
)__inference_flatten_2_layer_call_fn_78902в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╚trace_0
К
╔trace_02ы
D__inference_flatten_2_layer_call_and_return_conditional_losses_78908в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╔trace_0
.
X0
Y1"
trackable_list_wrapper
.
X0
Y1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╩non_trainable_variables
╦layers
╠metrics
 ═layer_regularization_losses
╬layer_metrics
R	variables
Strainable_variables
Tregularization_losses
V__call__
*W&call_and_return_all_conditional_losses
&W"call_and_return_conditional_losses"
_generic_user_object
ю
╧trace_02╧
(__inference_dense_24_layer_call_fn_78917в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╧trace_0
Й
╨trace_02ъ
C__inference_dense_24_layer_call_and_return_conditional_losses_78928в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╨trace_0
#:!
АА2dense_24/kernel
:А2dense_24/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╤non_trainable_variables
╥layers
╙metrics
 ╘layer_regularization_losses
╒layer_metrics
Z	variables
[trainable_variables
\regularization_losses
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses"
_generic_user_object
╔
╓trace_0
╫trace_12О
*__inference_dropout_18_layer_call_fn_78933
*__inference_dropout_18_layer_call_fn_78938│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╓trace_0z╫trace_1
 
╪trace_0
┘trace_12─
E__inference_dropout_18_layer_call_and_return_conditional_losses_78943
E__inference_dropout_18_layer_call_and_return_conditional_losses_78955│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╪trace_0z┘trace_1
"
_generic_user_object
.
g0
h1"
trackable_list_wrapper
.
g0
h1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
┌non_trainable_variables
█layers
▄metrics
 ▌layer_regularization_losses
▐layer_metrics
a	variables
btrainable_variables
cregularization_losses
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses"
_generic_user_object
ю
▀trace_02╧
(__inference_dense_25_layer_call_fn_78964в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z▀trace_0
Й
рtrace_02ъ
C__inference_dense_25_layer_call_and_return_conditional_losses_78975в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zрtrace_0
#:!
АА2dense_25/kernel
:А2dense_25/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
сnon_trainable_variables
тlayers
уmetrics
 фlayer_regularization_losses
хlayer_metrics
i	variables
jtrainable_variables
kregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses"
_generic_user_object
╔
цtrace_0
чtrace_12О
*__inference_dropout_19_layer_call_fn_78980
*__inference_dropout_19_layer_call_fn_78985│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zцtrace_0zчtrace_1
 
шtrace_0
щtrace_12─
E__inference_dropout_19_layer_call_and_return_conditional_losses_78990
E__inference_dropout_19_layer_call_and_return_conditional_losses_79002│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zшtrace_0zщtrace_1
"
_generic_user_object
.
v0
w1"
trackable_list_wrapper
.
v0
w1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
ъnon_trainable_variables
ыlayers
ьmetrics
 эlayer_regularization_losses
юlayer_metrics
p	variables
qtrainable_variables
rregularization_losses
t__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses"
_generic_user_object
ю
яtrace_02╧
(__inference_dense_26_layer_call_fn_79011в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zяtrace_0
Й
Ёtrace_02ъ
C__inference_dense_26_layer_call_and_return_conditional_losses_79022в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЁtrace_0
": 	А
2dense_26/kernel
:
2dense_26/bias
 "
trackable_list_wrapper
~
0
1
2
3
4
5
6
7
	8

9
10
11
12"
trackable_list_wrapper
0
ё0
Є1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
■B√
,__inference_sequential_2_layer_call_fn_78168input_5"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
¤B·
,__inference_sequential_2_layer_call_fn_78598inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
¤B·
,__inference_sequential_2_layer_call_fn_78627inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
■B√
,__inference_sequential_2_layer_call_fn_78454input_5"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ШBХ
G__inference_sequential_2_layer_call_and_return_conditional_losses_78681inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ШBХ
G__inference_sequential_2_layer_call_and_return_conditional_losses_78763inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЩBЦ
G__inference_sequential_2_layer_call_and_return_conditional_losses_78495input_5"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЩBЦ
G__inference_sequential_2_layer_call_and_return_conditional_losses_78536input_5"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ў
Ж0
є1
Ї2
ї3
Ў4
ў5
°6
∙7
·8
√9
№10
¤11
■12
 13
А14
Б15
В16
Г17
Д18
Е19
Ж20
З21
И22
Й23
К24"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
В
є0
ї1
ў2
∙3
√4
¤5
 6
Б7
Г8
Е9
З10
Й11"
trackable_list_wrapper
В
Ї0
Ў1
°2
·3
№4
■5
А6
В7
Д8
Ж9
И10
К11"
trackable_list_wrapper
: 2Nadam/Variable
├
Лtrace_0
Мtrace_1
Нtrace_2
Оtrace_3
Пtrace_4
Рtrace_5
Сtrace_6
Тtrace_7
Уtrace_8
Фtrace_9
Хtrace_10
Цtrace_112ь
"__inference__update_step_xla_77120
"__inference__update_step_xla_77125
"__inference__update_step_xla_77130
"__inference__update_step_xla_77135
"__inference__update_step_xla_77140
"__inference__update_step_xla_77145
"__inference__update_step_xla_77150
"__inference__update_step_xla_77155
"__inference__update_step_xla_77160
"__inference__update_step_xla_77165
"__inference__update_step_xla_77170
"__inference__update_step_xla_77175╣
о▓к
FullArgSpec2
args*Ъ'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0zЛtrace_0zМtrace_1zНtrace_2zОtrace_3zПtrace_4zРtrace_5zСtrace_6zТtrace_7zУtrace_8zФtrace_9zХtrace_10zЦtrace_11
╩B╟
#__inference_signature_wrapper_78569input_5"Ф
Н▓Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
▄B┘
(__inference_conv2d_8_layer_call_fn_78772inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ўBЇ
C__inference_conv2d_8_layer_call_and_return_conditional_losses_78783inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
уBр
/__inference_max_pooling2d_4_layer_call_fn_78788inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
■B√
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_78793inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
яBь
*__inference_dropout_16_layer_call_fn_78798inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
яBь
*__inference_dropout_16_layer_call_fn_78803inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
КBЗ
E__inference_dropout_16_layer_call_and_return_conditional_losses_78808inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
КBЗ
E__inference_dropout_16_layer_call_and_return_conditional_losses_78820inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
▄B┘
(__inference_conv2d_9_layer_call_fn_78829inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ўBЇ
C__inference_conv2d_9_layer_call_and_return_conditional_losses_78840inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
уBр
/__inference_max_pooling2d_5_layer_call_fn_78845inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
■B√
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_78850inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
яBь
*__inference_dropout_17_layer_call_fn_78855inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
яBь
*__inference_dropout_17_layer_call_fn_78860inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
КBЗ
E__inference_dropout_17_layer_call_and_return_conditional_losses_78865inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
КBЗ
E__inference_dropout_17_layer_call_and_return_conditional_losses_78877inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
▌B┌
)__inference_conv2d_10_layer_call_fn_78886inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
°Bї
D__inference_conv2d_10_layer_call_and_return_conditional_losses_78897inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
▌B┌
)__inference_flatten_2_layer_call_fn_78902inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
°Bї
D__inference_flatten_2_layer_call_and_return_conditional_losses_78908inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
▄B┘
(__inference_dense_24_layer_call_fn_78917inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ўBЇ
C__inference_dense_24_layer_call_and_return_conditional_losses_78928inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
яBь
*__inference_dropout_18_layer_call_fn_78933inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
яBь
*__inference_dropout_18_layer_call_fn_78938inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
КBЗ
E__inference_dropout_18_layer_call_and_return_conditional_losses_78943inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
КBЗ
E__inference_dropout_18_layer_call_and_return_conditional_losses_78955inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
▄B┘
(__inference_dense_25_layer_call_fn_78964inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ўBЇ
C__inference_dense_25_layer_call_and_return_conditional_losses_78975inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
яBь
*__inference_dropout_19_layer_call_fn_78980inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
яBь
*__inference_dropout_19_layer_call_fn_78985inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
КBЗ
E__inference_dropout_19_layer_call_and_return_conditional_losses_78990inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
КBЗ
E__inference_dropout_19_layer_call_and_return_conditional_losses_79002inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
▄B┘
(__inference_dense_26_layer_call_fn_79011inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ўBЇ
C__inference_dense_26_layer_call_and_return_conditional_losses_79022inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
R
Ч	variables
Ш	keras_api

Щtotal

Ъcount"
_tf_keras_metric
c
Ы	variables
Ь	keras_api

Эtotal

Юcount
Я
_fn_kwargs"
_tf_keras_metric
/:-@2Nadam/m/conv2d_8/kernel
/:-@2Nadam/v/conv2d_8/kernel
!:@2Nadam/m/conv2d_8/bias
!:@2Nadam/v/conv2d_8/bias
0:.@А2Nadam/m/conv2d_9/kernel
0:.@А2Nadam/v/conv2d_9/kernel
": А2Nadam/m/conv2d_9/bias
": А2Nadam/v/conv2d_9/bias
2:0АА2Nadam/m/conv2d_10/kernel
2:0АА2Nadam/v/conv2d_10/kernel
#:!А2Nadam/m/conv2d_10/bias
#:!А2Nadam/v/conv2d_10/bias
):'
АА2Nadam/m/dense_24/kernel
):'
АА2Nadam/v/dense_24/kernel
": А2Nadam/m/dense_24/bias
": А2Nadam/v/dense_24/bias
):'
АА2Nadam/m/dense_25/kernel
):'
АА2Nadam/v/dense_25/kernel
": А2Nadam/m/dense_25/bias
": А2Nadam/v/dense_25/bias
(:&	А
2Nadam/m/dense_26/kernel
(:&	А
2Nadam/v/dense_26/kernel
!:
2Nadam/m/dense_26/bias
!:
2Nadam/v/dense_26/bias
ўBЇ
"__inference__update_step_xla_77120gradientvariable"╖
о▓к
FullArgSpec2
args*Ъ'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ўBЇ
"__inference__update_step_xla_77125gradientvariable"╖
о▓к
FullArgSpec2
args*Ъ'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ўBЇ
"__inference__update_step_xla_77130gradientvariable"╖
о▓к
FullArgSpec2
args*Ъ'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ўBЇ
"__inference__update_step_xla_77135gradientvariable"╖
о▓к
FullArgSpec2
args*Ъ'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ўBЇ
"__inference__update_step_xla_77140gradientvariable"╖
о▓к
FullArgSpec2
args*Ъ'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ўBЇ
"__inference__update_step_xla_77145gradientvariable"╖
о▓к
FullArgSpec2
args*Ъ'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ўBЇ
"__inference__update_step_xla_77150gradientvariable"╖
о▓к
FullArgSpec2
args*Ъ'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ўBЇ
"__inference__update_step_xla_77155gradientvariable"╖
о▓к
FullArgSpec2
args*Ъ'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ўBЇ
"__inference__update_step_xla_77160gradientvariable"╖
о▓к
FullArgSpec2
args*Ъ'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ўBЇ
"__inference__update_step_xla_77165gradientvariable"╖
о▓к
FullArgSpec2
args*Ъ'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ўBЇ
"__inference__update_step_xla_77170gradientvariable"╖
о▓к
FullArgSpec2
args*Ъ'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ўBЇ
"__inference__update_step_xla_77175gradientvariable"╖
о▓к
FullArgSpec2
args*Ъ'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
0
Щ0
Ъ1"
trackable_list_wrapper
.
Ч	variables"
_generic_user_object
:  (2total
:  (2count
0
Э0
Ю1"
trackable_list_wrapper
.
Ы	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapperд
"__inference__update_step_xla_77120~xвu
nвk
!К
gradient@
<Т9	%в"
·@
А
p
` VariableSpec 
`Аз┐╪╣ 9
к "
 М
"__inference__update_step_xla_77125f`в]
VвS
К
gradient@
0Т-	в
·@
А
p
` VariableSpec 
`АМ╛╪╣ 9
к "
 з
"__inference__update_step_xla_77130Аzвw
pвm
"К
gradient@А
=Т:	&в#
·@А
А
p
` VariableSpec 
`рЫЕ╟╣ 9
к "
 О
"__inference__update_step_xla_77135hbв_
XвU
К
gradientА
1Т.	в
·А
А
p
` VariableSpec 
`рФ┬╪╣ 9
к "
 й
"__inference__update_step_xla_77140В|вy
rвo
#К 
gradientАА
>Т;	'в$
·АА
А
p
` VariableSpec 
`АМ░╪╣ 9
к "
 О
"__inference__update_step_xla_77145hbв_
XвU
К
gradientА
1Т.	в
·А
А
p
` VariableSpec 
`АО▒╪╣ 9
к "
 Ш
"__inference__update_step_xla_77150rlвi
bв_
К
gradient
АА
6Т3	в
·
АА
А
p
` VariableSpec 
`а╡░╪╣ 9
к "
 О
"__inference__update_step_xla_77155hbв_
XвU
К
gradientА
1Т.	в
·А
А
p
` VariableSpec 
`р╚▒╪╣ 9
к "
 Ш
"__inference__update_step_xla_77160rlвi
bв_
К
gradient
АА
6Т3	в
·
АА
А
p
` VariableSpec 
`аФ┐╪╣ 9
к "
 О
"__inference__update_step_xla_77165hbв_
XвU
К
gradientА
1Т.	в
·А
А
p
` VariableSpec 
`АД┐╪╣ 9
к "
 Ц
"__inference__update_step_xla_77170pjвg
`в]
К
gradient	А

5Т2	в
·	А

А
p
` VariableSpec 
`аЮеж▓ 9
к "
 М
"__inference__update_step_xla_77175f`в]
VвS
К
gradient

0Т-	в
·

А
p
` VariableSpec 
`абдж▓ 9
к "
 б
 __inference__wrapped_model_77969}34IJXYghvw8в5
.в+
)К&
input_5           
к "3к0
.
dense_26"К
dense_26         
╜
D__inference_conv2d_10_layer_call_and_return_conditional_losses_78897uIJ8в5
.в+
)К&
inputs         А
к "5в2
+К(
tensor_0         А
Ъ Ч
)__inference_conv2d_10_layer_call_fn_78886jIJ8в5
.в+
)К&
inputs         А
к "*К'
unknown         А║
C__inference_conv2d_8_layer_call_and_return_conditional_losses_78783s7в4
-в*
(К%
inputs           
к "4в1
*К'
tensor_0         @
Ъ Ф
(__inference_conv2d_8_layer_call_fn_78772h7в4
-в*
(К%
inputs           
к ")К&
unknown         @╗
C__inference_conv2d_9_layer_call_and_return_conditional_losses_78840t347в4
-в*
(К%
inputs         @
к "5в2
+К(
tensor_0         А
Ъ Х
(__inference_conv2d_9_layer_call_fn_78829i347в4
-в*
(К%
inputs         @
к "*К'
unknown         Ам
C__inference_dense_24_layer_call_and_return_conditional_losses_78928eXY0в-
&в#
!К
inputs         А
к "-в*
#К 
tensor_0         А
Ъ Ж
(__inference_dense_24_layer_call_fn_78917ZXY0в-
&в#
!К
inputs         А
к ""К
unknown         Ам
C__inference_dense_25_layer_call_and_return_conditional_losses_78975egh0в-
&в#
!К
inputs         А
к "-в*
#К 
tensor_0         А
Ъ Ж
(__inference_dense_25_layer_call_fn_78964Zgh0в-
&в#
!К
inputs         А
к ""К
unknown         Ал
C__inference_dense_26_layer_call_and_return_conditional_losses_79022dvw0в-
&в#
!К
inputs         А
к ",в)
"К
tensor_0         

Ъ Е
(__inference_dense_26_layer_call_fn_79011Yvw0в-
&в#
!К
inputs         А
к "!К
unknown         
╝
E__inference_dropout_16_layer_call_and_return_conditional_losses_78808s;в8
1в.
(К%
inputs         @
p 
к "4в1
*К'
tensor_0         @
Ъ ╝
E__inference_dropout_16_layer_call_and_return_conditional_losses_78820s;в8
1в.
(К%
inputs         @
p
к "4в1
*К'
tensor_0         @
Ъ Ц
*__inference_dropout_16_layer_call_fn_78798h;в8
1в.
(К%
inputs         @
p 
к ")К&
unknown         @Ц
*__inference_dropout_16_layer_call_fn_78803h;в8
1в.
(К%
inputs         @
p
к ")К&
unknown         @╛
E__inference_dropout_17_layer_call_and_return_conditional_losses_78865u<в9
2в/
)К&
inputs         А
p 
к "5в2
+К(
tensor_0         А
Ъ ╛
E__inference_dropout_17_layer_call_and_return_conditional_losses_78877u<в9
2в/
)К&
inputs         А
p
к "5в2
+К(
tensor_0         А
Ъ Ш
*__inference_dropout_17_layer_call_fn_78855j<в9
2в/
)К&
inputs         А
p 
к "*К'
unknown         АШ
*__inference_dropout_17_layer_call_fn_78860j<в9
2в/
)К&
inputs         А
p
к "*К'
unknown         Ао
E__inference_dropout_18_layer_call_and_return_conditional_losses_78943e4в1
*в'
!К
inputs         А
p 
к "-в*
#К 
tensor_0         А
Ъ о
E__inference_dropout_18_layer_call_and_return_conditional_losses_78955e4в1
*в'
!К
inputs         А
p
к "-в*
#К 
tensor_0         А
Ъ И
*__inference_dropout_18_layer_call_fn_78933Z4в1
*в'
!К
inputs         А
p 
к ""К
unknown         АИ
*__inference_dropout_18_layer_call_fn_78938Z4в1
*в'
!К
inputs         А
p
к ""К
unknown         Ао
E__inference_dropout_19_layer_call_and_return_conditional_losses_78990e4в1
*в'
!К
inputs         А
p 
к "-в*
#К 
tensor_0         А
Ъ о
E__inference_dropout_19_layer_call_and_return_conditional_losses_79002e4в1
*в'
!К
inputs         А
p
к "-в*
#К 
tensor_0         А
Ъ И
*__inference_dropout_19_layer_call_fn_78980Z4в1
*в'
!К
inputs         А
p 
к ""К
unknown         АИ
*__inference_dropout_19_layer_call_fn_78985Z4в1
*в'
!К
inputs         А
p
к ""К
unknown         А▒
D__inference_flatten_2_layer_call_and_return_conditional_losses_78908i8в5
.в+
)К&
inputs         А
к "-в*
#К 
tensor_0         А
Ъ Л
)__inference_flatten_2_layer_call_fn_78902^8в5
.в+
)К&
inputs         А
к ""К
unknown         АЇ
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_78793еRвO
HвE
CК@
inputs4                                    
к "OвL
EКB
tensor_04                                    
Ъ ╬
/__inference_max_pooling2d_4_layer_call_fn_78788ЪRвO
HвE
CК@
inputs4                                    
к "DКA
unknown4                                    Ї
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_78850еRвO
HвE
CК@
inputs4                                    
к "OвL
EКB
tensor_04                                    
Ъ ╬
/__inference_max_pooling2d_5_layer_call_fn_78845ЪRвO
HвE
CК@
inputs4                                    
к "DКA
unknown4                                    ╔
G__inference_sequential_2_layer_call_and_return_conditional_losses_78495~34IJXYghvw@в=
6в3
)К&
input_5           
p 

 
к ",в)
"К
tensor_0         

Ъ ╔
G__inference_sequential_2_layer_call_and_return_conditional_losses_78536~34IJXYghvw@в=
6в3
)К&
input_5           
p

 
к ",в)
"К
tensor_0         

Ъ ╚
G__inference_sequential_2_layer_call_and_return_conditional_losses_78681}34IJXYghvw?в<
5в2
(К%
inputs           
p 

 
к ",в)
"К
tensor_0         

Ъ ╚
G__inference_sequential_2_layer_call_and_return_conditional_losses_78763}34IJXYghvw?в<
5в2
(К%
inputs           
p

 
к ",в)
"К
tensor_0         

Ъ г
,__inference_sequential_2_layer_call_fn_78168s34IJXYghvw@в=
6в3
)К&
input_5           
p 

 
к "!К
unknown         
г
,__inference_sequential_2_layer_call_fn_78454s34IJXYghvw@в=
6в3
)К&
input_5           
p

 
к "!К
unknown         
в
,__inference_sequential_2_layer_call_fn_78598r34IJXYghvw?в<
5в2
(К%
inputs           
p 

 
к "!К
unknown         
в
,__inference_sequential_2_layer_call_fn_78627r34IJXYghvw?в<
5в2
(К%
inputs           
p

 
к "!К
unknown         
░
#__inference_signature_wrapper_78569И34IJXYghvwCв@
в 
9к6
4
input_5)К&
input_5           "3к0
.
dense_26"К
dense_26         
