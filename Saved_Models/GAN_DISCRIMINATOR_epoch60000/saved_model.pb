ян	
┐Х
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
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
\
	LeakyRelu
features"T
activations"T"
alphafloat%═╠L>"
Ttype0:
2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
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
╛
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
executor_typestring И
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
 И"serve*2.5.02v2.5.0-0-ga4dfb8d1a718Ст
~
conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d/kernel
w
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
:@*
dtype0
n
conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d/bias
g
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
:@*
dtype0
Г
conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А* 
shared_nameconv2d_1/kernel
|
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*'
_output_shapes
:@А*
dtype0
s
conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameconv2d_1/bias
l
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes	
:А*
dtype0
Д
conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА* 
shared_nameconv2d_2/kernel
}
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*(
_output_shapes
:АА*
dtype0
s
conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameconv2d_2/bias
l
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes	
:А*
dtype0
z
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Аа*
shared_namedense_1/kernel
s
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel* 
_output_shapes
:
Аа*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
dtype0

NoOpNoOp
С)
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*╠(
value┬(B┐( B╕(
 
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
	layer-8

layer-9
layer_with_weights-3
layer-10

signatures
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
Н

kernel
bias
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
w
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
w
#_self_saveable_object_factories
	variables
 trainable_variables
!regularization_losses
"	keras_api
Н

#kernel
$bias
#%_self_saveable_object_factories
&	variables
'trainable_variables
(regularization_losses
)	keras_api
w
#*_self_saveable_object_factories
+	variables
,trainable_variables
-regularization_losses
.	keras_api
w
#/_self_saveable_object_factories
0	variables
1trainable_variables
2regularization_losses
3	keras_api
Н

4kernel
5bias
#6_self_saveable_object_factories
7	variables
8trainable_variables
9regularization_losses
:	keras_api
w
#;_self_saveable_object_factories
<	variables
=trainable_variables
>regularization_losses
?	keras_api
w
#@_self_saveable_object_factories
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
w
#E_self_saveable_object_factories
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
Н

Jkernel
Kbias
#L_self_saveable_object_factories
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
 
 
8
0
1
#2
$3
44
55
J6
K7
8
0
1
#2
$3
44
55
J6
K7
 
н
Qlayer_metrics
	variables
trainable_variables
Rnon_trainable_variables
Slayer_regularization_losses
Tmetrics
regularization_losses

Ulayers
YW
VARIABLE_VALUEconv2d/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEconv2d/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
 
н
Vlayer_metrics
	variables
trainable_variables
Wnon_trainable_variables
Xlayer_regularization_losses
Ymetrics
regularization_losses

Zlayers
 
 
 
 
н
[layer_metrics
	variables
trainable_variables
\non_trainable_variables
]layer_regularization_losses
^metrics
regularization_losses

_layers
 
 
 
 
н
`layer_metrics
	variables
 trainable_variables
anon_trainable_variables
blayer_regularization_losses
cmetrics
!regularization_losses

dlayers
[Y
VARIABLE_VALUEconv2d_1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

#0
$1

#0
$1
 
н
elayer_metrics
&	variables
'trainable_variables
fnon_trainable_variables
glayer_regularization_losses
hmetrics
(regularization_losses

ilayers
 
 
 
 
н
jlayer_metrics
+	variables
,trainable_variables
knon_trainable_variables
llayer_regularization_losses
mmetrics
-regularization_losses

nlayers
 
 
 
 
н
olayer_metrics
0	variables
1trainable_variables
pnon_trainable_variables
qlayer_regularization_losses
rmetrics
2regularization_losses

slayers
[Y
VARIABLE_VALUEconv2d_2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

40
51

40
51
 
н
tlayer_metrics
7	variables
8trainable_variables
unon_trainable_variables
vlayer_regularization_losses
wmetrics
9regularization_losses

xlayers
 
 
 
 
н
ylayer_metrics
<	variables
=trainable_variables
znon_trainable_variables
{layer_regularization_losses
|metrics
>regularization_losses

}layers
 
 
 
 
░
~layer_metrics
A	variables
Btrainable_variables
non_trainable_variables
 Аlayer_regularization_losses
Бmetrics
Cregularization_losses
Вlayers
 
 
 
 
▓
Гlayer_metrics
F	variables
Gtrainable_variables
Дnon_trainable_variables
 Еlayer_regularization_losses
Жmetrics
Hregularization_losses
Зlayers
ZX
VARIABLE_VALUEdense_1/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_1/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

J0
K1

J0
K1
 
▓
Иlayer_metrics
M	variables
Ntrainable_variables
Йnon_trainable_variables
 Кlayer_regularization_losses
Лmetrics
Oregularization_losses
Мlayers
 
 
 
 
N
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
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
У
serving_default_conv2d_inputPlaceholder*1
_output_shapes
:         аа*
dtype0*&
shape:         аа
┼
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_inputconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasdense_1/kerneldense_1/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *.
f)R'
%__inference_signature_wrapper_5857616
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
┴
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename!conv2d/kernel/Read/ReadVariableOpconv2d/bias/Read/ReadVariableOp#conv2d_1/kernel/Read/ReadVariableOp!conv2d_1/bias/Read/ReadVariableOp#conv2d_2/kernel/Read/ReadVariableOp!conv2d_2/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOpConst*
Tin
2
*
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
GPU2*0J 8В *)
f$R"
 __inference__traced_save_5857996
Ь
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasdense_1/kerneldense_1/bias*
Tin
2	*
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
GPU2*0J 8В *,
f'R%
#__inference__traced_restore_5858030тЬ
╝

Б
E__inference_conv2d_2_layer_call_and_return_conditional_losses_5857240

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2	
BiasAddЮ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         ((А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         ((А
 
_user_specified_nameinputs
╫	
▄
.__inference_sequential_1_layer_call_fn_5857751

inputs!
unknown:@
	unknown_0:@$
	unknown_1:@А
	unknown_2:	А%
	unknown_3:АА
	unknown_4:	А
	unknown_5:
Аа
	unknown_6:
identityИвStatefulPartitionedCall╩
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_sequential_1_layer_call_and_return_conditional_losses_58574912
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         аа: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         аа
 
_user_specified_nameinputs
Ч
d
F__inference_dropout_1_layer_call_and_return_conditional_losses_5857228

inputs

identity_1c
IdentityIdentityinputs*
T0*0
_output_shapes
:         ((А2

Identityr

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:         ((А2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ((А:X T
0
_output_shapes
:         ((А
 
_user_specified_nameinputs
╕

А
E__inference_conv2d_1_layer_call_and_return_conditional_losses_5857210

inputs9
conv2d_readvariableop_resource:@А.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЦ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ((А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ((А2	
BiasAddЮ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         ((А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         PP@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         PP@
 
_user_specified_nameinputs
╠
б
*__inference_conv2d_1_layer_call_fn_5857826

inputs"
unknown:@А
	unknown_0:	А
identityИвStatefulPartitionedCallБ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ((А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_1_layer_call_and_return_conditional_losses_58572102
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         ((А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         PP@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         PP@
 
_user_specified_nameinputs
│

№
C__inference_conv2d_layer_call_and_return_conditional_losses_5857761

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOpг
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         PP@*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         PP@2	
BiasAddЭ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         PP@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         аа: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         аа
 
_user_specified_nameinputs
■:
В
"__inference__wrapped_model_5857163
conv2d_inputL
2sequential_1_conv2d_conv2d_readvariableop_resource:@A
3sequential_1_conv2d_biasadd_readvariableop_resource:@O
4sequential_1_conv2d_1_conv2d_readvariableop_resource:@АD
5sequential_1_conv2d_1_biasadd_readvariableop_resource:	АP
4sequential_1_conv2d_2_conv2d_readvariableop_resource:ААD
5sequential_1_conv2d_2_biasadd_readvariableop_resource:	АG
3sequential_1_dense_1_matmul_readvariableop_resource:
АаB
4sequential_1_dense_1_biasadd_readvariableop_resource:
identityИв*sequential_1/conv2d/BiasAdd/ReadVariableOpв)sequential_1/conv2d/Conv2D/ReadVariableOpв,sequential_1/conv2d_1/BiasAdd/ReadVariableOpв+sequential_1/conv2d_1/Conv2D/ReadVariableOpв,sequential_1/conv2d_2/BiasAdd/ReadVariableOpв+sequential_1/conv2d_2/Conv2D/ReadVariableOpв+sequential_1/dense_1/BiasAdd/ReadVariableOpв*sequential_1/dense_1/MatMul/ReadVariableOp╤
)sequential_1/conv2d/Conv2D/ReadVariableOpReadVariableOp2sequential_1_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02+
)sequential_1/conv2d/Conv2D/ReadVariableOpх
sequential_1/conv2d/Conv2DConv2Dconv2d_input1sequential_1/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         PP@*
paddingSAME*
strides
2
sequential_1/conv2d/Conv2D╚
*sequential_1/conv2d/BiasAdd/ReadVariableOpReadVariableOp3sequential_1_conv2d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02,
*sequential_1/conv2d/BiasAdd/ReadVariableOp╪
sequential_1/conv2d/BiasAddBiasAdd#sequential_1/conv2d/Conv2D:output:02sequential_1/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         PP@2
sequential_1/conv2d/BiasAdd└
$sequential_1/leaky_re_lu_4/LeakyRelu	LeakyRelu$sequential_1/conv2d/BiasAdd:output:0*/
_output_shapes
:         PP@*
alpha%ЪЩЩ>2&
$sequential_1/leaky_re_lu_4/LeakyRelu╕
sequential_1/dropout/IdentityIdentity2sequential_1/leaky_re_lu_4/LeakyRelu:activations:0*
T0*/
_output_shapes
:         PP@2
sequential_1/dropout/Identity╪
+sequential_1/conv2d_1/Conv2D/ReadVariableOpReadVariableOp4sequential_1_conv2d_1_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype02-
+sequential_1/conv2d_1/Conv2D/ReadVariableOpЖ
sequential_1/conv2d_1/Conv2DConv2D&sequential_1/dropout/Identity:output:03sequential_1/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ((А*
paddingSAME*
strides
2
sequential_1/conv2d_1/Conv2D╧
,sequential_1/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_conv2d_1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02.
,sequential_1/conv2d_1/BiasAdd/ReadVariableOpс
sequential_1/conv2d_1/BiasAddBiasAdd%sequential_1/conv2d_1/Conv2D:output:04sequential_1/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ((А2
sequential_1/conv2d_1/BiasAdd├
$sequential_1/leaky_re_lu_5/LeakyRelu	LeakyRelu&sequential_1/conv2d_1/BiasAdd:output:0*0
_output_shapes
:         ((А*
alpha%ЪЩЩ>2&
$sequential_1/leaky_re_lu_5/LeakyRelu╜
sequential_1/dropout_1/IdentityIdentity2sequential_1/leaky_re_lu_5/LeakyRelu:activations:0*
T0*0
_output_shapes
:         ((А2!
sequential_1/dropout_1/Identity┘
+sequential_1/conv2d_2/Conv2D/ReadVariableOpReadVariableOp4sequential_1_conv2d_2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02-
+sequential_1/conv2d_2/Conv2D/ReadVariableOpИ
sequential_1/conv2d_2/Conv2DConv2D(sequential_1/dropout_1/Identity:output:03sequential_1/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
sequential_1/conv2d_2/Conv2D╧
,sequential_1/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02.
,sequential_1/conv2d_2/BiasAdd/ReadVariableOpс
sequential_1/conv2d_2/BiasAddBiasAdd%sequential_1/conv2d_2/Conv2D:output:04sequential_1/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2
sequential_1/conv2d_2/BiasAdd├
$sequential_1/leaky_re_lu_6/LeakyRelu	LeakyRelu&sequential_1/conv2d_2/BiasAdd:output:0*0
_output_shapes
:         А*
alpha%ЪЩЩ>2&
$sequential_1/leaky_re_lu_6/LeakyRelu╜
sequential_1/dropout_2/IdentityIdentity2sequential_1/leaky_re_lu_6/LeakyRelu:activations:0*
T0*0
_output_shapes
:         А2!
sequential_1/dropout_2/IdentityЙ
sequential_1/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"     Р 2
sequential_1/flatten/Const╩
sequential_1/flatten/ReshapeReshape(sequential_1/dropout_2/Identity:output:0#sequential_1/flatten/Const:output:0*
T0*)
_output_shapes
:         Аа2
sequential_1/flatten/Reshape╬
*sequential_1/dense_1/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
Аа*
dtype02,
*sequential_1/dense_1/MatMul/ReadVariableOp╤
sequential_1/dense_1/MatMulMatMul%sequential_1/flatten/Reshape:output:02sequential_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
sequential_1/dense_1/MatMul╦
+sequential_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+sequential_1/dense_1/BiasAdd/ReadVariableOp╒
sequential_1/dense_1/BiasAddBiasAdd%sequential_1/dense_1/MatMul:product:03sequential_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
sequential_1/dense_1/BiasAddч
IdentityIdentity%sequential_1/dense_1/BiasAdd:output:0+^sequential_1/conv2d/BiasAdd/ReadVariableOp*^sequential_1/conv2d/Conv2D/ReadVariableOp-^sequential_1/conv2d_1/BiasAdd/ReadVariableOp,^sequential_1/conv2d_1/Conv2D/ReadVariableOp-^sequential_1/conv2d_2/BiasAdd/ReadVariableOp,^sequential_1/conv2d_2/Conv2D/ReadVariableOp,^sequential_1/dense_1/BiasAdd/ReadVariableOp+^sequential_1/dense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         аа: : : : : : : : 2X
*sequential_1/conv2d/BiasAdd/ReadVariableOp*sequential_1/conv2d/BiasAdd/ReadVariableOp2V
)sequential_1/conv2d/Conv2D/ReadVariableOp)sequential_1/conv2d/Conv2D/ReadVariableOp2\
,sequential_1/conv2d_1/BiasAdd/ReadVariableOp,sequential_1/conv2d_1/BiasAdd/ReadVariableOp2Z
+sequential_1/conv2d_1/Conv2D/ReadVariableOp+sequential_1/conv2d_1/Conv2D/ReadVariableOp2\
,sequential_1/conv2d_2/BiasAdd/ReadVariableOp,sequential_1/conv2d_2/BiasAdd/ReadVariableOp2Z
+sequential_1/conv2d_2/Conv2D/ReadVariableOp+sequential_1/conv2d_2/Conv2D/ReadVariableOp2Z
+sequential_1/dense_1/BiasAdd/ReadVariableOp+sequential_1/dense_1/BiasAdd/ReadVariableOp2X
*sequential_1/dense_1/MatMul/ReadVariableOp*sequential_1/dense_1/MatMul/ReadVariableOp:_ [
1
_output_shapes
:         аа
&
_user_specified_nameconv2d_input
Ч
d
F__inference_dropout_2_layer_call_and_return_conditional_losses_5857258

inputs

identity_1c
IdentityIdentityinputs*
T0*0
_output_shapes
:         А2

Identityr

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:         А2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
є
d
+__inference_dropout_1_layer_call_fn_5857863

inputs
identityИвStatefulPartitionedCallш
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ((А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_58573792
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         ((А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ((А22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         ((А
 
_user_specified_nameinputs
щ	
т
.__inference_sequential_1_layer_call_fn_5857304
conv2d_input!
unknown:@
	unknown_0:@$
	unknown_1:@А
	unknown_2:	А%
	unknown_3:АА
	unknown_4:	А
	unknown_5:
Аа
	unknown_6:
identityИвStatefulPartitionedCall╨
StatefulPartitionedCallStatefulPartitionedCallconv2d_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_sequential_1_layer_call_and_return_conditional_losses_58572852
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         аа: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
1
_output_shapes
:         аа
&
_user_specified_nameconv2d_input
б
f
J__inference_leaky_re_lu_6_layer_call_and_return_conditional_losses_5857251

inputs
identitym
	LeakyRelu	LeakyReluinputs*0
_output_shapes
:         А*
alpha%ЪЩЩ>2
	LeakyRelut
IdentityIdentityLeakyRelu:activations:0*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Ў
e
F__inference_dropout_2_layer_call_and_return_conditional_losses_5857340

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?2
dropout/Const|
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:         А2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╜
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>2
dropout/GreaterEqual/y╟
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         А2
dropout/GreaterEqualИ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:         А2
dropout/CastГ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:         А2
dropout/Mul_1n
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
ы
b
)__inference_dropout_layer_call_fn_5857807

inputs
identityИвStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         PP@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_58574182
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         PP@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         PP@22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         PP@
 
_user_specified_nameinputs
я
K
/__inference_leaky_re_lu_5_layer_call_fn_5857836

inputs
identity╘
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ((А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_leaky_re_lu_5_layer_call_and_return_conditional_losses_58572212
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         ((А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ((А:X T
0
_output_shapes
:         ((А
 
_user_specified_nameinputs
д
Ш
)__inference_dense_1_layer_call_fn_5857949

inputs
unknown:
Аа
	unknown_0:
identityИвStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_58572782
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:         Аа: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:         Аа
 
_user_specified_nameinputs
Ў
e
F__inference_dropout_1_layer_call_and_return_conditional_losses_5857379

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?2
dropout/Const|
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:         ((А2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╜
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:         ((А*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>2
dropout/GreaterEqual/y╟
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         ((А2
dropout/GreaterEqualИ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:         ((А2
dropout/CastГ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:         ((А2
dropout/Mul_1n
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:         ((А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ((А:X T
0
_output_shapes
:         ((А
 
_user_specified_nameinputs
╪	
ў
D__inference_dense_1_layer_call_and_return_conditional_losses_5857278

inputs2
matmul_readvariableop_resource:
Аа-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
Аа*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAddХ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:         Аа: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:         Аа
 
_user_specified_nameinputs
С
b
D__inference_dropout_layer_call_and_return_conditional_losses_5857198

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:         PP@2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:         PP@2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         PP@:W S
/
_output_shapes
:         PP@
 
_user_specified_nameinputs
п-
Ъ
I__inference_sequential_1_layer_call_and_return_conditional_losses_5857285

inputs(
conv2d_5857181:@
conv2d_5857183:@+
conv2d_1_5857211:@А
conv2d_1_5857213:	А,
conv2d_2_5857241:АА
conv2d_2_5857243:	А#
dense_1_5857279:
Аа
dense_1_5857281:
identityИвconv2d/StatefulPartitionedCallв conv2d_1/StatefulPartitionedCallв conv2d_2/StatefulPartitionedCallвdense_1/StatefulPartitionedCallШ
conv2d/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_5857181conv2d_5857183*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         PP@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_conv2d_layer_call_and_return_conditional_losses_58571802 
conv2d/StatefulPartitionedCallР
leaky_re_lu_4/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         PP@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_leaky_re_lu_4_layer_call_and_return_conditional_losses_58571912
leaky_re_lu_4/PartitionedCall¤
dropout/PartitionedCallPartitionedCall&leaky_re_lu_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         PP@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_58571982
dropout/PartitionedCall╜
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0conv2d_1_5857211conv2d_1_5857213*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ((А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_1_layer_call_and_return_conditional_losses_58572102"
 conv2d_1/StatefulPartitionedCallУ
leaky_re_lu_5/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ((А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_leaky_re_lu_5_layer_call_and_return_conditional_losses_58572212
leaky_re_lu_5/PartitionedCallД
dropout_1/PartitionedCallPartitionedCall&leaky_re_lu_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ((А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_58572282
dropout_1/PartitionedCall┐
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0conv2d_2_5857241conv2d_2_5857243*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_2_layer_call_and_return_conditional_losses_58572402"
 conv2d_2/StatefulPartitionedCallУ
leaky_re_lu_6/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_leaky_re_lu_6_layer_call_and_return_conditional_losses_58572512
leaky_re_lu_6/PartitionedCallД
dropout_2/PartitionedCallPartitionedCall&leaky_re_lu_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dropout_2_layer_call_and_return_conditional_losses_58572582
dropout_2/PartitionedCallє
flatten/PartitionedCallPartitionedCall"dropout_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         Аа* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_58572662
flatten/PartitionedCallп
dense_1/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_1_5857279dense_1_5857281*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_58572782!
dense_1/StatefulPartitionedCallЕ
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         аа: : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:Y U
1
_output_shapes
:         аа
 
_user_specified_nameinputs
┴-
а
I__inference_sequential_1_layer_call_and_return_conditional_losses_5857562
conv2d_input(
conv2d_5857534:@
conv2d_5857536:@+
conv2d_1_5857541:@А
conv2d_1_5857543:	А,
conv2d_2_5857548:АА
conv2d_2_5857550:	А#
dense_1_5857556:
Аа
dense_1_5857558:
identityИвconv2d/StatefulPartitionedCallв conv2d_1/StatefulPartitionedCallв conv2d_2/StatefulPartitionedCallвdense_1/StatefulPartitionedCallЮ
conv2d/StatefulPartitionedCallStatefulPartitionedCallconv2d_inputconv2d_5857534conv2d_5857536*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         PP@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_conv2d_layer_call_and_return_conditional_losses_58571802 
conv2d/StatefulPartitionedCallР
leaky_re_lu_4/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         PP@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_leaky_re_lu_4_layer_call_and_return_conditional_losses_58571912
leaky_re_lu_4/PartitionedCall¤
dropout/PartitionedCallPartitionedCall&leaky_re_lu_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         PP@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_58571982
dropout/PartitionedCall╜
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0conv2d_1_5857541conv2d_1_5857543*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ((А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_1_layer_call_and_return_conditional_losses_58572102"
 conv2d_1/StatefulPartitionedCallУ
leaky_re_lu_5/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ((А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_leaky_re_lu_5_layer_call_and_return_conditional_losses_58572212
leaky_re_lu_5/PartitionedCallД
dropout_1/PartitionedCallPartitionedCall&leaky_re_lu_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ((А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_58572282
dropout_1/PartitionedCall┐
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0conv2d_2_5857548conv2d_2_5857550*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_2_layer_call_and_return_conditional_losses_58572402"
 conv2d_2/StatefulPartitionedCallУ
leaky_re_lu_6/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_leaky_re_lu_6_layer_call_and_return_conditional_losses_58572512
leaky_re_lu_6/PartitionedCallД
dropout_2/PartitionedCallPartitionedCall&leaky_re_lu_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dropout_2_layer_call_and_return_conditional_losses_58572582
dropout_2/PartitionedCallє
flatten/PartitionedCallPartitionedCall"dropout_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         Аа* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_58572662
flatten/PartitionedCallп
dense_1/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_1_5857556dense_1_5857558*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_58572782!
dense_1/StatefulPartitionedCallЕ
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         аа: : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:_ [
1
_output_shapes
:         аа
&
_user_specified_nameconv2d_input
Ч
d
F__inference_dropout_1_layer_call_and_return_conditional_losses_5857841

inputs

identity_1c
IdentityIdentityinputs*
T0*0
_output_shapes
:         ((А2

Identityr

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:         ((А2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ((А:X T
0
_output_shapes
:         ((А
 
_user_specified_nameinputs
ъ
`
D__inference_flatten_layer_call_and_return_conditional_losses_5857266

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"     Р 2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:         Аа2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:         Аа2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╔&
Ю
#__inference__traced_restore_5858030
file_prefix8
assignvariableop_conv2d_kernel:@,
assignvariableop_1_conv2d_bias:@=
"assignvariableop_2_conv2d_1_kernel:@А/
 assignvariableop_3_conv2d_1_bias:	А>
"assignvariableop_4_conv2d_2_kernel:АА/
 assignvariableop_5_conv2d_2_bias:	А5
!assignvariableop_6_dense_1_kernel:
Аа-
assignvariableop_7_dense_1_bias:

identity_9ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_2вAssignVariableOp_3вAssignVariableOp_4вAssignVariableOp_5вAssignVariableOp_6вAssignVariableOp_7▀
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*ы
valueсB▐	B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesа
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*%
valueB	B B B B B B B B B 2
RestoreV2/shape_and_slices╪
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*8
_output_shapes&
$:::::::::*
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

IdentityЭ
AssignVariableOpAssignVariableOpassignvariableop_conv2d_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1г
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv2d_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2з
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv2d_1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3е
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv2d_1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4з
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv2d_2_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5е
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv2d_2_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6ж
AssignVariableOp_6AssignVariableOp!assignvariableop_6_dense_1_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7д
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_1_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_79
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpО

Identity_8Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_8А

Identity_9IdentityIdentity_8:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7*
T0*
_output_shapes
: 2

Identity_9"!

identity_9Identity_9:output:0*%
_input_shapes
: : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_7:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
ч
G
+__inference_dropout_2_layer_call_fn_5857914

inputs
identity╨
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dropout_2_layer_call_and_return_conditional_losses_58572582
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
є
d
+__inference_dropout_2_layer_call_fn_5857919

inputs
identityИвStatefulPartitionedCallш
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dropout_2_layer_call_and_return_conditional_losses_58573402
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Э
f
J__inference_leaky_re_lu_4_layer_call_and_return_conditional_losses_5857775

inputs
identityl
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:         PP@*
alpha%ЪЩЩ>2
	LeakyRelus
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:         PP@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         PP@:W S
/
_output_shapes
:         PP@
 
_user_specified_nameinputs
С
b
D__inference_dropout_layer_call_and_return_conditional_losses_5857785

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:         PP@2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:         PP@2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         PP@:W S
/
_output_shapes
:         PP@
 
_user_specified_nameinputs
ь
c
D__inference_dropout_layer_call_and_return_conditional_losses_5857797

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:         PP@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╝
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:         PP@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>2
dropout/GreaterEqual/y╞
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         PP@2
dropout/GreaterEqualЗ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:         PP@2
dropout/CastВ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:         PP@2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:         PP@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         PP@:W S
/
_output_shapes
:         PP@
 
_user_specified_nameinputs
¤1
Д
I__inference_sequential_1_layer_call_and_return_conditional_losses_5857491

inputs(
conv2d_5857463:@
conv2d_5857465:@+
conv2d_1_5857470:@А
conv2d_1_5857472:	А,
conv2d_2_5857477:АА
conv2d_2_5857479:	А#
dense_1_5857485:
Аа
dense_1_5857487:
identityИвconv2d/StatefulPartitionedCallв conv2d_1/StatefulPartitionedCallв conv2d_2/StatefulPartitionedCallвdense_1/StatefulPartitionedCallвdropout/StatefulPartitionedCallв!dropout_1/StatefulPartitionedCallв!dropout_2/StatefulPartitionedCallШ
conv2d/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_5857463conv2d_5857465*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         PP@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_conv2d_layer_call_and_return_conditional_losses_58571802 
conv2d/StatefulPartitionedCallР
leaky_re_lu_4/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         PP@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_leaky_re_lu_4_layer_call_and_return_conditional_losses_58571912
leaky_re_lu_4/PartitionedCallХ
dropout/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         PP@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_58574182!
dropout/StatefulPartitionedCall┼
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0conv2d_1_5857470conv2d_1_5857472*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ((А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_1_layer_call_and_return_conditional_losses_58572102"
 conv2d_1/StatefulPartitionedCallУ
leaky_re_lu_5/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ((А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_leaky_re_lu_5_layer_call_and_return_conditional_losses_58572212
leaky_re_lu_5/PartitionedCall╛
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_5/PartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ((А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_58573792#
!dropout_1/StatefulPartitionedCall╟
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0conv2d_2_5857477conv2d_2_5857479*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_2_layer_call_and_return_conditional_losses_58572402"
 conv2d_2/StatefulPartitionedCallУ
leaky_re_lu_6/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_leaky_re_lu_6_layer_call_and_return_conditional_losses_58572512
leaky_re_lu_6/PartitionedCall└
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_6/PartitionedCall:output:0"^dropout_1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dropout_2_layer_call_and_return_conditional_losses_58573402#
!dropout_2/StatefulPartitionedCall√
flatten/PartitionedCallPartitionedCall*dropout_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         Аа* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_58572662
flatten/PartitionedCallп
dense_1/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_1_5857485dense_1_5857487*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_58572782!
dense_1/StatefulPartitionedCallя
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         аа: : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall:Y U
1
_output_shapes
:         аа
 
_user_specified_nameinputs
щ	
т
.__inference_sequential_1_layer_call_fn_5857531
conv2d_input!
unknown:@
	unknown_0:@$
	unknown_1:@А
	unknown_2:	А%
	unknown_3:АА
	unknown_4:	А
	unknown_5:
Аа
	unknown_6:
identityИвStatefulPartitionedCall╨
StatefulPartitionedCallStatefulPartitionedCallconv2d_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_sequential_1_layer_call_and_return_conditional_losses_58574912
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         аа: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
1
_output_shapes
:         аа
&
_user_specified_nameconv2d_input
╝

Б
E__inference_conv2d_2_layer_call_and_return_conditional_losses_5857873

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2	
BiasAddЮ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         ((А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         ((А
 
_user_specified_nameinputs
ы
K
/__inference_leaky_re_lu_4_layer_call_fn_5857780

inputs
identity╙
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         PP@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_leaky_re_lu_4_layer_call_and_return_conditional_losses_58571912
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         PP@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         PP@:W S
/
_output_shapes
:         PP@
 
_user_specified_nameinputs
Э
f
J__inference_leaky_re_lu_4_layer_call_and_return_conditional_losses_5857191

inputs
identityl
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:         PP@*
alpha%ЪЩЩ>2
	LeakyRelus
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:         PP@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         PP@:W S
/
_output_shapes
:         PP@
 
_user_specified_nameinputs
Ў
e
F__inference_dropout_1_layer_call_and_return_conditional_losses_5857853

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?2
dropout/Const|
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:         ((А2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╜
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:         ((А*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>2
dropout/GreaterEqual/y╟
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         ((А2
dropout/GreaterEqualИ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:         ((А2
dropout/CastГ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:         ((А2
dropout/Mul_1n
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:         ((А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ((А:X T
0
_output_shapes
:         ((А
 
_user_specified_nameinputs
б
f
J__inference_leaky_re_lu_6_layer_call_and_return_conditional_losses_5857887

inputs
identitym
	LeakyRelu	LeakyReluinputs*0
_output_shapes
:         А*
alpha%ЪЩЩ>2
	LeakyRelut
IdentityIdentityLeakyRelu:activations:0*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╣	
┘
%__inference_signature_wrapper_5857616
conv2d_input!
unknown:@
	unknown_0:@$
	unknown_1:@А
	unknown_2:	А%
	unknown_3:АА
	unknown_4:	А
	unknown_5:
Аа
	unknown_6:
identityИвStatefulPartitionedCallй
StatefulPartitionedCallStatefulPartitionedCallconv2d_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *+
f&R$
"__inference__wrapped_model_58571632
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         аа: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
1
_output_shapes
:         аа
&
_user_specified_nameconv2d_input
╚
Э
(__inference_conv2d_layer_call_fn_5857770

inputs!
unknown:@
	unknown_0:@
identityИвStatefulPartitionedCall■
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         PP@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_conv2d_layer_call_and_return_conditional_losses_58571802
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         PP@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         аа: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         аа
 
_user_specified_nameinputs
╫	
▄
.__inference_sequential_1_layer_call_fn_5857730

inputs!
unknown:@
	unknown_0:@$
	unknown_1:@А
	unknown_2:	А%
	unknown_3:АА
	unknown_4:	А
	unknown_5:
Аа
	unknown_6:
identityИвStatefulPartitionedCall╩
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_sequential_1_layer_call_and_return_conditional_losses_58572852
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         аа: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         аа
 
_user_specified_nameinputs
ь
c
D__inference_dropout_layer_call_and_return_conditional_losses_5857418

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:         PP@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╝
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:         PP@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>2
dropout/GreaterEqual/y╞
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         PP@2
dropout/GreaterEqualЗ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:         PP@2
dropout/CastВ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:         PP@2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:         PP@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         PP@:W S
/
_output_shapes
:         PP@
 
_user_specified_nameinputs
ъ
`
D__inference_flatten_layer_call_and_return_conditional_losses_5857925

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"     Р 2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:         Аа2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:         Аа2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
б
f
J__inference_leaky_re_lu_5_layer_call_and_return_conditional_losses_5857831

inputs
identitym
	LeakyRelu	LeakyReluinputs*0
_output_shapes
:         ((А*
alpha%ЪЩЩ>2
	LeakyRelut
IdentityIdentityLeakyRelu:activations:0*
T0*0
_output_shapes
:         ((А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ((А:X T
0
_output_shapes
:         ((А
 
_user_specified_nameinputs
я
K
/__inference_leaky_re_lu_6_layer_call_fn_5857892

inputs
identity╘
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_leaky_re_lu_6_layer_call_and_return_conditional_losses_58572512
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
М
▀
 __inference__traced_save_5857996
file_prefix,
(savev2_conv2d_kernel_read_readvariableop*
&savev2_conv2d_bias_read_readvariableop.
*savev2_conv2d_1_kernel_read_readvariableop,
(savev2_conv2d_1_bias_read_readvariableop.
*savev2_conv2d_2_kernel_read_readvariableop,
(savev2_conv2d_2_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop
savev2_const

identity_1ИвMergeV2CheckpointsП
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1Л
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shardж
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename┘
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*ы
valueсB▐	B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesЪ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*%
valueB	B B B B B B B B B 2
SaveV2/shape_and_slicesФ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0(savev2_conv2d_kernel_read_readvariableop&savev2_conv2d_bias_read_readvariableop*savev2_conv2d_1_kernel_read_readvariableop(savev2_conv2d_1_bias_read_readvariableop*savev2_conv2d_2_kernel_read_readvariableop(savev2_conv2d_2_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2	2
SaveV2║
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesб
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*v
_input_shapese
c: :@:@:@А:А:АА:А:
Аа:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:@: 

_output_shapes
:@:-)
'
_output_shapes
:@А:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:&"
 
_output_shapes
:
Аа: 

_output_shapes
::	

_output_shapes
: 
│

№
C__inference_conv2d_layer_call_and_return_conditional_losses_5857180

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOpг
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         PP@*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         PP@2	
BiasAddЭ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         PP@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         аа: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         аа
 
_user_specified_nameinputs
╫K
╙
I__inference_sequential_1_layer_call_and_return_conditional_losses_5857709

inputs?
%conv2d_conv2d_readvariableop_resource:@4
&conv2d_biasadd_readvariableop_resource:@B
'conv2d_1_conv2d_readvariableop_resource:@А7
(conv2d_1_biasadd_readvariableop_resource:	АC
'conv2d_2_conv2d_readvariableop_resource:АА7
(conv2d_2_biasadd_readvariableop_resource:	А:
&dense_1_matmul_readvariableop_resource:
Аа5
'dense_1_biasadd_readvariableop_resource:
identityИвconv2d/BiasAdd/ReadVariableOpвconv2d/Conv2D/ReadVariableOpвconv2d_1/BiasAdd/ReadVariableOpвconv2d_1/Conv2D/ReadVariableOpвconv2d_2/BiasAdd/ReadVariableOpвconv2d_2/Conv2D/ReadVariableOpвdense_1/BiasAdd/ReadVariableOpвdense_1/MatMul/ReadVariableOpк
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
conv2d/Conv2D/ReadVariableOp╕
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         PP@*
paddingSAME*
strides
2
conv2d/Conv2Dб
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
conv2d/BiasAdd/ReadVariableOpд
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         PP@2
conv2d/BiasAddЩ
leaky_re_lu_4/LeakyRelu	LeakyReluconv2d/BiasAdd:output:0*/
_output_shapes
:         PP@*
alpha%ЪЩЩ>2
leaky_re_lu_4/LeakyRelus
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?2
dropout/dropout/Const▓
dropout/dropout/MulMul%leaky_re_lu_4/LeakyRelu:activations:0dropout/dropout/Const:output:0*
T0*/
_output_shapes
:         PP@2
dropout/dropout/MulГ
dropout/dropout/ShapeShape%leaky_re_lu_4/LeakyRelu:activations:0*
T0*
_output_shapes
:2
dropout/dropout/Shape╘
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*/
_output_shapes
:         PP@*
dtype02.
,dropout/dropout/random_uniform/RandomUniformЕ
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>2 
dropout/dropout/GreaterEqual/yц
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         PP@2
dropout/dropout/GreaterEqualЯ
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:         PP@2
dropout/dropout/Castв
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*/
_output_shapes
:         PP@2
dropout/dropout/Mul_1▒
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype02 
conv2d_1/Conv2D/ReadVariableOp╥
conv2d_1/Conv2DConv2Ddropout/dropout/Mul_1:z:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ((А*
paddingSAME*
strides
2
conv2d_1/Conv2Dи
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02!
conv2d_1/BiasAdd/ReadVariableOpн
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ((А2
conv2d_1/BiasAddЬ
leaky_re_lu_5/LeakyRelu	LeakyReluconv2d_1/BiasAdd:output:0*0
_output_shapes
:         ((А*
alpha%ЪЩЩ>2
leaky_re_lu_5/LeakyReluw
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?2
dropout_1/dropout/Const╣
dropout_1/dropout/MulMul%leaky_re_lu_5/LeakyRelu:activations:0 dropout_1/dropout/Const:output:0*
T0*0
_output_shapes
:         ((А2
dropout_1/dropout/MulЗ
dropout_1/dropout/ShapeShape%leaky_re_lu_5/LeakyRelu:activations:0*
T0*
_output_shapes
:2
dropout_1/dropout/Shape█
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*0
_output_shapes
:         ((А*
dtype020
.dropout_1/dropout/random_uniform/RandomUniformЙ
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>2"
 dropout_1/dropout/GreaterEqual/yя
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         ((А2 
dropout_1/dropout/GreaterEqualж
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:         ((А2
dropout_1/dropout/Castл
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*0
_output_shapes
:         ((А2
dropout_1/dropout/Mul_1▓
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02 
conv2d_2/Conv2D/ReadVariableOp╘
conv2d_2/Conv2DConv2Ddropout_1/dropout/Mul_1:z:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
conv2d_2/Conv2Dи
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02!
conv2d_2/BiasAdd/ReadVariableOpн
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2
conv2d_2/BiasAddЬ
leaky_re_lu_6/LeakyRelu	LeakyReluconv2d_2/BiasAdd:output:0*0
_output_shapes
:         А*
alpha%ЪЩЩ>2
leaky_re_lu_6/LeakyReluw
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?2
dropout_2/dropout/Const╣
dropout_2/dropout/MulMul%leaky_re_lu_6/LeakyRelu:activations:0 dropout_2/dropout/Const:output:0*
T0*0
_output_shapes
:         А2
dropout_2/dropout/MulЗ
dropout_2/dropout/ShapeShape%leaky_re_lu_6/LeakyRelu:activations:0*
T0*
_output_shapes
:2
dropout_2/dropout/Shape█
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype020
.dropout_2/dropout/random_uniform/RandomUniformЙ
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>2"
 dropout_2/dropout/GreaterEqual/yя
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         А2 
dropout_2/dropout/GreaterEqualж
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:         А2
dropout_2/dropout/Castл
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*0
_output_shapes
:         А2
dropout_2/dropout/Mul_1o
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"     Р 2
flatten/ConstЦ
flatten/ReshapeReshapedropout_2/dropout/Mul_1:z:0flatten/Const:output:0*
T0*)
_output_shapes
:         Аа2
flatten/Reshapeз
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
Аа*
dtype02
dense_1/MatMul/ReadVariableOpЭ
dense_1/MatMulMatMulflatten/Reshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_1/MatMulд
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOpб
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_1/BiasAddЄ
IdentityIdentitydense_1/BiasAdd:output:0^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         аа: : : : : : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:Y U
1
_output_shapes
:         аа
 
_user_specified_nameinputs
╒
E
)__inference_flatten_layer_call_fn_5857930

inputs
identity╟
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         Аа* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_58572662
PartitionedCalln
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:         Аа2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╪	
ў
D__inference_dense_1_layer_call_and_return_conditional_losses_5857940

inputs2
matmul_readvariableop_resource:
Аа-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
Аа*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAddХ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:         Аа: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:         Аа
 
_user_specified_nameinputs
Ў
e
F__inference_dropout_2_layer_call_and_return_conditional_losses_5857909

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?2
dropout/Const|
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:         А2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╜
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>2
dropout/GreaterEqual/y╟
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         А2
dropout/GreaterEqualИ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:         А2
dropout/CastГ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:         А2
dropout/Mul_1n
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
б
f
J__inference_leaky_re_lu_5_layer_call_and_return_conditional_losses_5857221

inputs
identitym
	LeakyRelu	LeakyReluinputs*0
_output_shapes
:         ((А*
alpha%ЪЩЩ>2
	LeakyRelut
IdentityIdentityLeakyRelu:activations:0*
T0*0
_output_shapes
:         ((А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ((А:X T
0
_output_shapes
:         ((А
 
_user_specified_nameinputs
·.
╙
I__inference_sequential_1_layer_call_and_return_conditional_losses_5857652

inputs?
%conv2d_conv2d_readvariableop_resource:@4
&conv2d_biasadd_readvariableop_resource:@B
'conv2d_1_conv2d_readvariableop_resource:@А7
(conv2d_1_biasadd_readvariableop_resource:	АC
'conv2d_2_conv2d_readvariableop_resource:АА7
(conv2d_2_biasadd_readvariableop_resource:	А:
&dense_1_matmul_readvariableop_resource:
Аа5
'dense_1_biasadd_readvariableop_resource:
identityИвconv2d/BiasAdd/ReadVariableOpвconv2d/Conv2D/ReadVariableOpвconv2d_1/BiasAdd/ReadVariableOpвconv2d_1/Conv2D/ReadVariableOpвconv2d_2/BiasAdd/ReadVariableOpвconv2d_2/Conv2D/ReadVariableOpвdense_1/BiasAdd/ReadVariableOpвdense_1/MatMul/ReadVariableOpк
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
conv2d/Conv2D/ReadVariableOp╕
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         PP@*
paddingSAME*
strides
2
conv2d/Conv2Dб
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
conv2d/BiasAdd/ReadVariableOpд
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         PP@2
conv2d/BiasAddЩ
leaky_re_lu_4/LeakyRelu	LeakyReluconv2d/BiasAdd:output:0*/
_output_shapes
:         PP@*
alpha%ЪЩЩ>2
leaky_re_lu_4/LeakyReluС
dropout/IdentityIdentity%leaky_re_lu_4/LeakyRelu:activations:0*
T0*/
_output_shapes
:         PP@2
dropout/Identity▒
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype02 
conv2d_1/Conv2D/ReadVariableOp╥
conv2d_1/Conv2DConv2Ddropout/Identity:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ((А*
paddingSAME*
strides
2
conv2d_1/Conv2Dи
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02!
conv2d_1/BiasAdd/ReadVariableOpн
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ((А2
conv2d_1/BiasAddЬ
leaky_re_lu_5/LeakyRelu	LeakyReluconv2d_1/BiasAdd:output:0*0
_output_shapes
:         ((А*
alpha%ЪЩЩ>2
leaky_re_lu_5/LeakyReluЦ
dropout_1/IdentityIdentity%leaky_re_lu_5/LeakyRelu:activations:0*
T0*0
_output_shapes
:         ((А2
dropout_1/Identity▓
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02 
conv2d_2/Conv2D/ReadVariableOp╘
conv2d_2/Conv2DConv2Ddropout_1/Identity:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
conv2d_2/Conv2Dи
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02!
conv2d_2/BiasAdd/ReadVariableOpн
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2
conv2d_2/BiasAddЬ
leaky_re_lu_6/LeakyRelu	LeakyReluconv2d_2/BiasAdd:output:0*0
_output_shapes
:         А*
alpha%ЪЩЩ>2
leaky_re_lu_6/LeakyReluЦ
dropout_2/IdentityIdentity%leaky_re_lu_6/LeakyRelu:activations:0*
T0*0
_output_shapes
:         А2
dropout_2/Identityo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"     Р 2
flatten/ConstЦ
flatten/ReshapeReshapedropout_2/Identity:output:0flatten/Const:output:0*
T0*)
_output_shapes
:         Аа2
flatten/Reshapeз
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
Аа*
dtype02
dense_1/MatMul/ReadVariableOpЭ
dense_1/MatMulMatMulflatten/Reshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_1/MatMulд
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOpб
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_1/BiasAddЄ
IdentityIdentitydense_1/BiasAdd:output:0^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         аа: : : : : : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:Y U
1
_output_shapes
:         аа
 
_user_specified_nameinputs
П2
К
I__inference_sequential_1_layer_call_and_return_conditional_losses_5857593
conv2d_input(
conv2d_5857565:@
conv2d_5857567:@+
conv2d_1_5857572:@А
conv2d_1_5857574:	А,
conv2d_2_5857579:АА
conv2d_2_5857581:	А#
dense_1_5857587:
Аа
dense_1_5857589:
identityИвconv2d/StatefulPartitionedCallв conv2d_1/StatefulPartitionedCallв conv2d_2/StatefulPartitionedCallвdense_1/StatefulPartitionedCallвdropout/StatefulPartitionedCallв!dropout_1/StatefulPartitionedCallв!dropout_2/StatefulPartitionedCallЮ
conv2d/StatefulPartitionedCallStatefulPartitionedCallconv2d_inputconv2d_5857565conv2d_5857567*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         PP@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_conv2d_layer_call_and_return_conditional_losses_58571802 
conv2d/StatefulPartitionedCallР
leaky_re_lu_4/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         PP@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_leaky_re_lu_4_layer_call_and_return_conditional_losses_58571912
leaky_re_lu_4/PartitionedCallХ
dropout/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         PP@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_58574182!
dropout/StatefulPartitionedCall┼
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0conv2d_1_5857572conv2d_1_5857574*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ((А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_1_layer_call_and_return_conditional_losses_58572102"
 conv2d_1/StatefulPartitionedCallУ
leaky_re_lu_5/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ((А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_leaky_re_lu_5_layer_call_and_return_conditional_losses_58572212
leaky_re_lu_5/PartitionedCall╛
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_5/PartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ((А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_58573792#
!dropout_1/StatefulPartitionedCall╟
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0conv2d_2_5857579conv2d_2_5857581*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_2_layer_call_and_return_conditional_losses_58572402"
 conv2d_2/StatefulPartitionedCallУ
leaky_re_lu_6/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_leaky_re_lu_6_layer_call_and_return_conditional_losses_58572512
leaky_re_lu_6/PartitionedCall└
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_6/PartitionedCall:output:0"^dropout_1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dropout_2_layer_call_and_return_conditional_losses_58573402#
!dropout_2/StatefulPartitionedCall√
flatten/PartitionedCallPartitionedCall*dropout_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         Аа* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_58572662
flatten/PartitionedCallп
dense_1/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_1_5857587dense_1_5857589*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_58572782!
dense_1/StatefulPartitionedCallя
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         аа: : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall:_ [
1
_output_shapes
:         аа
&
_user_specified_nameconv2d_input
ч
G
+__inference_dropout_1_layer_call_fn_5857858

inputs
identity╨
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ((А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_58572282
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         ((А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ((А:X T
0
_output_shapes
:         ((А
 
_user_specified_nameinputs
Ч
d
F__inference_dropout_2_layer_call_and_return_conditional_losses_5857897

inputs

identity_1c
IdentityIdentityinputs*
T0*0
_output_shapes
:         А2

Identityr

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:         А2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╧
в
*__inference_conv2d_2_layer_call_fn_5857882

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCallБ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_2_layer_call_and_return_conditional_losses_58572402
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         ((А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         ((А
 
_user_specified_nameinputs
▀
E
)__inference_dropout_layer_call_fn_5857802

inputs
identity═
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         PP@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_58571982
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         PP@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         PP@:W S
/
_output_shapes
:         PP@
 
_user_specified_nameinputs
╕

А
E__inference_conv2d_1_layer_call_and_return_conditional_losses_5857817

inputs9
conv2d_readvariableop_resource:@А.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЦ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ((А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ((А2	
BiasAddЮ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         ((А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         PP@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         PP@
 
_user_specified_nameinputs"╠L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*╛
serving_defaultк
O
conv2d_input?
serving_default_conv2d_input:0         аа;
dense_10
StatefulPartitionedCall:0         tensorflow/serving/predict:д╕
ЩH
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
	layer-8

layer-9
layer_with_weights-3
layer-10

signatures
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
+Н&call_and_return_all_conditional_losses
О__call__
П_default_save_signature"╜D
_tf_keras_sequentialЮD{"name": "sequential_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 160, 160, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 160, 160, 3]}, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_4", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}, {"class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_1", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_5", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}, {"class_name": "Dropout", "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_2", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_6", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}, {"class_name": "Dropout", "config": {"name": "dropout_2", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 20, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}, "shared_object_id": 21}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 160, 160, 3]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 160, 160, 3]}, "float32", "conv2d_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 160, 160, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_input"}, "shared_object_id": 0}, {"class_name": "Conv2D", "config": {"name": "conv2d", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 160, 160, 3]}, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_4", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "shared_object_id": 4}, {"class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "shared_object_id": 5}, {"class_name": "Conv2D", "config": {"name": "conv2d_1", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 8}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_5", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "shared_object_id": 9}, {"class_name": "Dropout", "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "shared_object_id": 10}, {"class_name": "Conv2D", "config": {"name": "conv2d_2", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 13}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_6", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "shared_object_id": 14}, {"class_name": "Dropout", "config": {"name": "dropout_2", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "shared_object_id": 15}, {"class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 16}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 17}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 18}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 19}]}}}
∙

kernel
bias
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
+Р&call_and_return_all_conditional_losses
С__call__"н

_tf_keras_layerУ
{"name": "conv2d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 160, 160, 3]}, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 160, 160, 3]}, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}, "shared_object_id": 21}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 160, 160, 3]}}
Ь
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
+Т&call_and_return_all_conditional_losses
У__call__"ц
_tf_keras_layer╠{"name": "leaky_re_lu_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_4", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "shared_object_id": 4}
Я
#_self_saveable_object_factories
	variables
 trainable_variables
!regularization_losses
"	keras_api
+Ф&call_and_return_all_conditional_losses
Х__call__"щ
_tf_keras_layer╧{"name": "dropout", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "shared_object_id": 5}
∙


#kernel
$bias
#%_self_saveable_object_factories
&	variables
'trainable_variables
(regularization_losses
)	keras_api
+Ц&call_and_return_all_conditional_losses
Ч__call__"н	
_tf_keras_layerУ	{"name": "conv2d_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_1", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 8, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 22}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 80, 80, 64]}}
Ь
#*_self_saveable_object_factories
+	variables
,trainable_variables
-regularization_losses
.	keras_api
+Ш&call_and_return_all_conditional_losses
Щ__call__"ц
_tf_keras_layer╠{"name": "leaky_re_lu_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_5", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "shared_object_id": 9}
д
#/_self_saveable_object_factories
0	variables
1trainable_variables
2regularization_losses
3	keras_api
+Ъ&call_and_return_all_conditional_losses
Ы__call__"ю
_tf_keras_layer╘{"name": "dropout_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "shared_object_id": 10}
■


4kernel
5bias
#6_self_saveable_object_factories
7	variables
8trainable_variables
9regularization_losses
:	keras_api
+Ь&call_and_return_all_conditional_losses
Э__call__"▓	
_tf_keras_layerШ	{"name": "conv2d_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_2", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 13, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}, "shared_object_id": 23}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 40, 40, 128]}}
Э
#;_self_saveable_object_factories
<	variables
=trainable_variables
>regularization_losses
?	keras_api
+Ю&call_and_return_all_conditional_losses
Я__call__"ч
_tf_keras_layer═{"name": "leaky_re_lu_6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_6", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "shared_object_id": 14}
д
#@_self_saveable_object_factories
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
+а&call_and_return_all_conditional_losses
б__call__"ю
_tf_keras_layer╘{"name": "dropout_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_2", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "shared_object_id": 15}
╣
#E_self_saveable_object_factories
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
+в&call_and_return_all_conditional_losses
г__call__"Г
_tf_keras_layerщ{"name": "flatten", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 16, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 24}}
А	

Jkernel
Kbias
#L_self_saveable_object_factories
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
+д&call_and_return_all_conditional_losses
е__call__"┤
_tf_keras_layerЪ{"name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 17}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 18}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 19, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 102400}}, "shared_object_id": 25}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 102400]}}
-
жserving_default"
signature_map
 "
trackable_dict_wrapper
X
0
1
#2
$3
44
55
J6
K7"
trackable_list_wrapper
X
0
1
#2
$3
44
55
J6
K7"
trackable_list_wrapper
 "
trackable_list_wrapper
╬
Qlayer_metrics
	variables
trainable_variables
Rnon_trainable_variables
Slayer_regularization_losses
Tmetrics
regularization_losses

Ulayers
О__call__
П_default_save_signature
+Н&call_and_return_all_conditional_losses
'Н"call_and_return_conditional_losses"
_generic_user_object
':%@2conv2d/kernel
:@2conv2d/bias
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
░
Vlayer_metrics
	variables
trainable_variables
Wnon_trainable_variables
Xlayer_regularization_losses
Ymetrics
regularization_losses

Zlayers
С__call__
+Р&call_and_return_all_conditional_losses
'Р"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░
[layer_metrics
	variables
trainable_variables
\non_trainable_variables
]layer_regularization_losses
^metrics
regularization_losses

_layers
У__call__
+Т&call_and_return_all_conditional_losses
'Т"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░
`layer_metrics
	variables
 trainable_variables
anon_trainable_variables
blayer_regularization_losses
cmetrics
!regularization_losses

dlayers
Х__call__
+Ф&call_and_return_all_conditional_losses
'Ф"call_and_return_conditional_losses"
_generic_user_object
*:(@А2conv2d_1/kernel
:А2conv2d_1/bias
 "
trackable_dict_wrapper
.
#0
$1"
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
 "
trackable_list_wrapper
░
elayer_metrics
&	variables
'trainable_variables
fnon_trainable_variables
glayer_regularization_losses
hmetrics
(regularization_losses

ilayers
Ч__call__
+Ц&call_and_return_all_conditional_losses
'Ц"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░
jlayer_metrics
+	variables
,trainable_variables
knon_trainable_variables
llayer_regularization_losses
mmetrics
-regularization_losses

nlayers
Щ__call__
+Ш&call_and_return_all_conditional_losses
'Ш"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░
olayer_metrics
0	variables
1trainable_variables
pnon_trainable_variables
qlayer_regularization_losses
rmetrics
2regularization_losses

slayers
Ы__call__
+Ъ&call_and_return_all_conditional_losses
'Ъ"call_and_return_conditional_losses"
_generic_user_object
+:)АА2conv2d_2/kernel
:А2conv2d_2/bias
 "
trackable_dict_wrapper
.
40
51"
trackable_list_wrapper
.
40
51"
trackable_list_wrapper
 "
trackable_list_wrapper
░
tlayer_metrics
7	variables
8trainable_variables
unon_trainable_variables
vlayer_regularization_losses
wmetrics
9regularization_losses

xlayers
Э__call__
+Ь&call_and_return_all_conditional_losses
'Ь"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░
ylayer_metrics
<	variables
=trainable_variables
znon_trainable_variables
{layer_regularization_losses
|metrics
>regularization_losses

}layers
Я__call__
+Ю&call_and_return_all_conditional_losses
'Ю"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
│
~layer_metrics
A	variables
Btrainable_variables
non_trainable_variables
 Аlayer_regularization_losses
Бmetrics
Cregularization_losses
Вlayers
б__call__
+а&call_and_return_all_conditional_losses
'а"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
Гlayer_metrics
F	variables
Gtrainable_variables
Дnon_trainable_variables
 Еlayer_regularization_losses
Жmetrics
Hregularization_losses
Зlayers
г__call__
+в&call_and_return_all_conditional_losses
'в"call_and_return_conditional_losses"
_generic_user_object
": 
Аа2dense_1/kernel
:2dense_1/bias
 "
trackable_dict_wrapper
.
J0
K1"
trackable_list_wrapper
.
J0
K1"
trackable_list_wrapper
 "
trackable_list_wrapper
╡
Иlayer_metrics
M	variables
Ntrainable_variables
Йnon_trainable_variables
 Кlayer_regularization_losses
Лmetrics
Oregularization_losses
Мlayers
е__call__
+д&call_and_return_all_conditional_losses
'д"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
n
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
10"
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є2я
I__inference_sequential_1_layer_call_and_return_conditional_losses_5857652
I__inference_sequential_1_layer_call_and_return_conditional_losses_5857709
I__inference_sequential_1_layer_call_and_return_conditional_losses_5857562
I__inference_sequential_1_layer_call_and_return_conditional_losses_5857593└
╖▓│
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

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
Ж2Г
.__inference_sequential_1_layer_call_fn_5857304
.__inference_sequential_1_layer_call_fn_5857730
.__inference_sequential_1_layer_call_fn_5857751
.__inference_sequential_1_layer_call_fn_5857531└
╖▓│
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

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
я2ь
"__inference__wrapped_model_5857163┼
Л▓З
FullArgSpec
argsЪ 
varargsjargs
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *5в2
0К-
conv2d_input         аа
э2ъ
C__inference_conv2d_layer_call_and_return_conditional_losses_5857761в
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
╥2╧
(__inference_conv2d_layer_call_fn_5857770в
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
Ї2ё
J__inference_leaky_re_lu_4_layer_call_and_return_conditional_losses_5857775в
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
┘2╓
/__inference_leaky_re_lu_4_layer_call_fn_5857780в
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
╞2├
D__inference_dropout_layer_call_and_return_conditional_losses_5857785
D__inference_dropout_layer_call_and_return_conditional_losses_5857797┤
л▓з
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

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
Р2Н
)__inference_dropout_layer_call_fn_5857802
)__inference_dropout_layer_call_fn_5857807┤
л▓з
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

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
я2ь
E__inference_conv2d_1_layer_call_and_return_conditional_losses_5857817в
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
╘2╤
*__inference_conv2d_1_layer_call_fn_5857826в
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
Ї2ё
J__inference_leaky_re_lu_5_layer_call_and_return_conditional_losses_5857831в
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
┘2╓
/__inference_leaky_re_lu_5_layer_call_fn_5857836в
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
╩2╟
F__inference_dropout_1_layer_call_and_return_conditional_losses_5857841
F__inference_dropout_1_layer_call_and_return_conditional_losses_5857853┤
л▓з
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

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
Ф2С
+__inference_dropout_1_layer_call_fn_5857858
+__inference_dropout_1_layer_call_fn_5857863┤
л▓з
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

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
я2ь
E__inference_conv2d_2_layer_call_and_return_conditional_losses_5857873в
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
╘2╤
*__inference_conv2d_2_layer_call_fn_5857882в
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
Ї2ё
J__inference_leaky_re_lu_6_layer_call_and_return_conditional_losses_5857887в
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
┘2╓
/__inference_leaky_re_lu_6_layer_call_fn_5857892в
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
╩2╟
F__inference_dropout_2_layer_call_and_return_conditional_losses_5857897
F__inference_dropout_2_layer_call_and_return_conditional_losses_5857909┤
л▓з
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

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
Ф2С
+__inference_dropout_2_layer_call_fn_5857914
+__inference_dropout_2_layer_call_fn_5857919┤
л▓з
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

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ю2ы
D__inference_flatten_layer_call_and_return_conditional_losses_5857925в
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
╙2╨
)__inference_flatten_layer_call_fn_5857930в
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
ю2ы
D__inference_dense_1_layer_call_and_return_conditional_losses_5857940в
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
╙2╨
)__inference_dense_1_layer_call_fn_5857949в
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
╤B╬
%__inference_signature_wrapper_5857616conv2d_input"Ф
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
 д
"__inference__wrapped_model_5857163~#$45JK?в<
5в2
0К-
conv2d_input         аа
к "1к.
,
dense_1!К
dense_1         ╢
E__inference_conv2d_1_layer_call_and_return_conditional_losses_5857817m#$7в4
-в*
(К%
inputs         PP@
к ".в+
$К!
0         ((А
Ъ О
*__inference_conv2d_1_layer_call_fn_5857826`#$7в4
-в*
(К%
inputs         PP@
к "!К         ((А╖
E__inference_conv2d_2_layer_call_and_return_conditional_losses_5857873n458в5
.в+
)К&
inputs         ((А
к ".в+
$К!
0         А
Ъ П
*__inference_conv2d_2_layer_call_fn_5857882a458в5
.в+
)К&
inputs         ((А
к "!К         А╡
C__inference_conv2d_layer_call_and_return_conditional_losses_5857761n9в6
/в,
*К'
inputs         аа
к "-в*
#К 
0         PP@
Ъ Н
(__inference_conv2d_layer_call_fn_5857770a9в6
/в,
*К'
inputs         аа
к " К         PP@ж
D__inference_dense_1_layer_call_and_return_conditional_losses_5857940^JK1в.
'в$
"К
inputs         Аа
к "%в"
К
0         
Ъ ~
)__inference_dense_1_layer_call_fn_5857949QJK1в.
'в$
"К
inputs         Аа
к "К         ╕
F__inference_dropout_1_layer_call_and_return_conditional_losses_5857841n<в9
2в/
)К&
inputs         ((А
p 
к ".в+
$К!
0         ((А
Ъ ╕
F__inference_dropout_1_layer_call_and_return_conditional_losses_5857853n<в9
2в/
)К&
inputs         ((А
p
к ".в+
$К!
0         ((А
Ъ Р
+__inference_dropout_1_layer_call_fn_5857858a<в9
2в/
)К&
inputs         ((А
p 
к "!К         ((АР
+__inference_dropout_1_layer_call_fn_5857863a<в9
2в/
)К&
inputs         ((А
p
к "!К         ((А╕
F__inference_dropout_2_layer_call_and_return_conditional_losses_5857897n<в9
2в/
)К&
inputs         А
p 
к ".в+
$К!
0         А
Ъ ╕
F__inference_dropout_2_layer_call_and_return_conditional_losses_5857909n<в9
2в/
)К&
inputs         А
p
к ".в+
$К!
0         А
Ъ Р
+__inference_dropout_2_layer_call_fn_5857914a<в9
2в/
)К&
inputs         А
p 
к "!К         АР
+__inference_dropout_2_layer_call_fn_5857919a<в9
2в/
)К&
inputs         А
p
к "!К         А┤
D__inference_dropout_layer_call_and_return_conditional_losses_5857785l;в8
1в.
(К%
inputs         PP@
p 
к "-в*
#К 
0         PP@
Ъ ┤
D__inference_dropout_layer_call_and_return_conditional_losses_5857797l;в8
1в.
(К%
inputs         PP@
p
к "-в*
#К 
0         PP@
Ъ М
)__inference_dropout_layer_call_fn_5857802_;в8
1в.
(К%
inputs         PP@
p 
к " К         PP@М
)__inference_dropout_layer_call_fn_5857807_;в8
1в.
(К%
inputs         PP@
p
к " К         PP@л
D__inference_flatten_layer_call_and_return_conditional_losses_5857925c8в5
.в+
)К&
inputs         А
к "'в$
К
0         Аа
Ъ Г
)__inference_flatten_layer_call_fn_5857930V8в5
.в+
)К&
inputs         А
к "К         Аа╢
J__inference_leaky_re_lu_4_layer_call_and_return_conditional_losses_5857775h7в4
-в*
(К%
inputs         PP@
к "-в*
#К 
0         PP@
Ъ О
/__inference_leaky_re_lu_4_layer_call_fn_5857780[7в4
-в*
(К%
inputs         PP@
к " К         PP@╕
J__inference_leaky_re_lu_5_layer_call_and_return_conditional_losses_5857831j8в5
.в+
)К&
inputs         ((А
к ".в+
$К!
0         ((А
Ъ Р
/__inference_leaky_re_lu_5_layer_call_fn_5857836]8в5
.в+
)К&
inputs         ((А
к "!К         ((А╕
J__inference_leaky_re_lu_6_layer_call_and_return_conditional_losses_5857887j8в5
.в+
)К&
inputs         А
к ".в+
$К!
0         А
Ъ Р
/__inference_leaky_re_lu_6_layer_call_fn_5857892]8в5
.в+
)К&
inputs         А
к "!К         А╟
I__inference_sequential_1_layer_call_and_return_conditional_losses_5857562z#$45JKGвD
=в:
0К-
conv2d_input         аа
p 

 
к "%в"
К
0         
Ъ ╟
I__inference_sequential_1_layer_call_and_return_conditional_losses_5857593z#$45JKGвD
=в:
0К-
conv2d_input         аа
p

 
к "%в"
К
0         
Ъ ┴
I__inference_sequential_1_layer_call_and_return_conditional_losses_5857652t#$45JKAв>
7в4
*К'
inputs         аа
p 

 
к "%в"
К
0         
Ъ ┴
I__inference_sequential_1_layer_call_and_return_conditional_losses_5857709t#$45JKAв>
7в4
*К'
inputs         аа
p

 
к "%в"
К
0         
Ъ Я
.__inference_sequential_1_layer_call_fn_5857304m#$45JKGвD
=в:
0К-
conv2d_input         аа
p 

 
к "К         Я
.__inference_sequential_1_layer_call_fn_5857531m#$45JKGвD
=в:
0К-
conv2d_input         аа
p

 
к "К         Щ
.__inference_sequential_1_layer_call_fn_5857730g#$45JKAв>
7в4
*К'
inputs         аа
p 

 
к "К         Щ
.__inference_sequential_1_layer_call_fn_5857751g#$45JKAв>
7в4
*К'
inputs         аа
p

 
к "К         ╕
%__inference_signature_wrapper_5857616О#$45JKOвL
в 
EкB
@
conv2d_input0К-
conv2d_input         аа"1к.
,
dense_1!К
dense_1         