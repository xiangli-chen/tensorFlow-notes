       ЃK"	   QТажAbrain.Event:251n[Ь     pїL	`X2QТажA"Ю
r
input/x-inputPlaceholder*
dtype0*
shape:џџџџџџџџџ*(
_output_shapes
:џџџџџџџџџ
h
input/y-inputPlaceholder*
dtype0	*
shape:џџџџџџџџџ*#
_output_shapes
:џџџџџџџџџ
t
input_reshape/Reshape/shapeConst*%
valueB"џџџџ         *
dtype0*
_output_shapes
:

input_reshape/ReshapeReshapeinput/x-inputinput_reshape/Reshape/shape*
T0*
Tshape0*/
_output_shapes
:џџџџџџџџџ
k
input_reshape/input/tagConst*$
valueB Binput_reshape/input*
dtype0*
_output_shapes
: 
Ї
input_reshape/inputImageSummaryinput_reshape/input/taginput_reshape/Reshape*

max_images
*
T0*
	bad_colorB:џ  џ*
_output_shapes
: 
t
input_1/x-inputPlaceholder*
dtype0*
shape:џџџџџџџџџ*(
_output_shapes
:џџџџџџџџџ
j
input_1/y-inputPlaceholder*
dtype0	*
shape:џџџџџџџџџ*#
_output_shapes
:џџџџџџџџџ
v
input_reshape_1/Reshape/shapeConst*%
valueB"џџџџ         *
dtype0*
_output_shapes
:

input_reshape_1/ReshapeReshapeinput_1/x-inputinput_reshape_1/Reshape/shape*
T0*
Tshape0*/
_output_shapes
:џџџџџџџџџ
o
input_reshape_1/input/tagConst*&
valueB Binput_reshape_1/input*
dtype0*
_output_shapes
: 
­
input_reshape_1/inputImageSummaryinput_reshape_1/input/taginput_reshape_1/Reshape*

max_images
*
T0*
	bad_colorB:џ  џ*
_output_shapes
: 
v
%layer1/weights/truncated_normal/shapeConst*
valueB"  є  *
dtype0*
_output_shapes
:
i
$layer1/weights/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
k
&layer1/weights/truncated_normal/stddevConst*
valueB
 *ЭЬЬ=*
dtype0*
_output_shapes
: 
К
/layer1/weights/truncated_normal/TruncatedNormalTruncatedNormal%layer1/weights/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0* 
_output_shapes
:
є
Ў
#layer1/weights/truncated_normal/mulMul/layer1/weights/truncated_normal/TruncatedNormal&layer1/weights/truncated_normal/stddev*
T0* 
_output_shapes
:
є

layer1/weights/truncated_normalAdd#layer1/weights/truncated_normal/mul$layer1/weights/truncated_normal/mean*
T0* 
_output_shapes
:
є

layer1/weights/Variable
VariableV2*
shape:
є*
dtype0*
	container *
shared_name * 
_output_shapes
:
є
т
layer1/weights/Variable/AssignAssignlayer1/weights/Variablelayer1/weights/truncated_normal*
T0*
validate_shape(*
use_locking(**
_class 
loc:@layer1/weights/Variable* 
_output_shapes
:
є

layer1/weights/Variable/readIdentitylayer1/weights/Variable*
T0**
_class 
loc:@layer1/weights/Variable* 
_output_shapes
:
є
_
layer1/weights/summaries/RankConst*
value	B :*
dtype0*
_output_shapes
: 
f
$layer1/weights/summaries/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
f
$layer1/weights/summaries/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
К
layer1/weights/summaries/rangeRange$layer1/weights/summaries/range/startlayer1/weights/summaries/Rank$layer1/weights/summaries/range/delta*

Tidx0*
_output_shapes
:
Ё
layer1/weights/summaries/MeanMeanlayer1/weights/Variable/readlayer1/weights/summaries/range*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

"layer1/weights/summaries/mean/tagsConst*.
value%B# Blayer1/weights/summaries/mean*
dtype0*
_output_shapes
: 

layer1/weights/summaries/meanScalarSummary"layer1/weights/summaries/mean/tagslayer1/weights/summaries/Mean*
T0*
_output_shapes
: 

#layer1/weights/summaries/stddev/subSublayer1/weights/Variable/readlayer1/weights/summaries/Mean*
T0* 
_output_shapes
:
є

&layer1/weights/summaries/stddev/SquareSquare#layer1/weights/summaries/stddev/sub*
T0* 
_output_shapes
:
є
v
%layer1/weights/summaries/stddev/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
Й
$layer1/weights/summaries/stddev/MeanMean&layer1/weights/summaries/stddev/Square%layer1/weights/summaries/stddev/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
s
$layer1/weights/summaries/stddev/SqrtSqrt$layer1/weights/summaries/stddev/Mean*
T0*
_output_shapes
: 

&layer1/weights/summaries/stddev_1/tagsConst*2
value)B' B!layer1/weights/summaries/stddev_1*
dtype0*
_output_shapes
: 
Ё
!layer1/weights/summaries/stddev_1ScalarSummary&layer1/weights/summaries/stddev_1/tags$layer1/weights/summaries/stddev/Sqrt*
T0*
_output_shapes
: 
a
layer1/weights/summaries/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
h
&layer1/weights/summaries/range_1/startConst*
value	B : *
dtype0*
_output_shapes
: 
h
&layer1/weights/summaries/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Т
 layer1/weights/summaries/range_1Range&layer1/weights/summaries/range_1/startlayer1/weights/summaries/Rank_1&layer1/weights/summaries/range_1/delta*

Tidx0*
_output_shapes
:
Ё
layer1/weights/summaries/MaxMaxlayer1/weights/Variable/read layer1/weights/summaries/range_1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
~
!layer1/weights/summaries/max/tagsConst*-
value$B" Blayer1/weights/summaries/max*
dtype0*
_output_shapes
: 

layer1/weights/summaries/maxScalarSummary!layer1/weights/summaries/max/tagslayer1/weights/summaries/Max*
T0*
_output_shapes
: 
a
layer1/weights/summaries/Rank_2Const*
value	B :*
dtype0*
_output_shapes
: 
h
&layer1/weights/summaries/range_2/startConst*
value	B : *
dtype0*
_output_shapes
: 
h
&layer1/weights/summaries/range_2/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Т
 layer1/weights/summaries/range_2Range&layer1/weights/summaries/range_2/startlayer1/weights/summaries/Rank_2&layer1/weights/summaries/range_2/delta*

Tidx0*
_output_shapes
:
Ё
layer1/weights/summaries/MinMinlayer1/weights/Variable/read layer1/weights/summaries/range_2*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
~
!layer1/weights/summaries/min/tagsConst*-
value$B" Blayer1/weights/summaries/min*
dtype0*
_output_shapes
: 

layer1/weights/summaries/minScalarSummary!layer1/weights/summaries/min/tagslayer1/weights/summaries/Min*
T0*
_output_shapes
: 

&layer1/weights/summaries/histogram/tagConst*3
value*B( B"layer1/weights/summaries/histogram*
dtype0*
_output_shapes
: 

"layer1/weights/summaries/histogramHistogramSummary&layer1/weights/summaries/histogram/taglayer1/weights/Variable/read*
T0*
_output_shapes
: 
b
layer1/biases/ConstConst*
valueBє*ЭЬЬ=*
dtype0*
_output_shapes	
:є

layer1/biases/Variable
VariableV2*
shape:є*
dtype0*
	container *
shared_name *
_output_shapes	
:є
Ю
layer1/biases/Variable/AssignAssignlayer1/biases/Variablelayer1/biases/Const*
T0*
validate_shape(*
use_locking(*)
_class
loc:@layer1/biases/Variable*
_output_shapes	
:є

layer1/biases/Variable/readIdentitylayer1/biases/Variable*
T0*)
_class
loc:@layer1/biases/Variable*
_output_shapes	
:є
^
layer1/biases/summaries/RankConst*
value	B :*
dtype0*
_output_shapes
: 
e
#layer1/biases/summaries/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
e
#layer1/biases/summaries/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ж
layer1/biases/summaries/rangeRange#layer1/biases/summaries/range/startlayer1/biases/summaries/Rank#layer1/biases/summaries/range/delta*

Tidx0*
_output_shapes
:

layer1/biases/summaries/MeanMeanlayer1/biases/Variable/readlayer1/biases/summaries/range*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
~
!layer1/biases/summaries/mean/tagsConst*-
value$B" Blayer1/biases/summaries/mean*
dtype0*
_output_shapes
: 

layer1/biases/summaries/meanScalarSummary!layer1/biases/summaries/mean/tagslayer1/biases/summaries/Mean*
T0*
_output_shapes
: 

"layer1/biases/summaries/stddev/subSublayer1/biases/Variable/readlayer1/biases/summaries/Mean*
T0*
_output_shapes	
:є
y
%layer1/biases/summaries/stddev/SquareSquare"layer1/biases/summaries/stddev/sub*
T0*
_output_shapes	
:є
n
$layer1/biases/summaries/stddev/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Ж
#layer1/biases/summaries/stddev/MeanMean%layer1/biases/summaries/stddev/Square$layer1/biases/summaries/stddev/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
q
#layer1/biases/summaries/stddev/SqrtSqrt#layer1/biases/summaries/stddev/Mean*
T0*
_output_shapes
: 

%layer1/biases/summaries/stddev_1/tagsConst*1
value(B& B layer1/biases/summaries/stddev_1*
dtype0*
_output_shapes
: 

 layer1/biases/summaries/stddev_1ScalarSummary%layer1/biases/summaries/stddev_1/tags#layer1/biases/summaries/stddev/Sqrt*
T0*
_output_shapes
: 
`
layer1/biases/summaries/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
g
%layer1/biases/summaries/range_1/startConst*
value	B : *
dtype0*
_output_shapes
: 
g
%layer1/biases/summaries/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
О
layer1/biases/summaries/range_1Range%layer1/biases/summaries/range_1/startlayer1/biases/summaries/Rank_1%layer1/biases/summaries/range_1/delta*

Tidx0*
_output_shapes
:

layer1/biases/summaries/MaxMaxlayer1/biases/Variable/readlayer1/biases/summaries/range_1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
|
 layer1/biases/summaries/max/tagsConst*,
value#B! Blayer1/biases/summaries/max*
dtype0*
_output_shapes
: 

layer1/biases/summaries/maxScalarSummary layer1/biases/summaries/max/tagslayer1/biases/summaries/Max*
T0*
_output_shapes
: 
`
layer1/biases/summaries/Rank_2Const*
value	B :*
dtype0*
_output_shapes
: 
g
%layer1/biases/summaries/range_2/startConst*
value	B : *
dtype0*
_output_shapes
: 
g
%layer1/biases/summaries/range_2/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
О
layer1/biases/summaries/range_2Range%layer1/biases/summaries/range_2/startlayer1/biases/summaries/Rank_2%layer1/biases/summaries/range_2/delta*

Tidx0*
_output_shapes
:

layer1/biases/summaries/MinMinlayer1/biases/Variable/readlayer1/biases/summaries/range_2*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
|
 layer1/biases/summaries/min/tagsConst*,
value#B! Blayer1/biases/summaries/min*
dtype0*
_output_shapes
: 

layer1/biases/summaries/minScalarSummary layer1/biases/summaries/min/tagslayer1/biases/summaries/Min*
T0*
_output_shapes
: 

%layer1/biases/summaries/histogram/tagConst*2
value)B' B!layer1/biases/summaries/histogram*
dtype0*
_output_shapes
: 

!layer1/biases/summaries/histogramHistogramSummary%layer1/biases/summaries/histogram/taglayer1/biases/Variable/read*
T0*
_output_shapes
: 
Љ
layer1/Wx_plus_b/MatMulMatMulinput_1/x-inputlayer1/weights/Variable/read*
transpose_a( *
transpose_b( *
T0*(
_output_shapes
:џџџџџџџџџє

layer1/Wx_plus_b/addAddlayer1/Wx_plus_b/MatMullayer1/biases/Variable/read*
T0*(
_output_shapes
:џџџџџџџџџє

$layer1/Wx_plus_b/pre_activations/tagConst*1
value(B& B layer1/Wx_plus_b/pre_activations*
dtype0*
_output_shapes
: 

 layer1/Wx_plus_b/pre_activationsHistogramSummary$layer1/Wx_plus_b/pre_activations/taglayer1/Wx_plus_b/add*
T0*
_output_shapes
: 
b
layer1/activationRelulayer1/Wx_plus_b/add*
T0*(
_output_shapes
:џџџџџџџџџє
i
layer1/activations/tagConst*#
valueB Blayer1/activations*
dtype0*
_output_shapes
: 
r
layer1/activationsHistogramSummarylayer1/activations/taglayer1/activation*
T0*
_output_shapes
: 
X
dropout/PlaceholderPlaceholder*
dtype0*
shape:*
_output_shapes
:

%dropout/dropout_keep_probability/tagsConst*1
value(B& B dropout/dropout_keep_probability*
dtype0*
_output_shapes
: 

 dropout/dropout_keep_probabilityScalarSummary%dropout/dropout_keep_probability/tagsdropout/Placeholder*
T0*
_output_shapes
: 
f
dropout/dropout/ShapeShapelayer1/activation*
T0*
out_type0*
_output_shapes
:
g
"dropout/dropout/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: 
g
"dropout/dropout/random_uniform/maxConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
­
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape*

seed *
seed2 *
dtype0*
T0*(
_output_shapes
:џџџџџџџџџє

"dropout/dropout/random_uniform/subSub"dropout/dropout/random_uniform/max"dropout/dropout/random_uniform/min*
T0*
_output_shapes
: 
Ў
"dropout/dropout/random_uniform/mulMul,dropout/dropout/random_uniform/RandomUniform"dropout/dropout/random_uniform/sub*
T0*(
_output_shapes
:џџџџџџџџџє
 
dropout/dropout/random_uniformAdd"dropout/dropout/random_uniform/mul"dropout/dropout/random_uniform/min*
T0*(
_output_shapes
:џџџџџџџџџє
r
dropout/dropout/addAdddropout/Placeholderdropout/dropout/random_uniform*
T0*
_output_shapes
:
V
dropout/dropout/FloorFloordropout/dropout/add*
T0*
_output_shapes
:
i
dropout/dropout/divRealDivlayer1/activationdropout/Placeholder*
T0*
_output_shapes
:
y
dropout/dropout/mulMuldropout/dropout/divdropout/dropout/Floor*
T0*(
_output_shapes
:џџџџџџџџџє
v
%layer2/weights/truncated_normal/shapeConst*
valueB"є  
   *
dtype0*
_output_shapes
:
i
$layer2/weights/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
k
&layer2/weights/truncated_normal/stddevConst*
valueB
 *ЭЬЬ=*
dtype0*
_output_shapes
: 
Й
/layer2/weights/truncated_normal/TruncatedNormalTruncatedNormal%layer2/weights/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*
_output_shapes
:	є

­
#layer2/weights/truncated_normal/mulMul/layer2/weights/truncated_normal/TruncatedNormal&layer2/weights/truncated_normal/stddev*
T0*
_output_shapes
:	є


layer2/weights/truncated_normalAdd#layer2/weights/truncated_normal/mul$layer2/weights/truncated_normal/mean*
T0*
_output_shapes
:	є


layer2/weights/Variable
VariableV2*
shape:	є
*
dtype0*
	container *
shared_name *
_output_shapes
:	є

с
layer2/weights/Variable/AssignAssignlayer2/weights/Variablelayer2/weights/truncated_normal*
T0*
validate_shape(*
use_locking(**
_class 
loc:@layer2/weights/Variable*
_output_shapes
:	є


layer2/weights/Variable/readIdentitylayer2/weights/Variable*
T0**
_class 
loc:@layer2/weights/Variable*
_output_shapes
:	є

_
layer2/weights/summaries/RankConst*
value	B :*
dtype0*
_output_shapes
: 
f
$layer2/weights/summaries/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
f
$layer2/weights/summaries/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
К
layer2/weights/summaries/rangeRange$layer2/weights/summaries/range/startlayer2/weights/summaries/Rank$layer2/weights/summaries/range/delta*

Tidx0*
_output_shapes
:
Ё
layer2/weights/summaries/MeanMeanlayer2/weights/Variable/readlayer2/weights/summaries/range*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

"layer2/weights/summaries/mean/tagsConst*.
value%B# Blayer2/weights/summaries/mean*
dtype0*
_output_shapes
: 

layer2/weights/summaries/meanScalarSummary"layer2/weights/summaries/mean/tagslayer2/weights/summaries/Mean*
T0*
_output_shapes
: 

#layer2/weights/summaries/stddev/subSublayer2/weights/Variable/readlayer2/weights/summaries/Mean*
T0*
_output_shapes
:	є


&layer2/weights/summaries/stddev/SquareSquare#layer2/weights/summaries/stddev/sub*
T0*
_output_shapes
:	є

v
%layer2/weights/summaries/stddev/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
Й
$layer2/weights/summaries/stddev/MeanMean&layer2/weights/summaries/stddev/Square%layer2/weights/summaries/stddev/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
s
$layer2/weights/summaries/stddev/SqrtSqrt$layer2/weights/summaries/stddev/Mean*
T0*
_output_shapes
: 

&layer2/weights/summaries/stddev_1/tagsConst*2
value)B' B!layer2/weights/summaries/stddev_1*
dtype0*
_output_shapes
: 
Ё
!layer2/weights/summaries/stddev_1ScalarSummary&layer2/weights/summaries/stddev_1/tags$layer2/weights/summaries/stddev/Sqrt*
T0*
_output_shapes
: 
a
layer2/weights/summaries/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
h
&layer2/weights/summaries/range_1/startConst*
value	B : *
dtype0*
_output_shapes
: 
h
&layer2/weights/summaries/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Т
 layer2/weights/summaries/range_1Range&layer2/weights/summaries/range_1/startlayer2/weights/summaries/Rank_1&layer2/weights/summaries/range_1/delta*

Tidx0*
_output_shapes
:
Ё
layer2/weights/summaries/MaxMaxlayer2/weights/Variable/read layer2/weights/summaries/range_1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
~
!layer2/weights/summaries/max/tagsConst*-
value$B" Blayer2/weights/summaries/max*
dtype0*
_output_shapes
: 

layer2/weights/summaries/maxScalarSummary!layer2/weights/summaries/max/tagslayer2/weights/summaries/Max*
T0*
_output_shapes
: 
a
layer2/weights/summaries/Rank_2Const*
value	B :*
dtype0*
_output_shapes
: 
h
&layer2/weights/summaries/range_2/startConst*
value	B : *
dtype0*
_output_shapes
: 
h
&layer2/weights/summaries/range_2/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Т
 layer2/weights/summaries/range_2Range&layer2/weights/summaries/range_2/startlayer2/weights/summaries/Rank_2&layer2/weights/summaries/range_2/delta*

Tidx0*
_output_shapes
:
Ё
layer2/weights/summaries/MinMinlayer2/weights/Variable/read layer2/weights/summaries/range_2*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
~
!layer2/weights/summaries/min/tagsConst*-
value$B" Blayer2/weights/summaries/min*
dtype0*
_output_shapes
: 

layer2/weights/summaries/minScalarSummary!layer2/weights/summaries/min/tagslayer2/weights/summaries/Min*
T0*
_output_shapes
: 

&layer2/weights/summaries/histogram/tagConst*3
value*B( B"layer2/weights/summaries/histogram*
dtype0*
_output_shapes
: 

"layer2/weights/summaries/histogramHistogramSummary&layer2/weights/summaries/histogram/taglayer2/weights/Variable/read*
T0*
_output_shapes
: 
`
layer2/biases/ConstConst*
valueB
*ЭЬЬ=*
dtype0*
_output_shapes
:


layer2/biases/Variable
VariableV2*
shape:
*
dtype0*
	container *
shared_name *
_output_shapes
:

Э
layer2/biases/Variable/AssignAssignlayer2/biases/Variablelayer2/biases/Const*
T0*
validate_shape(*
use_locking(*)
_class
loc:@layer2/biases/Variable*
_output_shapes
:


layer2/biases/Variable/readIdentitylayer2/biases/Variable*
T0*)
_class
loc:@layer2/biases/Variable*
_output_shapes
:

^
layer2/biases/summaries/RankConst*
value	B :*
dtype0*
_output_shapes
: 
e
#layer2/biases/summaries/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
e
#layer2/biases/summaries/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ж
layer2/biases/summaries/rangeRange#layer2/biases/summaries/range/startlayer2/biases/summaries/Rank#layer2/biases/summaries/range/delta*

Tidx0*
_output_shapes
:

layer2/biases/summaries/MeanMeanlayer2/biases/Variable/readlayer2/biases/summaries/range*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
~
!layer2/biases/summaries/mean/tagsConst*-
value$B" Blayer2/biases/summaries/mean*
dtype0*
_output_shapes
: 

layer2/biases/summaries/meanScalarSummary!layer2/biases/summaries/mean/tagslayer2/biases/summaries/Mean*
T0*
_output_shapes
: 

"layer2/biases/summaries/stddev/subSublayer2/biases/Variable/readlayer2/biases/summaries/Mean*
T0*
_output_shapes
:

x
%layer2/biases/summaries/stddev/SquareSquare"layer2/biases/summaries/stddev/sub*
T0*
_output_shapes
:

n
$layer2/biases/summaries/stddev/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Ж
#layer2/biases/summaries/stddev/MeanMean%layer2/biases/summaries/stddev/Square$layer2/biases/summaries/stddev/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
q
#layer2/biases/summaries/stddev/SqrtSqrt#layer2/biases/summaries/stddev/Mean*
T0*
_output_shapes
: 

%layer2/biases/summaries/stddev_1/tagsConst*1
value(B& B layer2/biases/summaries/stddev_1*
dtype0*
_output_shapes
: 

 layer2/biases/summaries/stddev_1ScalarSummary%layer2/biases/summaries/stddev_1/tags#layer2/biases/summaries/stddev/Sqrt*
T0*
_output_shapes
: 
`
layer2/biases/summaries/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
g
%layer2/biases/summaries/range_1/startConst*
value	B : *
dtype0*
_output_shapes
: 
g
%layer2/biases/summaries/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
О
layer2/biases/summaries/range_1Range%layer2/biases/summaries/range_1/startlayer2/biases/summaries/Rank_1%layer2/biases/summaries/range_1/delta*

Tidx0*
_output_shapes
:

layer2/biases/summaries/MaxMaxlayer2/biases/Variable/readlayer2/biases/summaries/range_1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
|
 layer2/biases/summaries/max/tagsConst*,
value#B! Blayer2/biases/summaries/max*
dtype0*
_output_shapes
: 

layer2/biases/summaries/maxScalarSummary layer2/biases/summaries/max/tagslayer2/biases/summaries/Max*
T0*
_output_shapes
: 
`
layer2/biases/summaries/Rank_2Const*
value	B :*
dtype0*
_output_shapes
: 
g
%layer2/biases/summaries/range_2/startConst*
value	B : *
dtype0*
_output_shapes
: 
g
%layer2/biases/summaries/range_2/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
О
layer2/biases/summaries/range_2Range%layer2/biases/summaries/range_2/startlayer2/biases/summaries/Rank_2%layer2/biases/summaries/range_2/delta*

Tidx0*
_output_shapes
:

layer2/biases/summaries/MinMinlayer2/biases/Variable/readlayer2/biases/summaries/range_2*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
|
 layer2/biases/summaries/min/tagsConst*,
value#B! Blayer2/biases/summaries/min*
dtype0*
_output_shapes
: 

layer2/biases/summaries/minScalarSummary layer2/biases/summaries/min/tagslayer2/biases/summaries/Min*
T0*
_output_shapes
: 

%layer2/biases/summaries/histogram/tagConst*2
value)B' B!layer2/biases/summaries/histogram*
dtype0*
_output_shapes
: 

!layer2/biases/summaries/histogramHistogramSummary%layer2/biases/summaries/histogram/taglayer2/biases/Variable/read*
T0*
_output_shapes
: 
Ќ
layer2/Wx_plus_b/MatMulMatMuldropout/dropout/mullayer2/weights/Variable/read*
transpose_a( *
transpose_b( *
T0*'
_output_shapes
:џџџџџџџџџ


layer2/Wx_plus_b/addAddlayer2/Wx_plus_b/MatMullayer2/biases/Variable/read*
T0*'
_output_shapes
:џџџџџџџџџ


$layer2/Wx_plus_b/pre_activations/tagConst*1
value(B& B layer2/Wx_plus_b/pre_activations*
dtype0*
_output_shapes
: 

 layer2/Wx_plus_b/pre_activationsHistogramSummary$layer2/Wx_plus_b/pre_activations/taglayer2/Wx_plus_b/add*
T0*
_output_shapes
: 
e
layer2/activationIdentitylayer2/Wx_plus_b/add*
T0*'
_output_shapes
:џџџџџџџџџ

i
layer2/activations/tagConst*#
valueB Blayer2/activations*
dtype0*
_output_shapes
: 
r
layer2/activationsHistogramSummarylayer2/activations/taglayer2/activation*
T0*
_output_shapes
: 

;cross_entropy/total/sparse_softmax_cross_entropy_loss/ConstConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

Dcross_entropy/total/sparse_softmax_cross_entropy_loss/xentropy/ShapeShapeinput_1/y-input*
T0	*
out_type0*
_output_shapes
:
т
Gcross_entropy/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy#SparseSoftmaxCrossEntropyWithLogitslayer2/activationinput_1/y-input*
T0*
Tlabels0	*6
_output_shapes$
":џџџџџџџџџ:џџџџџџџџџ


Xcross_entropy/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/weights/shapeConst*
valueB *
dtype0*
_output_shapes
: 

Wcross_entropy/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/weights/rankConst*
value	B : *
dtype0*
_output_shapes
: 
о
Wcross_entropy/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/values/shapeShapeGcross_entropy/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy*
T0*
out_type0*
_output_shapes
:

Vcross_entropy/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
n
fcross_entropy/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_successNoOp
н
9cross_entropy/total/sparse_softmax_cross_entropy_loss/MulMulGcross_entropy/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy;cross_entropy/total/sparse_softmax_cross_entropy_loss/Constg^cross_entropy/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
T0*#
_output_shapes
:џџџџџџџџџ
№
=cross_entropy/total/sparse_softmax_cross_entropy_loss/Const_1Constg^cross_entropy/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB: *
dtype0*
_output_shapes
:
ј
9cross_entropy/total/sparse_softmax_cross_entropy_loss/SumSum9cross_entropy/total/sparse_softmax_cross_entropy_loss/Mul=cross_entropy/total/sparse_softmax_cross_entropy_loss/Const_1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
ї
Icross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/Equal/yConstg^cross_entropy/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
љ
Gcross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/EqualEqual;cross_entropy/total/sparse_softmax_cross_entropy_loss/ConstIcross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/Equal/y*
T0*
_output_shapes
: 
њ
Lcross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/zeros_likeConstg^cross_entropy/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
§
Qcross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/ones_like/ShapeConstg^cross_entropy/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
џ
Qcross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/ones_like/ConstConstg^cross_entropy/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 

Kcross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/ones_likeFillQcross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/ones_like/ShapeQcross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/ones_like/Const*
T0*
_output_shapes
: 
з
Hcross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/SelectSelectGcross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/EqualLcross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/zeros_likeKcross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/ones_like*
T0*
_output_shapes
: 
Ђ
vcross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/shapeConstg^cross_entropy/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
 
ucross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/rankConstg^cross_entropy/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
value	B : *
dtype0*
_output_shapes
: 
х
ucross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/shapeShapeGcross_entropy/total/sparse_softmax_cross_entropy_loss/xentropy/xentropyg^cross_entropy/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
T0*
out_type0*
_output_shapes
:

tcross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/rankConstg^cross_entropy/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
value	B :*
dtype0*
_output_shapes
: 
і
cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOpg^cross_entropy/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success
л
ccross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/ShapeShapeGcross_entropy/total/sparse_softmax_cross_entropy_loss/xentropy/xentropyg^cross_entropy/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success^cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
T0*
out_type0*
_output_shapes
:

ccross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/ConstConstg^cross_entropy/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success^cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 
н
]cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_likeFillccross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/Shapeccross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/Const*
T0*#
_output_shapes
:џџџџџџџџџ
Б
Scross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weightsMulHcross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/Select]cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like*
T0*#
_output_shapes
:џџџџџџџџџ
њ
Gcross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/ConstConstg^cross_entropy/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB: *
dtype0*
_output_shapes
:
Є
Across_entropy/total/sparse_softmax_cross_entropy_loss/num_presentSumScross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weightsGcross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
щ
=cross_entropy/total/sparse_softmax_cross_entropy_loss/Const_2Constg^cross_entropy/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
њ
;cross_entropy/total/sparse_softmax_cross_entropy_loss/Sum_1Sum9cross_entropy/total/sparse_softmax_cross_entropy_loss/Sum=cross_entropy/total/sparse_softmax_cross_entropy_loss/Const_2*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
э
?cross_entropy/total/sparse_softmax_cross_entropy_loss/Greater/yConstg^cross_entropy/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
э
=cross_entropy/total/sparse_softmax_cross_entropy_loss/GreaterGreaterAcross_entropy/total/sparse_softmax_cross_entropy_loss/num_present?cross_entropy/total/sparse_softmax_cross_entropy_loss/Greater/y*
T0*
_output_shapes
: 
ы
=cross_entropy/total/sparse_softmax_cross_entropy_loss/Equal/yConstg^cross_entropy/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
ч
;cross_entropy/total/sparse_softmax_cross_entropy_loss/EqualEqualAcross_entropy/total/sparse_softmax_cross_entropy_loss/num_present=cross_entropy/total/sparse_softmax_cross_entropy_loss/Equal/y*
T0*
_output_shapes
: 
ё
Ecross_entropy/total/sparse_softmax_cross_entropy_loss/ones_like/ShapeConstg^cross_entropy/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
ѓ
Ecross_entropy/total/sparse_softmax_cross_entropy_loss/ones_like/ConstConstg^cross_entropy/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 
і
?cross_entropy/total/sparse_softmax_cross_entropy_loss/ones_likeFillEcross_entropy/total/sparse_softmax_cross_entropy_loss/ones_like/ShapeEcross_entropy/total/sparse_softmax_cross_entropy_loss/ones_like/Const*
T0*
_output_shapes
: 
Ј
<cross_entropy/total/sparse_softmax_cross_entropy_loss/SelectSelect;cross_entropy/total/sparse_softmax_cross_entropy_loss/Equal?cross_entropy/total/sparse_softmax_cross_entropy_loss/ones_likeAcross_entropy/total/sparse_softmax_cross_entropy_loss/num_present*
T0*
_output_shapes
: 
р
9cross_entropy/total/sparse_softmax_cross_entropy_loss/divRealDiv;cross_entropy/total/sparse_softmax_cross_entropy_loss/Sum_1<cross_entropy/total/sparse_softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 
ю
@cross_entropy/total/sparse_softmax_cross_entropy_loss/zeros_likeConstg^cross_entropy/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
Ђ
;cross_entropy/total/sparse_softmax_cross_entropy_loss/valueSelect=cross_entropy/total/sparse_softmax_cross_entropy_loss/Greater9cross_entropy/total/sparse_softmax_cross_entropy_loss/div@cross_entropy/total/sparse_softmax_cross_entropy_loss/zeros_like*
T0*
_output_shapes
: 
d
cross_entropy_1/tagsConst* 
valueB Bcross_entropy_1*
dtype0*
_output_shapes
: 

cross_entropy_1ScalarSummarycross_entropy_1/tags;cross_entropy/total/sparse_softmax_cross_entropy_loss/value*
T0*
_output_shapes
: 
X
train/gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
^
train/gradients/grad_ys_0Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 
o
train/gradients/FillFilltrain/gradients/Shapetrain/gradients/grad_ys_0*
T0*
_output_shapes
: 
 
[train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/value_grad/zeros_likeConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Д
Wtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/value_grad/SelectSelect=cross_entropy/total/sparse_softmax_cross_entropy_loss/Greatertrain/gradients/Fill[train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/value_grad/zeros_like*
T0*
_output_shapes
: 
Ж
Ytrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/value_grad/Select_1Select=cross_entropy/total/sparse_softmax_cross_entropy_loss/Greater[train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/value_grad/zeros_liketrain/gradients/Fill*
T0*
_output_shapes
: 

atrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/value_grad/tuple/group_depsNoOpX^train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/value_grad/SelectZ^train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/value_grad/Select_1
П
itrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/value_grad/tuple/control_dependencyIdentityWtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/value_grad/Selectb^train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/value_grad/tuple/group_deps*
T0*j
_class`
^\loc:@train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/value_grad/Select*
_output_shapes
: 
Х
ktrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/value_grad/tuple/control_dependency_1IdentityYtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/value_grad/Select_1b^train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/value_grad/tuple/group_deps*
T0*l
_classb
`^loc:@train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/value_grad/Select_1*
_output_shapes
: 

Ttrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 

Vtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
ш
dtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/BroadcastGradientArgsBroadcastGradientArgsTtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/ShapeVtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Ћ
Vtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/RealDivRealDivitrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/value_grad/tuple/control_dependency<cross_entropy/total/sparse_softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 
з
Rtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/SumSumVtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/RealDivdtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
К
Vtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/ReshapeReshapeRtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/SumTtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
З
Rtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/NegNeg;cross_entropy/total/sparse_softmax_cross_entropy_loss/Sum_1*
T0*
_output_shapes
: 

Xtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/RealDiv_1RealDivRtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/Neg<cross_entropy/total/sparse_softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 

Xtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/RealDiv_2RealDivXtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/RealDiv_1<cross_entropy/total/sparse_softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 
П
Rtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/mulMulitrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/value_grad/tuple/control_dependencyXtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/RealDiv_2*
T0*
_output_shapes
: 
з
Ttrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/Sum_1SumRtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/mulftrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
Р
Xtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/Reshape_1ReshapeTtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/Sum_1Vtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 

_train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/group_depsNoOpW^train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/ReshapeY^train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/Reshape_1
Й
gtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/control_dependencyIdentityVtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/Reshape`^train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/group_deps*
T0*i
_class_
][loc:@train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/Reshape*
_output_shapes
: 
П
itrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/control_dependency_1IdentityXtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/Reshape_1`^train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/group_deps*
T0*k
_classa
_]loc:@train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/Reshape_1*
_output_shapes
: 
Ё
^train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/Reshape/shapeConst*
valueB *
dtype0*
_output_shapes
: 
л
Xtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/ReshapeReshapegtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/control_dependency^train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
: 
Ђ
_train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/Tile/multiplesConst*
valueB *
dtype0*
_output_shapes
: 
Ы
Utrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/TileTileXtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/Reshape_train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/Tile/multiples*
T0*

Tmultiples0*
_output_shapes
: 
Ё
\train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Select_grad/zeros_likeConst*
valueB
 *    *
dtype0*
_output_shapes
: 

Xtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Select_grad/SelectSelect;cross_entropy/total/sparse_softmax_cross_entropy_loss/Equalitrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/control_dependency_1\train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Select_grad/zeros_like*
T0*
_output_shapes
: 

Ztrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Select_grad/Select_1Select;cross_entropy/total/sparse_softmax_cross_entropy_loss/Equal\train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Select_grad/zeros_likeitrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/control_dependency_1*
T0*
_output_shapes
: 
Ђ
btrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Select_grad/tuple/group_depsNoOpY^train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Select_grad/Select[^train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Select_grad/Select_1
У
jtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Select_grad/tuple/control_dependencyIdentityXtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Select_grad/Selectc^train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Select_grad/tuple/group_deps*
T0*k
_classa
_]loc:@train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Select_grad/Select*
_output_shapes
: 
Щ
ltrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Select_grad/tuple/control_dependency_1IdentityZtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Select_grad/Select_1c^train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Select_grad/tuple/group_deps*
T0*m
_classc
a_loc:@train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Select_grad/Select_1*
_output_shapes
: 
І
\train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Sum_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
Щ
Vtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Sum_grad/ReshapeReshapeUtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/Tile\train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Sum_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
Э
Ttrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Sum_grad/ShapeShape9cross_entropy/total/sparse_softmax_cross_entropy_loss/Mul*
T0*
out_type0*
_output_shapes
:
Щ
Strain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Sum_grad/TileTileVtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Sum_grad/ReshapeTtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Sum_grad/Shape*
T0*

Tmultiples0*#
_output_shapes
:џџџџџџџџџ
л
Ttrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Mul_grad/ShapeShapeGcross_entropy/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy*
T0*
out_type0*
_output_shapes
:

Vtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Mul_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
ш
dtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgsBroadcastGradientArgsTtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Mul_grad/ShapeVtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Mul_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

Rtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Mul_grad/mulMulStrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Sum_grad/Tile;cross_entropy/total/sparse_softmax_cross_entropy_loss/Const*
T0*#
_output_shapes
:џџџџџџџџџ
г
Rtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Mul_grad/SumSumRtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Mul_grad/muldtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
Ч
Vtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Mul_grad/ReshapeReshapeRtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Mul_grad/SumTtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Mul_grad/Shape*
T0*
Tshape0*#
_output_shapes
:џџџџџџџџџ
Ї
Ttrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Mul_grad/mul_1MulGcross_entropy/total/sparse_softmax_cross_entropy_loss/xentropy/xentropyStrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Sum_grad/Tile*
T0*#
_output_shapes
:џџџџџџџџџ
й
Ttrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Mul_grad/Sum_1SumTtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Mul_grad/mul_1ftrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
Р
Xtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape_1ReshapeTtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Mul_grad/Sum_1Vtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Mul_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 

_train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/group_depsNoOpW^train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Mul_grad/ReshapeY^train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape_1
Ц
gtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/control_dependencyIdentityVtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape`^train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/group_deps*
T0*i
_class_
][loc:@train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape*#
_output_shapes
:џџџџџџџџџ
П
itrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/control_dependency_1IdentityXtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape_1`^train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/group_deps*
T0*k
_classa
_]loc:@train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape_1*
_output_shapes
: 
Ў
dtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
№
^train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present_grad/ReshapeReshapeltrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Select_grad/tuple/control_dependency_1dtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
я
\train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present_grad/ShapeShapeScross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights*
T0*
out_type0*
_output_shapes
:
с
[train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present_grad/TileTile^train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present_grad/Reshape\train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present_grad/Shape*
T0*

Tmultiples0*#
_output_shapes
:џџџџџџџџџ
Б
ntrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 

ptrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Shape_1Shape]cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like*
T0*
out_type0*
_output_shapes
:
Ж
~train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/BroadcastGradientArgsBroadcastGradientArgsntrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Shapeptrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
н
ltrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/mulMul[train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present_grad/Tile]cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like*
T0*#
_output_shapes
:џџџџџџџџџ
Ё
ltrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/SumSumltrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/mul~train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:

ptrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/ReshapeReshapeltrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Sumntrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
Ъ
ntrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/mul_1MulHcross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/Select[train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present_grad/Tile*
T0*#
_output_shapes
:џџџџџџџџџ
Ј
ntrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Sum_1Sumntrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/mul_1train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:

rtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape_1Reshapentrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Sum_1ptrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:џџџџџџџџџ
щ
ytrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/group_depsNoOpq^train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshapes^train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape_1
Ѓ
train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/control_dependencyIdentityptrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshapez^train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/group_deps*
T0*
_classy
wuloc:@train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape*
_output_shapes
: 
Ж
train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/control_dependency_1Identityrtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape_1z^train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/group_deps*
T0*
_class{
ywloc:@train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape_1*#
_output_shapes
:џџџџџџџџџ
Т
xtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Л
vtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like_grad/SumSumtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/control_dependency_1xtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like_grad/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
Є
train/gradients/zeros_like	ZerosLikeIcross_entropy/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy:1*
T0*'
_output_shapes
:џџџџџџџџџ

Г
ltrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/PreventGradientPreventGradientIcross_entropy/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy:1*
T0*Д
messageЈЅCurrently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*'
_output_shapes
:џџџџџџџџџ

Ж
ktrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/ExpandDims/dimConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

gtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/ExpandDims
ExpandDimsgtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/control_dependencyktrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/ExpandDims/dim*
T0*

Tdim0*'
_output_shapes
:џџџџџџџџџ
№
`train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/mulMulgtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/ExpandDimsltrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/PreventGradient*
T0*'
_output_shapes
:џџџџџџџџџ


/train/gradients/layer2/Wx_plus_b/add_grad/ShapeShapelayer2/Wx_plus_b/MatMul*
T0*
out_type0*
_output_shapes
:
{
1train/gradients/layer2/Wx_plus_b/add_grad/Shape_1Const*
valueB:
*
dtype0*
_output_shapes
:
љ
?train/gradients/layer2/Wx_plus_b/add_grad/BroadcastGradientArgsBroadcastGradientArgs/train/gradients/layer2/Wx_plus_b/add_grad/Shape1train/gradients/layer2/Wx_plus_b/add_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

-train/gradients/layer2/Wx_plus_b/add_grad/SumSum`train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/mul?train/gradients/layer2/Wx_plus_b/add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
м
1train/gradients/layer2/Wx_plus_b/add_grad/ReshapeReshape-train/gradients/layer2/Wx_plus_b/add_grad/Sum/train/gradients/layer2/Wx_plus_b/add_grad/Shape*
T0*
Tshape0*'
_output_shapes
:џџџџџџџџџ


/train/gradients/layer2/Wx_plus_b/add_grad/Sum_1Sum`train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/mulAtrain/gradients/layer2/Wx_plus_b/add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
е
3train/gradients/layer2/Wx_plus_b/add_grad/Reshape_1Reshape/train/gradients/layer2/Wx_plus_b/add_grad/Sum_11train/gradients/layer2/Wx_plus_b/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:

Ќ
:train/gradients/layer2/Wx_plus_b/add_grad/tuple/group_depsNoOp2^train/gradients/layer2/Wx_plus_b/add_grad/Reshape4^train/gradients/layer2/Wx_plus_b/add_grad/Reshape_1
Ж
Btrain/gradients/layer2/Wx_plus_b/add_grad/tuple/control_dependencyIdentity1train/gradients/layer2/Wx_plus_b/add_grad/Reshape;^train/gradients/layer2/Wx_plus_b/add_grad/tuple/group_deps*
T0*D
_class:
86loc:@train/gradients/layer2/Wx_plus_b/add_grad/Reshape*'
_output_shapes
:џџџџџџџџџ

Џ
Dtrain/gradients/layer2/Wx_plus_b/add_grad/tuple/control_dependency_1Identity3train/gradients/layer2/Wx_plus_b/add_grad/Reshape_1;^train/gradients/layer2/Wx_plus_b/add_grad/tuple/group_deps*
T0*F
_class<
:8loc:@train/gradients/layer2/Wx_plus_b/add_grad/Reshape_1*
_output_shapes
:

ј
3train/gradients/layer2/Wx_plus_b/MatMul_grad/MatMulMatMulBtrain/gradients/layer2/Wx_plus_b/add_grad/tuple/control_dependencylayer2/weights/Variable/read*
transpose_a( *
transpose_b(*
T0*(
_output_shapes
:џџџџџџџџџє
ш
5train/gradients/layer2/Wx_plus_b/MatMul_grad/MatMul_1MatMuldropout/dropout/mulBtrain/gradients/layer2/Wx_plus_b/add_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0*
_output_shapes
:	є

Г
=train/gradients/layer2/Wx_plus_b/MatMul_grad/tuple/group_depsNoOp4^train/gradients/layer2/Wx_plus_b/MatMul_grad/MatMul6^train/gradients/layer2/Wx_plus_b/MatMul_grad/MatMul_1
С
Etrain/gradients/layer2/Wx_plus_b/MatMul_grad/tuple/control_dependencyIdentity3train/gradients/layer2/Wx_plus_b/MatMul_grad/MatMul>^train/gradients/layer2/Wx_plus_b/MatMul_grad/tuple/group_deps*
T0*F
_class<
:8loc:@train/gradients/layer2/Wx_plus_b/MatMul_grad/MatMul*(
_output_shapes
:џџџџџџџџџє
О
Gtrain/gradients/layer2/Wx_plus_b/MatMul_grad/tuple/control_dependency_1Identity5train/gradients/layer2/Wx_plus_b/MatMul_grad/MatMul_1>^train/gradients/layer2/Wx_plus_b/MatMul_grad/tuple/group_deps*
T0*H
_class>
<:loc:@train/gradients/layer2/Wx_plus_b/MatMul_grad/MatMul_1*
_output_shapes
:	є


.train/gradients/dropout/dropout/mul_grad/ShapeShapedropout/dropout/div*
T0*
out_type0*#
_output_shapes
:џџџџџџџџџ

0train/gradients/dropout/dropout/mul_grad/Shape_1Shapedropout/dropout/Floor*
T0*
out_type0*#
_output_shapes
:џџџџџџџџџ
і
>train/gradients/dropout/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs.train/gradients/dropout/dropout/mul_grad/Shape0train/gradients/dropout/dropout/mul_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Д
,train/gradients/dropout/dropout/mul_grad/mulMulEtrain/gradients/layer2/Wx_plus_b/MatMul_grad/tuple/control_dependencydropout/dropout/Floor*
T0*
_output_shapes
:
с
,train/gradients/dropout/dropout/mul_grad/SumSum,train/gradients/dropout/dropout/mul_grad/mul>train/gradients/dropout/dropout/mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
Ъ
0train/gradients/dropout/dropout/mul_grad/ReshapeReshape,train/gradients/dropout/dropout/mul_grad/Sum.train/gradients/dropout/dropout/mul_grad/Shape*
T0*
Tshape0*
_output_shapes
:
Д
.train/gradients/dropout/dropout/mul_grad/mul_1Muldropout/dropout/divEtrain/gradients/layer2/Wx_plus_b/MatMul_grad/tuple/control_dependency*
T0*
_output_shapes
:
ч
.train/gradients/dropout/dropout/mul_grad/Sum_1Sum.train/gradients/dropout/dropout/mul_grad/mul_1@train/gradients/dropout/dropout/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
а
2train/gradients/dropout/dropout/mul_grad/Reshape_1Reshape.train/gradients/dropout/dropout/mul_grad/Sum_10train/gradients/dropout/dropout/mul_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
Љ
9train/gradients/dropout/dropout/mul_grad/tuple/group_depsNoOp1^train/gradients/dropout/dropout/mul_grad/Reshape3^train/gradients/dropout/dropout/mul_grad/Reshape_1
Ѓ
Atrain/gradients/dropout/dropout/mul_grad/tuple/control_dependencyIdentity0train/gradients/dropout/dropout/mul_grad/Reshape:^train/gradients/dropout/dropout/mul_grad/tuple/group_deps*
T0*C
_class9
75loc:@train/gradients/dropout/dropout/mul_grad/Reshape*
_output_shapes
:
Љ
Ctrain/gradients/dropout/dropout/mul_grad/tuple/control_dependency_1Identity2train/gradients/dropout/dropout/mul_grad/Reshape_1:^train/gradients/dropout/dropout/mul_grad/tuple/group_deps*
T0*E
_class;
97loc:@train/gradients/dropout/dropout/mul_grad/Reshape_1*
_output_shapes
:

.train/gradients/dropout/dropout/div_grad/ShapeShapelayer1/activation*
T0*
out_type0*
_output_shapes
:

0train/gradients/dropout/dropout/div_grad/Shape_1Shapedropout/Placeholder*
T0*
out_type0*#
_output_shapes
:џџџџџџџџџ
і
>train/gradients/dropout/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs.train/gradients/dropout/dropout/div_grad/Shape0train/gradients/dropout/dropout/div_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Ж
0train/gradients/dropout/dropout/div_grad/RealDivRealDivAtrain/gradients/dropout/dropout/mul_grad/tuple/control_dependencydropout/Placeholder*
T0*
_output_shapes
:
х
,train/gradients/dropout/dropout/div_grad/SumSum0train/gradients/dropout/dropout/div_grad/RealDiv>train/gradients/dropout/dropout/div_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
к
0train/gradients/dropout/dropout/div_grad/ReshapeReshape,train/gradients/dropout/dropout/div_grad/Sum.train/gradients/dropout/dropout/div_grad/Shape*
T0*
Tshape0*(
_output_shapes
:џџџџџџџџџє
y
,train/gradients/dropout/dropout/div_grad/NegNeglayer1/activation*
T0*(
_output_shapes
:џџџџџџџџџє
Ѓ
2train/gradients/dropout/dropout/div_grad/RealDiv_1RealDiv,train/gradients/dropout/dropout/div_grad/Negdropout/Placeholder*
T0*
_output_shapes
:
Љ
2train/gradients/dropout/dropout/div_grad/RealDiv_2RealDiv2train/gradients/dropout/dropout/div_grad/RealDiv_1dropout/Placeholder*
T0*
_output_shapes
:
Э
,train/gradients/dropout/dropout/div_grad/mulMulAtrain/gradients/dropout/dropout/mul_grad/tuple/control_dependency2train/gradients/dropout/dropout/div_grad/RealDiv_2*
T0*
_output_shapes
:
х
.train/gradients/dropout/dropout/div_grad/Sum_1Sum,train/gradients/dropout/dropout/div_grad/mul@train/gradients/dropout/dropout/div_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
а
2train/gradients/dropout/dropout/div_grad/Reshape_1Reshape.train/gradients/dropout/dropout/div_grad/Sum_10train/gradients/dropout/dropout/div_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
Љ
9train/gradients/dropout/dropout/div_grad/tuple/group_depsNoOp1^train/gradients/dropout/dropout/div_grad/Reshape3^train/gradients/dropout/dropout/div_grad/Reshape_1
Г
Atrain/gradients/dropout/dropout/div_grad/tuple/control_dependencyIdentity0train/gradients/dropout/dropout/div_grad/Reshape:^train/gradients/dropout/dropout/div_grad/tuple/group_deps*
T0*C
_class9
75loc:@train/gradients/dropout/dropout/div_grad/Reshape*(
_output_shapes
:џџџџџџџџџє
Љ
Ctrain/gradients/dropout/dropout/div_grad/tuple/control_dependency_1Identity2train/gradients/dropout/dropout/div_grad/Reshape_1:^train/gradients/dropout/dropout/div_grad/tuple/group_deps*
T0*E
_class;
97loc:@train/gradients/dropout/dropout/div_grad/Reshape_1*
_output_shapes
:
Ф
/train/gradients/layer1/activation_grad/ReluGradReluGradAtrain/gradients/dropout/dropout/div_grad/tuple/control_dependencylayer1/activation*
T0*(
_output_shapes
:џџџџџџџџџє

/train/gradients/layer1/Wx_plus_b/add_grad/ShapeShapelayer1/Wx_plus_b/MatMul*
T0*
out_type0*
_output_shapes
:
|
1train/gradients/layer1/Wx_plus_b/add_grad/Shape_1Const*
valueB:є*
dtype0*
_output_shapes
:
љ
?train/gradients/layer1/Wx_plus_b/add_grad/BroadcastGradientArgsBroadcastGradientArgs/train/gradients/layer1/Wx_plus_b/add_grad/Shape1train/gradients/layer1/Wx_plus_b/add_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
ц
-train/gradients/layer1/Wx_plus_b/add_grad/SumSum/train/gradients/layer1/activation_grad/ReluGrad?train/gradients/layer1/Wx_plus_b/add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
н
1train/gradients/layer1/Wx_plus_b/add_grad/ReshapeReshape-train/gradients/layer1/Wx_plus_b/add_grad/Sum/train/gradients/layer1/Wx_plus_b/add_grad/Shape*
T0*
Tshape0*(
_output_shapes
:џџџџџџџџџє
ъ
/train/gradients/layer1/Wx_plus_b/add_grad/Sum_1Sum/train/gradients/layer1/activation_grad/ReluGradAtrain/gradients/layer1/Wx_plus_b/add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
ж
3train/gradients/layer1/Wx_plus_b/add_grad/Reshape_1Reshape/train/gradients/layer1/Wx_plus_b/add_grad/Sum_11train/gradients/layer1/Wx_plus_b/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes	
:є
Ќ
:train/gradients/layer1/Wx_plus_b/add_grad/tuple/group_depsNoOp2^train/gradients/layer1/Wx_plus_b/add_grad/Reshape4^train/gradients/layer1/Wx_plus_b/add_grad/Reshape_1
З
Btrain/gradients/layer1/Wx_plus_b/add_grad/tuple/control_dependencyIdentity1train/gradients/layer1/Wx_plus_b/add_grad/Reshape;^train/gradients/layer1/Wx_plus_b/add_grad/tuple/group_deps*
T0*D
_class:
86loc:@train/gradients/layer1/Wx_plus_b/add_grad/Reshape*(
_output_shapes
:џџџџџџџџџє
А
Dtrain/gradients/layer1/Wx_plus_b/add_grad/tuple/control_dependency_1Identity3train/gradients/layer1/Wx_plus_b/add_grad/Reshape_1;^train/gradients/layer1/Wx_plus_b/add_grad/tuple/group_deps*
T0*F
_class<
:8loc:@train/gradients/layer1/Wx_plus_b/add_grad/Reshape_1*
_output_shapes	
:є
ј
3train/gradients/layer1/Wx_plus_b/MatMul_grad/MatMulMatMulBtrain/gradients/layer1/Wx_plus_b/add_grad/tuple/control_dependencylayer1/weights/Variable/read*
transpose_a( *
transpose_b(*
T0*(
_output_shapes
:џџџџџџџџџ
х
5train/gradients/layer1/Wx_plus_b/MatMul_grad/MatMul_1MatMulinput_1/x-inputBtrain/gradients/layer1/Wx_plus_b/add_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0* 
_output_shapes
:
є
Г
=train/gradients/layer1/Wx_plus_b/MatMul_grad/tuple/group_depsNoOp4^train/gradients/layer1/Wx_plus_b/MatMul_grad/MatMul6^train/gradients/layer1/Wx_plus_b/MatMul_grad/MatMul_1
С
Etrain/gradients/layer1/Wx_plus_b/MatMul_grad/tuple/control_dependencyIdentity3train/gradients/layer1/Wx_plus_b/MatMul_grad/MatMul>^train/gradients/layer1/Wx_plus_b/MatMul_grad/tuple/group_deps*
T0*F
_class<
:8loc:@train/gradients/layer1/Wx_plus_b/MatMul_grad/MatMul*(
_output_shapes
:џџџџџџџџџ
П
Gtrain/gradients/layer1/Wx_plus_b/MatMul_grad/tuple/control_dependency_1Identity5train/gradients/layer1/Wx_plus_b/MatMul_grad/MatMul_1>^train/gradients/layer1/Wx_plus_b/MatMul_grad/tuple/group_deps*
T0*H
_class>
<:loc:@train/gradients/layer1/Wx_plus_b/MatMul_grad/MatMul_1* 
_output_shapes
:
є

train/beta1_power/initial_valueConst*
valueB
 *fff?*
dtype0*)
_class
loc:@layer1/biases/Variable*
_output_shapes
: 
 
train/beta1_power
VariableV2*
shape: *
dtype0*
	container *
shared_name *)
_class
loc:@layer1/biases/Variable*
_output_shapes
: 
Ы
train/beta1_power/AssignAssigntrain/beta1_powertrain/beta1_power/initial_value*
T0*
validate_shape(*
use_locking(*)
_class
loc:@layer1/biases/Variable*
_output_shapes
: 

train/beta1_power/readIdentitytrain/beta1_power*
T0*)
_class
loc:@layer1/biases/Variable*
_output_shapes
: 

train/beta2_power/initial_valueConst*
valueB
 *wО?*
dtype0*)
_class
loc:@layer1/biases/Variable*
_output_shapes
: 
 
train/beta2_power
VariableV2*
shape: *
dtype0*
	container *
shared_name *)
_class
loc:@layer1/biases/Variable*
_output_shapes
: 
Ы
train/beta2_power/AssignAssigntrain/beta2_powertrain/beta2_power/initial_value*
T0*
validate_shape(*
use_locking(*)
_class
loc:@layer1/biases/Variable*
_output_shapes
: 

train/beta2_power/readIdentitytrain/beta2_power*
T0*)
_class
loc:@layer1/biases/Variable*
_output_shapes
: 
Г
.layer1/weights/Variable/Adam/Initializer/zerosConst*
valueB
є*    *
dtype0**
_class 
loc:@layer1/weights/Variable* 
_output_shapes
:
є
Р
layer1/weights/Variable/Adam
VariableV2*
shape:
є*
dtype0*
	container *
shared_name **
_class 
loc:@layer1/weights/Variable* 
_output_shapes
:
є
ћ
#layer1/weights/Variable/Adam/AssignAssignlayer1/weights/Variable/Adam.layer1/weights/Variable/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(**
_class 
loc:@layer1/weights/Variable* 
_output_shapes
:
є
Ђ
!layer1/weights/Variable/Adam/readIdentitylayer1/weights/Variable/Adam*
T0**
_class 
loc:@layer1/weights/Variable* 
_output_shapes
:
є
Е
0layer1/weights/Variable/Adam_1/Initializer/zerosConst*
valueB
є*    *
dtype0**
_class 
loc:@layer1/weights/Variable* 
_output_shapes
:
є
Т
layer1/weights/Variable/Adam_1
VariableV2*
shape:
є*
dtype0*
	container *
shared_name **
_class 
loc:@layer1/weights/Variable* 
_output_shapes
:
є

%layer1/weights/Variable/Adam_1/AssignAssignlayer1/weights/Variable/Adam_10layer1/weights/Variable/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(**
_class 
loc:@layer1/weights/Variable* 
_output_shapes
:
є
І
#layer1/weights/Variable/Adam_1/readIdentitylayer1/weights/Variable/Adam_1*
T0**
_class 
loc:@layer1/weights/Variable* 
_output_shapes
:
є
Ї
-layer1/biases/Variable/Adam/Initializer/zerosConst*
valueBє*    *
dtype0*)
_class
loc:@layer1/biases/Variable*
_output_shapes	
:є
Д
layer1/biases/Variable/Adam
VariableV2*
shape:є*
dtype0*
	container *
shared_name *)
_class
loc:@layer1/biases/Variable*
_output_shapes	
:є
ђ
"layer1/biases/Variable/Adam/AssignAssignlayer1/biases/Variable/Adam-layer1/biases/Variable/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*)
_class
loc:@layer1/biases/Variable*
_output_shapes	
:є

 layer1/biases/Variable/Adam/readIdentitylayer1/biases/Variable/Adam*
T0*)
_class
loc:@layer1/biases/Variable*
_output_shapes	
:є
Љ
/layer1/biases/Variable/Adam_1/Initializer/zerosConst*
valueBє*    *
dtype0*)
_class
loc:@layer1/biases/Variable*
_output_shapes	
:є
Ж
layer1/biases/Variable/Adam_1
VariableV2*
shape:є*
dtype0*
	container *
shared_name *)
_class
loc:@layer1/biases/Variable*
_output_shapes	
:є
ј
$layer1/biases/Variable/Adam_1/AssignAssignlayer1/biases/Variable/Adam_1/layer1/biases/Variable/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*)
_class
loc:@layer1/biases/Variable*
_output_shapes	
:є

"layer1/biases/Variable/Adam_1/readIdentitylayer1/biases/Variable/Adam_1*
T0*)
_class
loc:@layer1/biases/Variable*
_output_shapes	
:є
Б
.layer2/weights/Variable/Adam/Initializer/zerosConst*
valueB	є
*    *
dtype0**
_class 
loc:@layer2/weights/Variable*
_output_shapes
:	є

О
layer2/weights/Variable/Adam
VariableV2*
shape:	є
*
dtype0*
	container *
shared_name **
_class 
loc:@layer2/weights/Variable*
_output_shapes
:	є

њ
#layer2/weights/Variable/Adam/AssignAssignlayer2/weights/Variable/Adam.layer2/weights/Variable/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(**
_class 
loc:@layer2/weights/Variable*
_output_shapes
:	є

Ё
!layer2/weights/Variable/Adam/readIdentitylayer2/weights/Variable/Adam*
T0**
_class 
loc:@layer2/weights/Variable*
_output_shapes
:	є

Г
0layer2/weights/Variable/Adam_1/Initializer/zerosConst*
valueB	є
*    *
dtype0**
_class 
loc:@layer2/weights/Variable*
_output_shapes
:	є

Р
layer2/weights/Variable/Adam_1
VariableV2*
shape:	є
*
dtype0*
	container *
shared_name **
_class 
loc:@layer2/weights/Variable*
_output_shapes
:	є


%layer2/weights/Variable/Adam_1/AssignAssignlayer2/weights/Variable/Adam_10layer2/weights/Variable/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(**
_class 
loc:@layer2/weights/Variable*
_output_shapes
:	є

Ѕ
#layer2/weights/Variable/Adam_1/readIdentitylayer2/weights/Variable/Adam_1*
T0**
_class 
loc:@layer2/weights/Variable*
_output_shapes
:	є

Ѕ
-layer2/biases/Variable/Adam/Initializer/zerosConst*
valueB
*    *
dtype0*)
_class
loc:@layer2/biases/Variable*
_output_shapes
:

В
layer2/biases/Variable/Adam
VariableV2*
shape:
*
dtype0*
	container *
shared_name *)
_class
loc:@layer2/biases/Variable*
_output_shapes
:

ё
"layer2/biases/Variable/Adam/AssignAssignlayer2/biases/Variable/Adam-layer2/biases/Variable/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*)
_class
loc:@layer2/biases/Variable*
_output_shapes
:


 layer2/biases/Variable/Adam/readIdentitylayer2/biases/Variable/Adam*
T0*)
_class
loc:@layer2/biases/Variable*
_output_shapes
:

Ї
/layer2/biases/Variable/Adam_1/Initializer/zerosConst*
valueB
*    *
dtype0*)
_class
loc:@layer2/biases/Variable*
_output_shapes
:

Д
layer2/biases/Variable/Adam_1
VariableV2*
shape:
*
dtype0*
	container *
shared_name *)
_class
loc:@layer2/biases/Variable*
_output_shapes
:

ї
$layer2/biases/Variable/Adam_1/AssignAssignlayer2/biases/Variable/Adam_1/layer2/biases/Variable/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*)
_class
loc:@layer2/biases/Variable*
_output_shapes
:


"layer2/biases/Variable/Adam_1/readIdentitylayer2/biases/Variable/Adam_1*
T0*)
_class
loc:@layer2/biases/Variable*
_output_shapes
:

]
train/Adam/learning_rateConst*
valueB
 *o:*
dtype0*
_output_shapes
: 
U
train/Adam/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
U
train/Adam/beta2Const*
valueB
 *wО?*
dtype0*
_output_shapes
: 
W
train/Adam/epsilonConst*
valueB
 *wЬ+2*
dtype0*
_output_shapes
: 
р
3train/Adam/update_layer1/weights/Variable/ApplyAdam	ApplyAdamlayer1/weights/Variablelayer1/weights/Variable/Adamlayer1/weights/Variable/Adam_1train/beta1_power/readtrain/beta2_power/readtrain/Adam/learning_ratetrain/Adam/beta1train/Adam/beta2train/Adam/epsilonGtrain/gradients/layer1/Wx_plus_b/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( **
_class 
loc:@layer1/weights/Variable* 
_output_shapes
:
є
г
2train/Adam/update_layer1/biases/Variable/ApplyAdam	ApplyAdamlayer1/biases/Variablelayer1/biases/Variable/Adamlayer1/biases/Variable/Adam_1train/beta1_power/readtrain/beta2_power/readtrain/Adam/learning_ratetrain/Adam/beta1train/Adam/beta2train/Adam/epsilonDtrain/gradients/layer1/Wx_plus_b/add_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *)
_class
loc:@layer1/biases/Variable*
_output_shapes	
:є
п
3train/Adam/update_layer2/weights/Variable/ApplyAdam	ApplyAdamlayer2/weights/Variablelayer2/weights/Variable/Adamlayer2/weights/Variable/Adam_1train/beta1_power/readtrain/beta2_power/readtrain/Adam/learning_ratetrain/Adam/beta1train/Adam/beta2train/Adam/epsilonGtrain/gradients/layer2/Wx_plus_b/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( **
_class 
loc:@layer2/weights/Variable*
_output_shapes
:	є

в
2train/Adam/update_layer2/biases/Variable/ApplyAdam	ApplyAdamlayer2/biases/Variablelayer2/biases/Variable/Adamlayer2/biases/Variable/Adam_1train/beta1_power/readtrain/beta2_power/readtrain/Adam/learning_ratetrain/Adam/beta1train/Adam/beta2train/Adam/epsilonDtrain/gradients/layer2/Wx_plus_b/add_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *)
_class
loc:@layer2/biases/Variable*
_output_shapes
:

с
train/Adam/mulMultrain/beta1_power/readtrain/Adam/beta14^train/Adam/update_layer1/weights/Variable/ApplyAdam3^train/Adam/update_layer1/biases/Variable/ApplyAdam4^train/Adam/update_layer2/weights/Variable/ApplyAdam3^train/Adam/update_layer2/biases/Variable/ApplyAdam*
T0*)
_class
loc:@layer1/biases/Variable*
_output_shapes
: 
Г
train/Adam/AssignAssigntrain/beta1_powertrain/Adam/mul*
T0*
validate_shape(*
use_locking( *)
_class
loc:@layer1/biases/Variable*
_output_shapes
: 
у
train/Adam/mul_1Multrain/beta2_power/readtrain/Adam/beta24^train/Adam/update_layer1/weights/Variable/ApplyAdam3^train/Adam/update_layer1/biases/Variable/ApplyAdam4^train/Adam/update_layer2/weights/Variable/ApplyAdam3^train/Adam/update_layer2/biases/Variable/ApplyAdam*
T0*)
_class
loc:@layer1/biases/Variable*
_output_shapes
: 
З
train/Adam/Assign_1Assigntrain/beta2_powertrain/Adam/mul_1*
T0*
validate_shape(*
use_locking( *)
_class
loc:@layer1/biases/Variable*
_output_shapes
: 


train/AdamNoOp4^train/Adam/update_layer1/weights/Variable/ApplyAdam3^train/Adam/update_layer1/biases/Variable/ApplyAdam4^train/Adam/update_layer2/weights/Variable/ApplyAdam3^train/Adam/update_layer2/biases/Variable/ApplyAdam^train/Adam/Assign^train/Adam/Assign_1
n
,accuracy/correct_prediction/ArgMax/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
К
"accuracy/correct_prediction/ArgMaxArgMaxlayer2/activation,accuracy/correct_prediction/ArgMax/dimension*
T0*

Tidx0*
output_type0	*#
_output_shapes
:џџџџџџџџџ

!accuracy/correct_prediction/EqualEqual"accuracy/correct_prediction/ArgMaxinput_1/y-input*
T0	*#
_output_shapes
:џџџџџџџџџ
~
accuracy/accuracy/CastCast!accuracy/correct_prediction/Equal*

SrcT0
*

DstT0*#
_output_shapes
:џџџџџџџџџ
a
accuracy/accuracy/ConstConst*
valueB: *
dtype0*
_output_shapes
:

accuracy/accuracy/MeanMeanaccuracy/accuracy/Castaccuracy/accuracy/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
Z
accuracy_1/tagsConst*
valueB B
accuracy_1*
dtype0*
_output_shapes
: 
e

accuracy_1ScalarSummaryaccuracy_1/tagsaccuracy/accuracy/Mean*
T0*
_output_shapes
: 

Merge/MergeSummaryMergeSummaryinput_reshape/inputinput_reshape_1/inputlayer1/weights/summaries/mean!layer1/weights/summaries/stddev_1layer1/weights/summaries/maxlayer1/weights/summaries/min"layer1/weights/summaries/histogramlayer1/biases/summaries/mean layer1/biases/summaries/stddev_1layer1/biases/summaries/maxlayer1/biases/summaries/min!layer1/biases/summaries/histogram layer1/Wx_plus_b/pre_activationslayer1/activations dropout/dropout_keep_probabilitylayer2/weights/summaries/mean!layer2/weights/summaries/stddev_1layer2/weights/summaries/maxlayer2/weights/summaries/min"layer2/weights/summaries/histogramlayer2/biases/summaries/mean layer2/biases/summaries/stddev_1layer2/biases/summaries/maxlayer2/biases/summaries/min!layer2/biases/summaries/histogram layer2/Wx_plus_b/pre_activationslayer2/activationscross_entropy_1
accuracy_1*
N*
_output_shapes
: 
t
input_2/x-inputPlaceholder*
dtype0*
shape:џџџџџџџџџ*(
_output_shapes
:џџџџџџџџџ
j
input_2/y-inputPlaceholder*
dtype0	*
shape:џџџџџџџџџ*#
_output_shapes
:џџџџџџџџџ
v
input_reshape_2/Reshape/shapeConst*%
valueB"џџџџ         *
dtype0*
_output_shapes
:

input_reshape_2/ReshapeReshapeinput_2/x-inputinput_reshape_2/Reshape/shape*
T0*
Tshape0*/
_output_shapes
:џџџџџџџџџ
o
input_reshape_2/input/tagConst*&
valueB Binput_reshape_2/input*
dtype0*
_output_shapes
: 
­
input_reshape_2/inputImageSummaryinput_reshape_2/input/taginput_reshape_2/Reshape*

max_images
*
T0*
	bad_colorB:џ  џ*
_output_shapes
: 
x
'layer1_1/weights/truncated_normal/shapeConst*
valueB"  є  *
dtype0*
_output_shapes
:
k
&layer1_1/weights/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
m
(layer1_1/weights/truncated_normal/stddevConst*
valueB
 *ЭЬЬ=*
dtype0*
_output_shapes
: 
О
1layer1_1/weights/truncated_normal/TruncatedNormalTruncatedNormal'layer1_1/weights/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0* 
_output_shapes
:
є
Д
%layer1_1/weights/truncated_normal/mulMul1layer1_1/weights/truncated_normal/TruncatedNormal(layer1_1/weights/truncated_normal/stddev*
T0* 
_output_shapes
:
є
Ђ
!layer1_1/weights/truncated_normalAdd%layer1_1/weights/truncated_normal/mul&layer1_1/weights/truncated_normal/mean*
T0* 
_output_shapes
:
є

layer1_1/weights/Variable
VariableV2*
shape:
є*
dtype0*
	container *
shared_name * 
_output_shapes
:
є
ъ
 layer1_1/weights/Variable/AssignAssignlayer1_1/weights/Variable!layer1_1/weights/truncated_normal*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@layer1_1/weights/Variable* 
_output_shapes
:
є

layer1_1/weights/Variable/readIdentitylayer1_1/weights/Variable*
T0*,
_class"
 loc:@layer1_1/weights/Variable* 
_output_shapes
:
є
a
layer1_1/weights/summaries/RankConst*
value	B :*
dtype0*
_output_shapes
: 
h
&layer1_1/weights/summaries/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
h
&layer1_1/weights/summaries/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Т
 layer1_1/weights/summaries/rangeRange&layer1_1/weights/summaries/range/startlayer1_1/weights/summaries/Rank&layer1_1/weights/summaries/range/delta*

Tidx0*
_output_shapes
:
Ї
layer1_1/weights/summaries/MeanMeanlayer1_1/weights/Variable/read layer1_1/weights/summaries/range*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

$layer1_1/weights/summaries/mean/tagsConst*0
value'B% Blayer1_1/weights/summaries/mean*
dtype0*
_output_shapes
: 

layer1_1/weights/summaries/meanScalarSummary$layer1_1/weights/summaries/mean/tagslayer1_1/weights/summaries/Mean*
T0*
_output_shapes
: 

%layer1_1/weights/summaries/stddev/subSublayer1_1/weights/Variable/readlayer1_1/weights/summaries/Mean*
T0* 
_output_shapes
:
є

(layer1_1/weights/summaries/stddev/SquareSquare%layer1_1/weights/summaries/stddev/sub*
T0* 
_output_shapes
:
є
x
'layer1_1/weights/summaries/stddev/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
П
&layer1_1/weights/summaries/stddev/MeanMean(layer1_1/weights/summaries/stddev/Square'layer1_1/weights/summaries/stddev/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
w
&layer1_1/weights/summaries/stddev/SqrtSqrt&layer1_1/weights/summaries/stddev/Mean*
T0*
_output_shapes
: 

(layer1_1/weights/summaries/stddev_1/tagsConst*4
value+B) B#layer1_1/weights/summaries/stddev_1*
dtype0*
_output_shapes
: 
Ї
#layer1_1/weights/summaries/stddev_1ScalarSummary(layer1_1/weights/summaries/stddev_1/tags&layer1_1/weights/summaries/stddev/Sqrt*
T0*
_output_shapes
: 
c
!layer1_1/weights/summaries/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
j
(layer1_1/weights/summaries/range_1/startConst*
value	B : *
dtype0*
_output_shapes
: 
j
(layer1_1/weights/summaries/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ъ
"layer1_1/weights/summaries/range_1Range(layer1_1/weights/summaries/range_1/start!layer1_1/weights/summaries/Rank_1(layer1_1/weights/summaries/range_1/delta*

Tidx0*
_output_shapes
:
Ї
layer1_1/weights/summaries/MaxMaxlayer1_1/weights/Variable/read"layer1_1/weights/summaries/range_1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

#layer1_1/weights/summaries/max/tagsConst*/
value&B$ Blayer1_1/weights/summaries/max*
dtype0*
_output_shapes
: 

layer1_1/weights/summaries/maxScalarSummary#layer1_1/weights/summaries/max/tagslayer1_1/weights/summaries/Max*
T0*
_output_shapes
: 
c
!layer1_1/weights/summaries/Rank_2Const*
value	B :*
dtype0*
_output_shapes
: 
j
(layer1_1/weights/summaries/range_2/startConst*
value	B : *
dtype0*
_output_shapes
: 
j
(layer1_1/weights/summaries/range_2/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ъ
"layer1_1/weights/summaries/range_2Range(layer1_1/weights/summaries/range_2/start!layer1_1/weights/summaries/Rank_2(layer1_1/weights/summaries/range_2/delta*

Tidx0*
_output_shapes
:
Ї
layer1_1/weights/summaries/MinMinlayer1_1/weights/Variable/read"layer1_1/weights/summaries/range_2*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

#layer1_1/weights/summaries/min/tagsConst*/
value&B$ Blayer1_1/weights/summaries/min*
dtype0*
_output_shapes
: 

layer1_1/weights/summaries/minScalarSummary#layer1_1/weights/summaries/min/tagslayer1_1/weights/summaries/Min*
T0*
_output_shapes
: 

(layer1_1/weights/summaries/histogram/tagConst*5
value,B* B$layer1_1/weights/summaries/histogram*
dtype0*
_output_shapes
: 
Ѓ
$layer1_1/weights/summaries/histogramHistogramSummary(layer1_1/weights/summaries/histogram/taglayer1_1/weights/Variable/read*
T0*
_output_shapes
: 
d
layer1_1/biases/ConstConst*
valueBє*ЭЬЬ=*
dtype0*
_output_shapes	
:є

layer1_1/biases/Variable
VariableV2*
shape:є*
dtype0*
	container *
shared_name *
_output_shapes	
:є
ж
layer1_1/biases/Variable/AssignAssignlayer1_1/biases/Variablelayer1_1/biases/Const*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@layer1_1/biases/Variable*
_output_shapes	
:є

layer1_1/biases/Variable/readIdentitylayer1_1/biases/Variable*
T0*+
_class!
loc:@layer1_1/biases/Variable*
_output_shapes	
:є
`
layer1_1/biases/summaries/RankConst*
value	B :*
dtype0*
_output_shapes
: 
g
%layer1_1/biases/summaries/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
g
%layer1_1/biases/summaries/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
О
layer1_1/biases/summaries/rangeRange%layer1_1/biases/summaries/range/startlayer1_1/biases/summaries/Rank%layer1_1/biases/summaries/range/delta*

Tidx0*
_output_shapes
:
Є
layer1_1/biases/summaries/MeanMeanlayer1_1/biases/Variable/readlayer1_1/biases/summaries/range*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

#layer1_1/biases/summaries/mean/tagsConst*/
value&B$ Blayer1_1/biases/summaries/mean*
dtype0*
_output_shapes
: 

layer1_1/biases/summaries/meanScalarSummary#layer1_1/biases/summaries/mean/tagslayer1_1/biases/summaries/Mean*
T0*
_output_shapes
: 

$layer1_1/biases/summaries/stddev/subSublayer1_1/biases/Variable/readlayer1_1/biases/summaries/Mean*
T0*
_output_shapes	
:є
}
'layer1_1/biases/summaries/stddev/SquareSquare$layer1_1/biases/summaries/stddev/sub*
T0*
_output_shapes	
:є
p
&layer1_1/biases/summaries/stddev/ConstConst*
valueB: *
dtype0*
_output_shapes
:
М
%layer1_1/biases/summaries/stddev/MeanMean'layer1_1/biases/summaries/stddev/Square&layer1_1/biases/summaries/stddev/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
u
%layer1_1/biases/summaries/stddev/SqrtSqrt%layer1_1/biases/summaries/stddev/Mean*
T0*
_output_shapes
: 

'layer1_1/biases/summaries/stddev_1/tagsConst*3
value*B( B"layer1_1/biases/summaries/stddev_1*
dtype0*
_output_shapes
: 
Є
"layer1_1/biases/summaries/stddev_1ScalarSummary'layer1_1/biases/summaries/stddev_1/tags%layer1_1/biases/summaries/stddev/Sqrt*
T0*
_output_shapes
: 
b
 layer1_1/biases/summaries/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
i
'layer1_1/biases/summaries/range_1/startConst*
value	B : *
dtype0*
_output_shapes
: 
i
'layer1_1/biases/summaries/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ц
!layer1_1/biases/summaries/range_1Range'layer1_1/biases/summaries/range_1/start layer1_1/biases/summaries/Rank_1'layer1_1/biases/summaries/range_1/delta*

Tidx0*
_output_shapes
:
Є
layer1_1/biases/summaries/MaxMaxlayer1_1/biases/Variable/read!layer1_1/biases/summaries/range_1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

"layer1_1/biases/summaries/max/tagsConst*.
value%B# Blayer1_1/biases/summaries/max*
dtype0*
_output_shapes
: 

layer1_1/biases/summaries/maxScalarSummary"layer1_1/biases/summaries/max/tagslayer1_1/biases/summaries/Max*
T0*
_output_shapes
: 
b
 layer1_1/biases/summaries/Rank_2Const*
value	B :*
dtype0*
_output_shapes
: 
i
'layer1_1/biases/summaries/range_2/startConst*
value	B : *
dtype0*
_output_shapes
: 
i
'layer1_1/biases/summaries/range_2/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ц
!layer1_1/biases/summaries/range_2Range'layer1_1/biases/summaries/range_2/start layer1_1/biases/summaries/Rank_2'layer1_1/biases/summaries/range_2/delta*

Tidx0*
_output_shapes
:
Є
layer1_1/biases/summaries/MinMinlayer1_1/biases/Variable/read!layer1_1/biases/summaries/range_2*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

"layer1_1/biases/summaries/min/tagsConst*.
value%B# Blayer1_1/biases/summaries/min*
dtype0*
_output_shapes
: 

layer1_1/biases/summaries/minScalarSummary"layer1_1/biases/summaries/min/tagslayer1_1/biases/summaries/Min*
T0*
_output_shapes
: 

'layer1_1/biases/summaries/histogram/tagConst*4
value+B) B#layer1_1/biases/summaries/histogram*
dtype0*
_output_shapes
: 
 
#layer1_1/biases/summaries/histogramHistogramSummary'layer1_1/biases/summaries/histogram/taglayer1_1/biases/Variable/read*
T0*
_output_shapes
: 
­
layer1_1/Wx_plus_b/MatMulMatMulinput_2/x-inputlayer1_1/weights/Variable/read*
transpose_a( *
transpose_b( *
T0*(
_output_shapes
:џџџџџџџџџє

layer1_1/Wx_plus_b/addAddlayer1_1/Wx_plus_b/MatMullayer1_1/biases/Variable/read*
T0*(
_output_shapes
:џџџџџџџџџє

&layer1_1/Wx_plus_b/pre_activations/tagConst*3
value*B( B"layer1_1/Wx_plus_b/pre_activations*
dtype0*
_output_shapes
: 

"layer1_1/Wx_plus_b/pre_activationsHistogramSummary&layer1_1/Wx_plus_b/pre_activations/taglayer1_1/Wx_plus_b/add*
T0*
_output_shapes
: 
f
layer1_1/activationRelulayer1_1/Wx_plus_b/add*
T0*(
_output_shapes
:џџџџџџџџџє
m
layer1_1/activations/tagConst*%
valueB Blayer1_1/activations*
dtype0*
_output_shapes
: 
x
layer1_1/activationsHistogramSummarylayer1_1/activations/taglayer1_1/activation*
T0*
_output_shapes
: 
Z
dropout_1/PlaceholderPlaceholder*
dtype0*
shape:*
_output_shapes
:

'dropout_1/dropout_keep_probability/tagsConst*3
value*B( B"dropout_1/dropout_keep_probability*
dtype0*
_output_shapes
: 

"dropout_1/dropout_keep_probabilityScalarSummary'dropout_1/dropout_keep_probability/tagsdropout_1/Placeholder*
T0*
_output_shapes
: 
j
dropout_1/dropout/ShapeShapelayer1_1/activation*
T0*
out_type0*
_output_shapes
:
i
$dropout_1/dropout/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: 
i
$dropout_1/dropout/random_uniform/maxConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Б
.dropout_1/dropout/random_uniform/RandomUniformRandomUniformdropout_1/dropout/Shape*

seed *
seed2 *
dtype0*
T0*(
_output_shapes
:џџџџџџџџџє

$dropout_1/dropout/random_uniform/subSub$dropout_1/dropout/random_uniform/max$dropout_1/dropout/random_uniform/min*
T0*
_output_shapes
: 
Д
$dropout_1/dropout/random_uniform/mulMul.dropout_1/dropout/random_uniform/RandomUniform$dropout_1/dropout/random_uniform/sub*
T0*(
_output_shapes
:џџџџџџџџџє
І
 dropout_1/dropout/random_uniformAdd$dropout_1/dropout/random_uniform/mul$dropout_1/dropout/random_uniform/min*
T0*(
_output_shapes
:џџџџџџџџџє
x
dropout_1/dropout/addAdddropout_1/Placeholder dropout_1/dropout/random_uniform*
T0*
_output_shapes
:
Z
dropout_1/dropout/FloorFloordropout_1/dropout/add*
T0*
_output_shapes
:
o
dropout_1/dropout/divRealDivlayer1_1/activationdropout_1/Placeholder*
T0*
_output_shapes
:

dropout_1/dropout/mulMuldropout_1/dropout/divdropout_1/dropout/Floor*
T0*(
_output_shapes
:џџџџџџџџџє
x
'layer2_1/weights/truncated_normal/shapeConst*
valueB"є  
   *
dtype0*
_output_shapes
:
k
&layer2_1/weights/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
m
(layer2_1/weights/truncated_normal/stddevConst*
valueB
 *ЭЬЬ=*
dtype0*
_output_shapes
: 
Н
1layer2_1/weights/truncated_normal/TruncatedNormalTruncatedNormal'layer2_1/weights/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*
_output_shapes
:	є

Г
%layer2_1/weights/truncated_normal/mulMul1layer2_1/weights/truncated_normal/TruncatedNormal(layer2_1/weights/truncated_normal/stddev*
T0*
_output_shapes
:	є

Ё
!layer2_1/weights/truncated_normalAdd%layer2_1/weights/truncated_normal/mul&layer2_1/weights/truncated_normal/mean*
T0*
_output_shapes
:	є


layer2_1/weights/Variable
VariableV2*
shape:	є
*
dtype0*
	container *
shared_name *
_output_shapes
:	є

щ
 layer2_1/weights/Variable/AssignAssignlayer2_1/weights/Variable!layer2_1/weights/truncated_normal*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@layer2_1/weights/Variable*
_output_shapes
:	є


layer2_1/weights/Variable/readIdentitylayer2_1/weights/Variable*
T0*,
_class"
 loc:@layer2_1/weights/Variable*
_output_shapes
:	є

a
layer2_1/weights/summaries/RankConst*
value	B :*
dtype0*
_output_shapes
: 
h
&layer2_1/weights/summaries/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
h
&layer2_1/weights/summaries/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Т
 layer2_1/weights/summaries/rangeRange&layer2_1/weights/summaries/range/startlayer2_1/weights/summaries/Rank&layer2_1/weights/summaries/range/delta*

Tidx0*
_output_shapes
:
Ї
layer2_1/weights/summaries/MeanMeanlayer2_1/weights/Variable/read layer2_1/weights/summaries/range*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

$layer2_1/weights/summaries/mean/tagsConst*0
value'B% Blayer2_1/weights/summaries/mean*
dtype0*
_output_shapes
: 

layer2_1/weights/summaries/meanScalarSummary$layer2_1/weights/summaries/mean/tagslayer2_1/weights/summaries/Mean*
T0*
_output_shapes
: 

%layer2_1/weights/summaries/stddev/subSublayer2_1/weights/Variable/readlayer2_1/weights/summaries/Mean*
T0*
_output_shapes
:	є


(layer2_1/weights/summaries/stddev/SquareSquare%layer2_1/weights/summaries/stddev/sub*
T0*
_output_shapes
:	є

x
'layer2_1/weights/summaries/stddev/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
П
&layer2_1/weights/summaries/stddev/MeanMean(layer2_1/weights/summaries/stddev/Square'layer2_1/weights/summaries/stddev/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
w
&layer2_1/weights/summaries/stddev/SqrtSqrt&layer2_1/weights/summaries/stddev/Mean*
T0*
_output_shapes
: 

(layer2_1/weights/summaries/stddev_1/tagsConst*4
value+B) B#layer2_1/weights/summaries/stddev_1*
dtype0*
_output_shapes
: 
Ї
#layer2_1/weights/summaries/stddev_1ScalarSummary(layer2_1/weights/summaries/stddev_1/tags&layer2_1/weights/summaries/stddev/Sqrt*
T0*
_output_shapes
: 
c
!layer2_1/weights/summaries/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
j
(layer2_1/weights/summaries/range_1/startConst*
value	B : *
dtype0*
_output_shapes
: 
j
(layer2_1/weights/summaries/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ъ
"layer2_1/weights/summaries/range_1Range(layer2_1/weights/summaries/range_1/start!layer2_1/weights/summaries/Rank_1(layer2_1/weights/summaries/range_1/delta*

Tidx0*
_output_shapes
:
Ї
layer2_1/weights/summaries/MaxMaxlayer2_1/weights/Variable/read"layer2_1/weights/summaries/range_1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

#layer2_1/weights/summaries/max/tagsConst*/
value&B$ Blayer2_1/weights/summaries/max*
dtype0*
_output_shapes
: 

layer2_1/weights/summaries/maxScalarSummary#layer2_1/weights/summaries/max/tagslayer2_1/weights/summaries/Max*
T0*
_output_shapes
: 
c
!layer2_1/weights/summaries/Rank_2Const*
value	B :*
dtype0*
_output_shapes
: 
j
(layer2_1/weights/summaries/range_2/startConst*
value	B : *
dtype0*
_output_shapes
: 
j
(layer2_1/weights/summaries/range_2/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ъ
"layer2_1/weights/summaries/range_2Range(layer2_1/weights/summaries/range_2/start!layer2_1/weights/summaries/Rank_2(layer2_1/weights/summaries/range_2/delta*

Tidx0*
_output_shapes
:
Ї
layer2_1/weights/summaries/MinMinlayer2_1/weights/Variable/read"layer2_1/weights/summaries/range_2*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

#layer2_1/weights/summaries/min/tagsConst*/
value&B$ Blayer2_1/weights/summaries/min*
dtype0*
_output_shapes
: 

layer2_1/weights/summaries/minScalarSummary#layer2_1/weights/summaries/min/tagslayer2_1/weights/summaries/Min*
T0*
_output_shapes
: 

(layer2_1/weights/summaries/histogram/tagConst*5
value,B* B$layer2_1/weights/summaries/histogram*
dtype0*
_output_shapes
: 
Ѓ
$layer2_1/weights/summaries/histogramHistogramSummary(layer2_1/weights/summaries/histogram/taglayer2_1/weights/Variable/read*
T0*
_output_shapes
: 
b
layer2_1/biases/ConstConst*
valueB
*ЭЬЬ=*
dtype0*
_output_shapes
:


layer2_1/biases/Variable
VariableV2*
shape:
*
dtype0*
	container *
shared_name *
_output_shapes
:

е
layer2_1/biases/Variable/AssignAssignlayer2_1/biases/Variablelayer2_1/biases/Const*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@layer2_1/biases/Variable*
_output_shapes
:


layer2_1/biases/Variable/readIdentitylayer2_1/biases/Variable*
T0*+
_class!
loc:@layer2_1/biases/Variable*
_output_shapes
:

`
layer2_1/biases/summaries/RankConst*
value	B :*
dtype0*
_output_shapes
: 
g
%layer2_1/biases/summaries/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
g
%layer2_1/biases/summaries/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
О
layer2_1/biases/summaries/rangeRange%layer2_1/biases/summaries/range/startlayer2_1/biases/summaries/Rank%layer2_1/biases/summaries/range/delta*

Tidx0*
_output_shapes
:
Є
layer2_1/biases/summaries/MeanMeanlayer2_1/biases/Variable/readlayer2_1/biases/summaries/range*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

#layer2_1/biases/summaries/mean/tagsConst*/
value&B$ Blayer2_1/biases/summaries/mean*
dtype0*
_output_shapes
: 

layer2_1/biases/summaries/meanScalarSummary#layer2_1/biases/summaries/mean/tagslayer2_1/biases/summaries/Mean*
T0*
_output_shapes
: 

$layer2_1/biases/summaries/stddev/subSublayer2_1/biases/Variable/readlayer2_1/biases/summaries/Mean*
T0*
_output_shapes
:

|
'layer2_1/biases/summaries/stddev/SquareSquare$layer2_1/biases/summaries/stddev/sub*
T0*
_output_shapes
:

p
&layer2_1/biases/summaries/stddev/ConstConst*
valueB: *
dtype0*
_output_shapes
:
М
%layer2_1/biases/summaries/stddev/MeanMean'layer2_1/biases/summaries/stddev/Square&layer2_1/biases/summaries/stddev/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
u
%layer2_1/biases/summaries/stddev/SqrtSqrt%layer2_1/biases/summaries/stddev/Mean*
T0*
_output_shapes
: 

'layer2_1/biases/summaries/stddev_1/tagsConst*3
value*B( B"layer2_1/biases/summaries/stddev_1*
dtype0*
_output_shapes
: 
Є
"layer2_1/biases/summaries/stddev_1ScalarSummary'layer2_1/biases/summaries/stddev_1/tags%layer2_1/biases/summaries/stddev/Sqrt*
T0*
_output_shapes
: 
b
 layer2_1/biases/summaries/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
i
'layer2_1/biases/summaries/range_1/startConst*
value	B : *
dtype0*
_output_shapes
: 
i
'layer2_1/biases/summaries/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ц
!layer2_1/biases/summaries/range_1Range'layer2_1/biases/summaries/range_1/start layer2_1/biases/summaries/Rank_1'layer2_1/biases/summaries/range_1/delta*

Tidx0*
_output_shapes
:
Є
layer2_1/biases/summaries/MaxMaxlayer2_1/biases/Variable/read!layer2_1/biases/summaries/range_1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

"layer2_1/biases/summaries/max/tagsConst*.
value%B# Blayer2_1/biases/summaries/max*
dtype0*
_output_shapes
: 

layer2_1/biases/summaries/maxScalarSummary"layer2_1/biases/summaries/max/tagslayer2_1/biases/summaries/Max*
T0*
_output_shapes
: 
b
 layer2_1/biases/summaries/Rank_2Const*
value	B :*
dtype0*
_output_shapes
: 
i
'layer2_1/biases/summaries/range_2/startConst*
value	B : *
dtype0*
_output_shapes
: 
i
'layer2_1/biases/summaries/range_2/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ц
!layer2_1/biases/summaries/range_2Range'layer2_1/biases/summaries/range_2/start layer2_1/biases/summaries/Rank_2'layer2_1/biases/summaries/range_2/delta*

Tidx0*
_output_shapes
:
Є
layer2_1/biases/summaries/MinMinlayer2_1/biases/Variable/read!layer2_1/biases/summaries/range_2*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

"layer2_1/biases/summaries/min/tagsConst*.
value%B# Blayer2_1/biases/summaries/min*
dtype0*
_output_shapes
: 

layer2_1/biases/summaries/minScalarSummary"layer2_1/biases/summaries/min/tagslayer2_1/biases/summaries/Min*
T0*
_output_shapes
: 

'layer2_1/biases/summaries/histogram/tagConst*4
value+B) B#layer2_1/biases/summaries/histogram*
dtype0*
_output_shapes
: 
 
#layer2_1/biases/summaries/histogramHistogramSummary'layer2_1/biases/summaries/histogram/taglayer2_1/biases/Variable/read*
T0*
_output_shapes
: 
В
layer2_1/Wx_plus_b/MatMulMatMuldropout_1/dropout/mullayer2_1/weights/Variable/read*
transpose_a( *
transpose_b( *
T0*'
_output_shapes
:џџџџџџџџџ


layer2_1/Wx_plus_b/addAddlayer2_1/Wx_plus_b/MatMullayer2_1/biases/Variable/read*
T0*'
_output_shapes
:џџџџџџџџџ


&layer2_1/Wx_plus_b/pre_activations/tagConst*3
value*B( B"layer2_1/Wx_plus_b/pre_activations*
dtype0*
_output_shapes
: 

"layer2_1/Wx_plus_b/pre_activationsHistogramSummary&layer2_1/Wx_plus_b/pre_activations/taglayer2_1/Wx_plus_b/add*
T0*
_output_shapes
: 
i
layer2_1/activationIdentitylayer2_1/Wx_plus_b/add*
T0*'
_output_shapes
:џџџџџџџџџ

m
layer2_1/activations/tagConst*%
valueB Blayer2_1/activations*
dtype0*
_output_shapes
: 
x
layer2_1/activationsHistogramSummarylayer2_1/activations/taglayer2_1/activation*
T0*
_output_shapes
: 

=cross_entropy_2/total/sparse_softmax_cross_entropy_loss/ConstConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

Fcross_entropy_2/total/sparse_softmax_cross_entropy_loss/xentropy/ShapeShapeinput_2/y-input*
T0	*
out_type0*
_output_shapes
:
ц
Icross_entropy_2/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy#SparseSoftmaxCrossEntropyWithLogitslayer2_1/activationinput_2/y-input*
T0*
Tlabels0	*6
_output_shapes$
":џџџџџџџџџ:џџџџџџџџџ


Zcross_entropy_2/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/weights/shapeConst*
valueB *
dtype0*
_output_shapes
: 

Ycross_entropy_2/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/weights/rankConst*
value	B : *
dtype0*
_output_shapes
: 
т
Ycross_entropy_2/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/values/shapeShapeIcross_entropy_2/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy*
T0*
out_type0*
_output_shapes
:

Xcross_entropy_2/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
p
hcross_entropy_2/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_successNoOp
х
;cross_entropy_2/total/sparse_softmax_cross_entropy_loss/MulMulIcross_entropy_2/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy=cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Consti^cross_entropy_2/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
T0*#
_output_shapes
:џџџџџџџџџ
є
?cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Const_1Consti^cross_entropy_2/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB: *
dtype0*
_output_shapes
:
ў
;cross_entropy_2/total/sparse_softmax_cross_entropy_loss/SumSum;cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Mul?cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Const_1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
ћ
Kcross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/Equal/yConsti^cross_entropy_2/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
џ
Icross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/EqualEqual=cross_entropy_2/total/sparse_softmax_cross_entropy_loss/ConstKcross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/Equal/y*
T0*
_output_shapes
: 
ў
Ncross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/zeros_likeConsti^cross_entropy_2/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 

Scross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/ones_like/ShapeConsti^cross_entropy_2/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 

Scross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/ones_like/ConstConsti^cross_entropy_2/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 
 
Mcross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/ones_likeFillScross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/ones_like/ShapeScross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/ones_like/Const*
T0*
_output_shapes
: 
п
Jcross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/SelectSelectIcross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/EqualNcross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/zeros_likeMcross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/ones_like*
T0*
_output_shapes
: 
І
xcross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/shapeConsti^cross_entropy_2/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
Є
wcross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/rankConsti^cross_entropy_2/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
value	B : *
dtype0*
_output_shapes
: 
ы
wcross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/shapeShapeIcross_entropy_2/total/sparse_softmax_cross_entropy_loss/xentropy/xentropyi^cross_entropy_2/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
T0*
out_type0*
_output_shapes
:
Ѓ
vcross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/rankConsti^cross_entropy_2/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
value	B :*
dtype0*
_output_shapes
: 
њ
cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOpi^cross_entropy_2/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success
у
ecross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/ShapeShapeIcross_entropy_2/total/sparse_softmax_cross_entropy_loss/xentropy/xentropyi^cross_entropy_2/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success^cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
T0*
out_type0*
_output_shapes
:

ecross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/ConstConsti^cross_entropy_2/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success^cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 
у
_cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_likeFillecross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/Shapeecross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/Const*
T0*#
_output_shapes
:џџџџџџџџџ
З
Ucross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weightsMulJcross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/Select_cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like*
T0*#
_output_shapes
:џџџџџџџџџ
ў
Icross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/ConstConsti^cross_entropy_2/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB: *
dtype0*
_output_shapes
:
Њ
Ccross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_presentSumUcross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weightsIcross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
э
?cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Const_2Consti^cross_entropy_2/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 

=cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Sum_1Sum;cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Sum?cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Const_2*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
ё
Across_entropy_2/total/sparse_softmax_cross_entropy_loss/Greater/yConsti^cross_entropy_2/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
ѓ
?cross_entropy_2/total/sparse_softmax_cross_entropy_loss/GreaterGreaterCcross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_presentAcross_entropy_2/total/sparse_softmax_cross_entropy_loss/Greater/y*
T0*
_output_shapes
: 
я
?cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Equal/yConsti^cross_entropy_2/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
э
=cross_entropy_2/total/sparse_softmax_cross_entropy_loss/EqualEqualCcross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present?cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Equal/y*
T0*
_output_shapes
: 
ѕ
Gcross_entropy_2/total/sparse_softmax_cross_entropy_loss/ones_like/ShapeConsti^cross_entropy_2/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
ї
Gcross_entropy_2/total/sparse_softmax_cross_entropy_loss/ones_like/ConstConsti^cross_entropy_2/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ќ
Across_entropy_2/total/sparse_softmax_cross_entropy_loss/ones_likeFillGcross_entropy_2/total/sparse_softmax_cross_entropy_loss/ones_like/ShapeGcross_entropy_2/total/sparse_softmax_cross_entropy_loss/ones_like/Const*
T0*
_output_shapes
: 
А
>cross_entropy_2/total/sparse_softmax_cross_entropy_loss/SelectSelect=cross_entropy_2/total/sparse_softmax_cross_entropy_loss/EqualAcross_entropy_2/total/sparse_softmax_cross_entropy_loss/ones_likeCcross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present*
T0*
_output_shapes
: 
ц
;cross_entropy_2/total/sparse_softmax_cross_entropy_loss/divRealDiv=cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Sum_1>cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 
ђ
Bcross_entropy_2/total/sparse_softmax_cross_entropy_loss/zeros_likeConsti^cross_entropy_2/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
Њ
=cross_entropy_2/total/sparse_softmax_cross_entropy_loss/valueSelect?cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Greater;cross_entropy_2/total/sparse_softmax_cross_entropy_loss/divBcross_entropy_2/total/sparse_softmax_cross_entropy_loss/zeros_like*
T0*
_output_shapes
: 
d
cross_entropy_3/tagsConst* 
valueB Bcross_entropy_3*
dtype0*
_output_shapes
: 

cross_entropy_3ScalarSummarycross_entropy_3/tags=cross_entropy_2/total/sparse_softmax_cross_entropy_loss/value*
T0*
_output_shapes
: 
Z
train_1/gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
`
train_1/gradients/grad_ys_0Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
train_1/gradients/FillFilltrain_1/gradients/Shapetrain_1/gradients/grad_ys_0*
T0*
_output_shapes
: 
Є
_train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/value_grad/zeros_likeConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Р
[train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/value_grad/SelectSelect?cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Greatertrain_1/gradients/Fill_train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/value_grad/zeros_like*
T0*
_output_shapes
: 
Т
]train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/value_grad/Select_1Select?cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Greater_train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/value_grad/zeros_liketrain_1/gradients/Fill*
T0*
_output_shapes
: 
Ћ
etrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/value_grad/tuple/group_depsNoOp\^train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/value_grad/Select^^train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/value_grad/Select_1
Я
mtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/value_grad/tuple/control_dependencyIdentity[train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/value_grad/Selectf^train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/value_grad/tuple/group_deps*
T0*n
_classd
b`loc:@train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/value_grad/Select*
_output_shapes
: 
е
otrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/value_grad/tuple/control_dependency_1Identity]train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/value_grad/Select_1f^train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/value_grad/tuple/group_deps*
T0*p
_classf
dbloc:@train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/value_grad/Select_1*
_output_shapes
: 

Xtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 

Ztrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
є
htrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/BroadcastGradientArgsBroadcastGradientArgsXtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/ShapeZtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Е
Ztrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/RealDivRealDivmtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/value_grad/tuple/control_dependency>cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 
у
Vtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/SumSumZtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/RealDivhtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
Ц
Ztrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/ReshapeReshapeVtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/SumXtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
Н
Vtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/NegNeg=cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Sum_1*
T0*
_output_shapes
: 
 
\train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/RealDiv_1RealDivVtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/Neg>cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 
І
\train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/RealDiv_2RealDiv\train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/RealDiv_1>cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 
Ы
Vtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/mulMulmtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/value_grad/tuple/control_dependency\train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/RealDiv_2*
T0*
_output_shapes
: 
у
Xtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/Sum_1SumVtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/muljtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
Ь
\train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/Reshape_1ReshapeXtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/Sum_1Ztrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
Ї
ctrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/group_depsNoOp[^train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/Reshape]^train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/Reshape_1
Щ
ktrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/control_dependencyIdentityZtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/Reshaped^train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/group_deps*
T0*m
_classc
a_loc:@train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/Reshape*
_output_shapes
: 
Я
mtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/control_dependency_1Identity\train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/Reshape_1d^train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/group_deps*
T0*o
_classe
caloc:@train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/Reshape_1*
_output_shapes
: 
Ѕ
btrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/Reshape/shapeConst*
valueB *
dtype0*
_output_shapes
: 
ч
\train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/ReshapeReshapektrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/control_dependencybtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
: 
І
ctrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/Tile/multiplesConst*
valueB *
dtype0*
_output_shapes
: 
з
Ytrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/TileTile\train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/Reshapectrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/Tile/multiples*
T0*

Tmultiples0*
_output_shapes
: 
Ѕ
`train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Select_grad/zeros_likeConst*
valueB
 *    *
dtype0*
_output_shapes
: 

\train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Select_grad/SelectSelect=cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Equalmtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/control_dependency_1`train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Select_grad/zeros_like*
T0*
_output_shapes
: 

^train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Select_grad/Select_1Select=cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Equal`train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Select_grad/zeros_likemtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/control_dependency_1*
T0*
_output_shapes
: 
Ў
ftrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Select_grad/tuple/group_depsNoOp]^train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Select_grad/Select_^train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Select_grad/Select_1
г
ntrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Select_grad/tuple/control_dependencyIdentity\train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Select_grad/Selectg^train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Select_grad/tuple/group_deps*
T0*o
_classe
caloc:@train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Select_grad/Select*
_output_shapes
: 
й
ptrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Select_grad/tuple/control_dependency_1Identity^train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Select_grad/Select_1g^train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Select_grad/tuple/group_deps*
T0*q
_classg
ecloc:@train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Select_grad/Select_1*
_output_shapes
: 
Њ
`train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Sum_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
е
Ztrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Sum_grad/ReshapeReshapeYtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/Tile`train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Sum_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
г
Xtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Sum_grad/ShapeShape;cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Mul*
T0*
out_type0*
_output_shapes
:
е
Wtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Sum_grad/TileTileZtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Sum_grad/ReshapeXtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Sum_grad/Shape*
T0*

Tmultiples0*#
_output_shapes
:џџџџџџџџџ
с
Xtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Mul_grad/ShapeShapeIcross_entropy_2/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy*
T0*
out_type0*
_output_shapes
:

Ztrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Mul_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
є
htrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgsBroadcastGradientArgsXtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Mul_grad/ShapeZtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Mul_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Ѓ
Vtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Mul_grad/mulMulWtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Sum_grad/Tile=cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Const*
T0*#
_output_shapes
:џџџџџџџџџ
п
Vtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Mul_grad/SumSumVtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Mul_grad/mulhtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
г
Ztrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Mul_grad/ReshapeReshapeVtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Mul_grad/SumXtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Mul_grad/Shape*
T0*
Tshape0*#
_output_shapes
:џџџџџџџџџ
Б
Xtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Mul_grad/mul_1MulIcross_entropy_2/total/sparse_softmax_cross_entropy_loss/xentropy/xentropyWtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Sum_grad/Tile*
T0*#
_output_shapes
:џџџџџџџџџ
х
Xtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Mul_grad/Sum_1SumXtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Mul_grad/mul_1jtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
Ь
\train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape_1ReshapeXtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Mul_grad/Sum_1Ztrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Mul_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
Ї
ctrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/group_depsNoOp[^train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape]^train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape_1
ж
ktrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/control_dependencyIdentityZtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Mul_grad/Reshaped^train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/group_deps*
T0*m
_classc
a_loc:@train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape*#
_output_shapes
:џџџџџџџџџ
Я
mtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/control_dependency_1Identity\train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape_1d^train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/group_deps*
T0*o
_classe
caloc:@train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape_1*
_output_shapes
: 
В
htrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
ќ
btrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present_grad/ReshapeReshapeptrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Select_grad/tuple/control_dependency_1htrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
ѕ
`train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present_grad/ShapeShapeUcross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights*
T0*
out_type0*
_output_shapes
:
э
_train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present_grad/TileTilebtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present_grad/Reshape`train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present_grad/Shape*
T0*

Tmultiples0*#
_output_shapes
:џџџџџџџџџ
Е
rtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 

ttrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Shape_1Shape_cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like*
T0*
out_type0*
_output_shapes
:
У
train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/BroadcastGradientArgsBroadcastGradientArgsrtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Shapettrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
ч
ptrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/mulMul_train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present_grad/Tile_cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like*
T0*#
_output_shapes
:џџџџџџџџџ
Ў
ptrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/SumSumptrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/multrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:

ttrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/ReshapeReshapeptrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Sumrtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
д
rtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/mul_1MulJcross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/Select_train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present_grad/Tile*
T0*#
_output_shapes
:џџџџџџџџџ
Д
rtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Sum_1Sumrtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/mul_1train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
Ї
vtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape_1Reshapertrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Sum_1ttrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:џџџџџџџџџ
ѕ
}train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/group_depsNoOpu^train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshapew^train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape_1
Г
train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/control_dependencyIdentityttrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape~^train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/group_deps*
T0*
_class}
{yloc:@train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape*
_output_shapes
: 
Ц
train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/control_dependency_1Identityvtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape_1~^train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/group_deps*
T0*
_class
}{loc:@train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape_1*#
_output_shapes
:џџџџџџџџџ
Ц
|train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Ч
ztrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like_grad/SumSumtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/control_dependency_1|train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like_grad/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
Ј
train_1/gradients/zeros_like	ZerosLikeKcross_entropy_2/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy:1*
T0*'
_output_shapes
:џџџџџџџџџ

Й
ptrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/PreventGradientPreventGradientKcross_entropy_2/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy:1*
T0*Д
messageЈЅCurrently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*'
_output_shapes
:џџџџџџџџџ

К
otrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/ExpandDims/dimConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

ktrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/ExpandDims
ExpandDimsktrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/control_dependencyotrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/ExpandDims/dim*
T0*

Tdim0*'
_output_shapes
:џџџџџџџџџ
ќ
dtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/mulMulktrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/ExpandDimsptrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/PreventGradient*
T0*'
_output_shapes
:џџџџџџџџџ


3train_1/gradients/layer2_1/Wx_plus_b/add_grad/ShapeShapelayer2_1/Wx_plus_b/MatMul*
T0*
out_type0*
_output_shapes
:

5train_1/gradients/layer2_1/Wx_plus_b/add_grad/Shape_1Const*
valueB:
*
dtype0*
_output_shapes
:

Ctrain_1/gradients/layer2_1/Wx_plus_b/add_grad/BroadcastGradientArgsBroadcastGradientArgs3train_1/gradients/layer2_1/Wx_plus_b/add_grad/Shape5train_1/gradients/layer2_1/Wx_plus_b/add_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Ѓ
1train_1/gradients/layer2_1/Wx_plus_b/add_grad/SumSumdtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/mulCtrain_1/gradients/layer2_1/Wx_plus_b/add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
ш
5train_1/gradients/layer2_1/Wx_plus_b/add_grad/ReshapeReshape1train_1/gradients/layer2_1/Wx_plus_b/add_grad/Sum3train_1/gradients/layer2_1/Wx_plus_b/add_grad/Shape*
T0*
Tshape0*'
_output_shapes
:џџџџџџџџџ

Ї
3train_1/gradients/layer2_1/Wx_plus_b/add_grad/Sum_1Sumdtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/mulEtrain_1/gradients/layer2_1/Wx_plus_b/add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
с
7train_1/gradients/layer2_1/Wx_plus_b/add_grad/Reshape_1Reshape3train_1/gradients/layer2_1/Wx_plus_b/add_grad/Sum_15train_1/gradients/layer2_1/Wx_plus_b/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:

И
>train_1/gradients/layer2_1/Wx_plus_b/add_grad/tuple/group_depsNoOp6^train_1/gradients/layer2_1/Wx_plus_b/add_grad/Reshape8^train_1/gradients/layer2_1/Wx_plus_b/add_grad/Reshape_1
Ц
Ftrain_1/gradients/layer2_1/Wx_plus_b/add_grad/tuple/control_dependencyIdentity5train_1/gradients/layer2_1/Wx_plus_b/add_grad/Reshape?^train_1/gradients/layer2_1/Wx_plus_b/add_grad/tuple/group_deps*
T0*H
_class>
<:loc:@train_1/gradients/layer2_1/Wx_plus_b/add_grad/Reshape*'
_output_shapes
:џџџџџџџџџ

П
Htrain_1/gradients/layer2_1/Wx_plus_b/add_grad/tuple/control_dependency_1Identity7train_1/gradients/layer2_1/Wx_plus_b/add_grad/Reshape_1?^train_1/gradients/layer2_1/Wx_plus_b/add_grad/tuple/group_deps*
T0*J
_class@
><loc:@train_1/gradients/layer2_1/Wx_plus_b/add_grad/Reshape_1*
_output_shapes
:


7train_1/gradients/layer2_1/Wx_plus_b/MatMul_grad/MatMulMatMulFtrain_1/gradients/layer2_1/Wx_plus_b/add_grad/tuple/control_dependencylayer2_1/weights/Variable/read*
transpose_a( *
transpose_b(*
T0*(
_output_shapes
:џџџџџџџџџє
ђ
9train_1/gradients/layer2_1/Wx_plus_b/MatMul_grad/MatMul_1MatMuldropout_1/dropout/mulFtrain_1/gradients/layer2_1/Wx_plus_b/add_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0*
_output_shapes
:	є

П
Atrain_1/gradients/layer2_1/Wx_plus_b/MatMul_grad/tuple/group_depsNoOp8^train_1/gradients/layer2_1/Wx_plus_b/MatMul_grad/MatMul:^train_1/gradients/layer2_1/Wx_plus_b/MatMul_grad/MatMul_1
б
Itrain_1/gradients/layer2_1/Wx_plus_b/MatMul_grad/tuple/control_dependencyIdentity7train_1/gradients/layer2_1/Wx_plus_b/MatMul_grad/MatMulB^train_1/gradients/layer2_1/Wx_plus_b/MatMul_grad/tuple/group_deps*
T0*J
_class@
><loc:@train_1/gradients/layer2_1/Wx_plus_b/MatMul_grad/MatMul*(
_output_shapes
:џџџџџџџџџє
Ю
Ktrain_1/gradients/layer2_1/Wx_plus_b/MatMul_grad/tuple/control_dependency_1Identity9train_1/gradients/layer2_1/Wx_plus_b/MatMul_grad/MatMul_1B^train_1/gradients/layer2_1/Wx_plus_b/MatMul_grad/tuple/group_deps*
T0*L
_classB
@>loc:@train_1/gradients/layer2_1/Wx_plus_b/MatMul_grad/MatMul_1*
_output_shapes
:	є


2train_1/gradients/dropout_1/dropout/mul_grad/ShapeShapedropout_1/dropout/div*
T0*
out_type0*#
_output_shapes
:џџџџџџџџџ

4train_1/gradients/dropout_1/dropout/mul_grad/Shape_1Shapedropout_1/dropout/Floor*
T0*
out_type0*#
_output_shapes
:џџџџџџџџџ

Btrain_1/gradients/dropout_1/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs2train_1/gradients/dropout_1/dropout/mul_grad/Shape4train_1/gradients/dropout_1/dropout/mul_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
О
0train_1/gradients/dropout_1/dropout/mul_grad/mulMulItrain_1/gradients/layer2_1/Wx_plus_b/MatMul_grad/tuple/control_dependencydropout_1/dropout/Floor*
T0*
_output_shapes
:
э
0train_1/gradients/dropout_1/dropout/mul_grad/SumSum0train_1/gradients/dropout_1/dropout/mul_grad/mulBtrain_1/gradients/dropout_1/dropout/mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
ж
4train_1/gradients/dropout_1/dropout/mul_grad/ReshapeReshape0train_1/gradients/dropout_1/dropout/mul_grad/Sum2train_1/gradients/dropout_1/dropout/mul_grad/Shape*
T0*
Tshape0*
_output_shapes
:
О
2train_1/gradients/dropout_1/dropout/mul_grad/mul_1Muldropout_1/dropout/divItrain_1/gradients/layer2_1/Wx_plus_b/MatMul_grad/tuple/control_dependency*
T0*
_output_shapes
:
ѓ
2train_1/gradients/dropout_1/dropout/mul_grad/Sum_1Sum2train_1/gradients/dropout_1/dropout/mul_grad/mul_1Dtrain_1/gradients/dropout_1/dropout/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
м
6train_1/gradients/dropout_1/dropout/mul_grad/Reshape_1Reshape2train_1/gradients/dropout_1/dropout/mul_grad/Sum_14train_1/gradients/dropout_1/dropout/mul_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
Е
=train_1/gradients/dropout_1/dropout/mul_grad/tuple/group_depsNoOp5^train_1/gradients/dropout_1/dropout/mul_grad/Reshape7^train_1/gradients/dropout_1/dropout/mul_grad/Reshape_1
Г
Etrain_1/gradients/dropout_1/dropout/mul_grad/tuple/control_dependencyIdentity4train_1/gradients/dropout_1/dropout/mul_grad/Reshape>^train_1/gradients/dropout_1/dropout/mul_grad/tuple/group_deps*
T0*G
_class=
;9loc:@train_1/gradients/dropout_1/dropout/mul_grad/Reshape*
_output_shapes
:
Й
Gtrain_1/gradients/dropout_1/dropout/mul_grad/tuple/control_dependency_1Identity6train_1/gradients/dropout_1/dropout/mul_grad/Reshape_1>^train_1/gradients/dropout_1/dropout/mul_grad/tuple/group_deps*
T0*I
_class?
=;loc:@train_1/gradients/dropout_1/dropout/mul_grad/Reshape_1*
_output_shapes
:

2train_1/gradients/dropout_1/dropout/div_grad/ShapeShapelayer1_1/activation*
T0*
out_type0*
_output_shapes
:

4train_1/gradients/dropout_1/dropout/div_grad/Shape_1Shapedropout_1/Placeholder*
T0*
out_type0*#
_output_shapes
:џџџџџџџџџ

Btrain_1/gradients/dropout_1/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs2train_1/gradients/dropout_1/dropout/div_grad/Shape4train_1/gradients/dropout_1/dropout/div_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Р
4train_1/gradients/dropout_1/dropout/div_grad/RealDivRealDivEtrain_1/gradients/dropout_1/dropout/mul_grad/tuple/control_dependencydropout_1/Placeholder*
T0*
_output_shapes
:
ё
0train_1/gradients/dropout_1/dropout/div_grad/SumSum4train_1/gradients/dropout_1/dropout/div_grad/RealDivBtrain_1/gradients/dropout_1/dropout/div_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
ц
4train_1/gradients/dropout_1/dropout/div_grad/ReshapeReshape0train_1/gradients/dropout_1/dropout/div_grad/Sum2train_1/gradients/dropout_1/dropout/div_grad/Shape*
T0*
Tshape0*(
_output_shapes
:џџџџџџџџџє

0train_1/gradients/dropout_1/dropout/div_grad/NegNeglayer1_1/activation*
T0*(
_output_shapes
:џџџџџџџџџє
­
6train_1/gradients/dropout_1/dropout/div_grad/RealDiv_1RealDiv0train_1/gradients/dropout_1/dropout/div_grad/Negdropout_1/Placeholder*
T0*
_output_shapes
:
Г
6train_1/gradients/dropout_1/dropout/div_grad/RealDiv_2RealDiv6train_1/gradients/dropout_1/dropout/div_grad/RealDiv_1dropout_1/Placeholder*
T0*
_output_shapes
:
й
0train_1/gradients/dropout_1/dropout/div_grad/mulMulEtrain_1/gradients/dropout_1/dropout/mul_grad/tuple/control_dependency6train_1/gradients/dropout_1/dropout/div_grad/RealDiv_2*
T0*
_output_shapes
:
ё
2train_1/gradients/dropout_1/dropout/div_grad/Sum_1Sum0train_1/gradients/dropout_1/dropout/div_grad/mulDtrain_1/gradients/dropout_1/dropout/div_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
м
6train_1/gradients/dropout_1/dropout/div_grad/Reshape_1Reshape2train_1/gradients/dropout_1/dropout/div_grad/Sum_14train_1/gradients/dropout_1/dropout/div_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
Е
=train_1/gradients/dropout_1/dropout/div_grad/tuple/group_depsNoOp5^train_1/gradients/dropout_1/dropout/div_grad/Reshape7^train_1/gradients/dropout_1/dropout/div_grad/Reshape_1
У
Etrain_1/gradients/dropout_1/dropout/div_grad/tuple/control_dependencyIdentity4train_1/gradients/dropout_1/dropout/div_grad/Reshape>^train_1/gradients/dropout_1/dropout/div_grad/tuple/group_deps*
T0*G
_class=
;9loc:@train_1/gradients/dropout_1/dropout/div_grad/Reshape*(
_output_shapes
:џџџџџџџџџє
Й
Gtrain_1/gradients/dropout_1/dropout/div_grad/tuple/control_dependency_1Identity6train_1/gradients/dropout_1/dropout/div_grad/Reshape_1>^train_1/gradients/dropout_1/dropout/div_grad/tuple/group_deps*
T0*I
_class?
=;loc:@train_1/gradients/dropout_1/dropout/div_grad/Reshape_1*
_output_shapes
:
Ю
3train_1/gradients/layer1_1/activation_grad/ReluGradReluGradEtrain_1/gradients/dropout_1/dropout/div_grad/tuple/control_dependencylayer1_1/activation*
T0*(
_output_shapes
:џџџџџџџџџє

3train_1/gradients/layer1_1/Wx_plus_b/add_grad/ShapeShapelayer1_1/Wx_plus_b/MatMul*
T0*
out_type0*
_output_shapes
:

5train_1/gradients/layer1_1/Wx_plus_b/add_grad/Shape_1Const*
valueB:є*
dtype0*
_output_shapes
:

Ctrain_1/gradients/layer1_1/Wx_plus_b/add_grad/BroadcastGradientArgsBroadcastGradientArgs3train_1/gradients/layer1_1/Wx_plus_b/add_grad/Shape5train_1/gradients/layer1_1/Wx_plus_b/add_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
ђ
1train_1/gradients/layer1_1/Wx_plus_b/add_grad/SumSum3train_1/gradients/layer1_1/activation_grad/ReluGradCtrain_1/gradients/layer1_1/Wx_plus_b/add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
щ
5train_1/gradients/layer1_1/Wx_plus_b/add_grad/ReshapeReshape1train_1/gradients/layer1_1/Wx_plus_b/add_grad/Sum3train_1/gradients/layer1_1/Wx_plus_b/add_grad/Shape*
T0*
Tshape0*(
_output_shapes
:џџџџџџџџџє
і
3train_1/gradients/layer1_1/Wx_plus_b/add_grad/Sum_1Sum3train_1/gradients/layer1_1/activation_grad/ReluGradEtrain_1/gradients/layer1_1/Wx_plus_b/add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
т
7train_1/gradients/layer1_1/Wx_plus_b/add_grad/Reshape_1Reshape3train_1/gradients/layer1_1/Wx_plus_b/add_grad/Sum_15train_1/gradients/layer1_1/Wx_plus_b/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes	
:є
И
>train_1/gradients/layer1_1/Wx_plus_b/add_grad/tuple/group_depsNoOp6^train_1/gradients/layer1_1/Wx_plus_b/add_grad/Reshape8^train_1/gradients/layer1_1/Wx_plus_b/add_grad/Reshape_1
Ч
Ftrain_1/gradients/layer1_1/Wx_plus_b/add_grad/tuple/control_dependencyIdentity5train_1/gradients/layer1_1/Wx_plus_b/add_grad/Reshape?^train_1/gradients/layer1_1/Wx_plus_b/add_grad/tuple/group_deps*
T0*H
_class>
<:loc:@train_1/gradients/layer1_1/Wx_plus_b/add_grad/Reshape*(
_output_shapes
:џџџџџџџџџє
Р
Htrain_1/gradients/layer1_1/Wx_plus_b/add_grad/tuple/control_dependency_1Identity7train_1/gradients/layer1_1/Wx_plus_b/add_grad/Reshape_1?^train_1/gradients/layer1_1/Wx_plus_b/add_grad/tuple/group_deps*
T0*J
_class@
><loc:@train_1/gradients/layer1_1/Wx_plus_b/add_grad/Reshape_1*
_output_shapes	
:є

7train_1/gradients/layer1_1/Wx_plus_b/MatMul_grad/MatMulMatMulFtrain_1/gradients/layer1_1/Wx_plus_b/add_grad/tuple/control_dependencylayer1_1/weights/Variable/read*
transpose_a( *
transpose_b(*
T0*(
_output_shapes
:џџџџџџџџџ
э
9train_1/gradients/layer1_1/Wx_plus_b/MatMul_grad/MatMul_1MatMulinput_2/x-inputFtrain_1/gradients/layer1_1/Wx_plus_b/add_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0* 
_output_shapes
:
є
П
Atrain_1/gradients/layer1_1/Wx_plus_b/MatMul_grad/tuple/group_depsNoOp8^train_1/gradients/layer1_1/Wx_plus_b/MatMul_grad/MatMul:^train_1/gradients/layer1_1/Wx_plus_b/MatMul_grad/MatMul_1
б
Itrain_1/gradients/layer1_1/Wx_plus_b/MatMul_grad/tuple/control_dependencyIdentity7train_1/gradients/layer1_1/Wx_plus_b/MatMul_grad/MatMulB^train_1/gradients/layer1_1/Wx_plus_b/MatMul_grad/tuple/group_deps*
T0*J
_class@
><loc:@train_1/gradients/layer1_1/Wx_plus_b/MatMul_grad/MatMul*(
_output_shapes
:џџџџџџџџџ
Я
Ktrain_1/gradients/layer1_1/Wx_plus_b/MatMul_grad/tuple/control_dependency_1Identity9train_1/gradients/layer1_1/Wx_plus_b/MatMul_grad/MatMul_1B^train_1/gradients/layer1_1/Wx_plus_b/MatMul_grad/tuple/group_deps*
T0*L
_classB
@>loc:@train_1/gradients/layer1_1/Wx_plus_b/MatMul_grad/MatMul_1* 
_output_shapes
:
є

!train_1/beta1_power/initial_valueConst*
valueB
 *fff?*
dtype0*+
_class!
loc:@layer1_1/biases/Variable*
_output_shapes
: 
Є
train_1/beta1_power
VariableV2*
shape: *
dtype0*
	container *
shared_name *+
_class!
loc:@layer1_1/biases/Variable*
_output_shapes
: 
г
train_1/beta1_power/AssignAssigntrain_1/beta1_power!train_1/beta1_power/initial_value*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@layer1_1/biases/Variable*
_output_shapes
: 

train_1/beta1_power/readIdentitytrain_1/beta1_power*
T0*+
_class!
loc:@layer1_1/biases/Variable*
_output_shapes
: 

!train_1/beta2_power/initial_valueConst*
valueB
 *wО?*
dtype0*+
_class!
loc:@layer1_1/biases/Variable*
_output_shapes
: 
Є
train_1/beta2_power
VariableV2*
shape: *
dtype0*
	container *
shared_name *+
_class!
loc:@layer1_1/biases/Variable*
_output_shapes
: 
г
train_1/beta2_power/AssignAssigntrain_1/beta2_power!train_1/beta2_power/initial_value*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@layer1_1/biases/Variable*
_output_shapes
: 

train_1/beta2_power/readIdentitytrain_1/beta2_power*
T0*+
_class!
loc:@layer1_1/biases/Variable*
_output_shapes
: 
З
0layer1_1/weights/Variable/Adam/Initializer/zerosConst*
valueB
є*    *
dtype0*,
_class"
 loc:@layer1_1/weights/Variable* 
_output_shapes
:
є
Ф
layer1_1/weights/Variable/Adam
VariableV2*
shape:
є*
dtype0*
	container *
shared_name *,
_class"
 loc:@layer1_1/weights/Variable* 
_output_shapes
:
є

%layer1_1/weights/Variable/Adam/AssignAssignlayer1_1/weights/Variable/Adam0layer1_1/weights/Variable/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@layer1_1/weights/Variable* 
_output_shapes
:
є
Ј
#layer1_1/weights/Variable/Adam/readIdentitylayer1_1/weights/Variable/Adam*
T0*,
_class"
 loc:@layer1_1/weights/Variable* 
_output_shapes
:
є
Й
2layer1_1/weights/Variable/Adam_1/Initializer/zerosConst*
valueB
є*    *
dtype0*,
_class"
 loc:@layer1_1/weights/Variable* 
_output_shapes
:
є
Ц
 layer1_1/weights/Variable/Adam_1
VariableV2*
shape:
є*
dtype0*
	container *
shared_name *,
_class"
 loc:@layer1_1/weights/Variable* 
_output_shapes
:
є

'layer1_1/weights/Variable/Adam_1/AssignAssign layer1_1/weights/Variable/Adam_12layer1_1/weights/Variable/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@layer1_1/weights/Variable* 
_output_shapes
:
є
Ќ
%layer1_1/weights/Variable/Adam_1/readIdentity layer1_1/weights/Variable/Adam_1*
T0*,
_class"
 loc:@layer1_1/weights/Variable* 
_output_shapes
:
є
Ћ
/layer1_1/biases/Variable/Adam/Initializer/zerosConst*
valueBє*    *
dtype0*+
_class!
loc:@layer1_1/biases/Variable*
_output_shapes	
:є
И
layer1_1/biases/Variable/Adam
VariableV2*
shape:є*
dtype0*
	container *
shared_name *+
_class!
loc:@layer1_1/biases/Variable*
_output_shapes	
:є
њ
$layer1_1/biases/Variable/Adam/AssignAssignlayer1_1/biases/Variable/Adam/layer1_1/biases/Variable/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@layer1_1/biases/Variable*
_output_shapes	
:є
 
"layer1_1/biases/Variable/Adam/readIdentitylayer1_1/biases/Variable/Adam*
T0*+
_class!
loc:@layer1_1/biases/Variable*
_output_shapes	
:є
­
1layer1_1/biases/Variable/Adam_1/Initializer/zerosConst*
valueBє*    *
dtype0*+
_class!
loc:@layer1_1/biases/Variable*
_output_shapes	
:є
К
layer1_1/biases/Variable/Adam_1
VariableV2*
shape:є*
dtype0*
	container *
shared_name *+
_class!
loc:@layer1_1/biases/Variable*
_output_shapes	
:є

&layer1_1/biases/Variable/Adam_1/AssignAssignlayer1_1/biases/Variable/Adam_11layer1_1/biases/Variable/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@layer1_1/biases/Variable*
_output_shapes	
:є
Є
$layer1_1/biases/Variable/Adam_1/readIdentitylayer1_1/biases/Variable/Adam_1*
T0*+
_class!
loc:@layer1_1/biases/Variable*
_output_shapes	
:є
Е
0layer2_1/weights/Variable/Adam/Initializer/zerosConst*
valueB	є
*    *
dtype0*,
_class"
 loc:@layer2_1/weights/Variable*
_output_shapes
:	є

Т
layer2_1/weights/Variable/Adam
VariableV2*
shape:	є
*
dtype0*
	container *
shared_name *,
_class"
 loc:@layer2_1/weights/Variable*
_output_shapes
:	є


%layer2_1/weights/Variable/Adam/AssignAssignlayer2_1/weights/Variable/Adam0layer2_1/weights/Variable/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@layer2_1/weights/Variable*
_output_shapes
:	є

Ї
#layer2_1/weights/Variable/Adam/readIdentitylayer2_1/weights/Variable/Adam*
T0*,
_class"
 loc:@layer2_1/weights/Variable*
_output_shapes
:	є

З
2layer2_1/weights/Variable/Adam_1/Initializer/zerosConst*
valueB	є
*    *
dtype0*,
_class"
 loc:@layer2_1/weights/Variable*
_output_shapes
:	є

Ф
 layer2_1/weights/Variable/Adam_1
VariableV2*
shape:	є
*
dtype0*
	container *
shared_name *,
_class"
 loc:@layer2_1/weights/Variable*
_output_shapes
:	є


'layer2_1/weights/Variable/Adam_1/AssignAssign layer2_1/weights/Variable/Adam_12layer2_1/weights/Variable/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@layer2_1/weights/Variable*
_output_shapes
:	є

Ћ
%layer2_1/weights/Variable/Adam_1/readIdentity layer2_1/weights/Variable/Adam_1*
T0*,
_class"
 loc:@layer2_1/weights/Variable*
_output_shapes
:	є

Љ
/layer2_1/biases/Variable/Adam/Initializer/zerosConst*
valueB
*    *
dtype0*+
_class!
loc:@layer2_1/biases/Variable*
_output_shapes
:

Ж
layer2_1/biases/Variable/Adam
VariableV2*
shape:
*
dtype0*
	container *
shared_name *+
_class!
loc:@layer2_1/biases/Variable*
_output_shapes
:

љ
$layer2_1/biases/Variable/Adam/AssignAssignlayer2_1/biases/Variable/Adam/layer2_1/biases/Variable/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@layer2_1/biases/Variable*
_output_shapes
:


"layer2_1/biases/Variable/Adam/readIdentitylayer2_1/biases/Variable/Adam*
T0*+
_class!
loc:@layer2_1/biases/Variable*
_output_shapes
:

Ћ
1layer2_1/biases/Variable/Adam_1/Initializer/zerosConst*
valueB
*    *
dtype0*+
_class!
loc:@layer2_1/biases/Variable*
_output_shapes
:

И
layer2_1/biases/Variable/Adam_1
VariableV2*
shape:
*
dtype0*
	container *
shared_name *+
_class!
loc:@layer2_1/biases/Variable*
_output_shapes
:

џ
&layer2_1/biases/Variable/Adam_1/AssignAssignlayer2_1/biases/Variable/Adam_11layer2_1/biases/Variable/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@layer2_1/biases/Variable*
_output_shapes
:

Ѓ
$layer2_1/biases/Variable/Adam_1/readIdentitylayer2_1/biases/Variable/Adam_1*
T0*+
_class!
loc:@layer2_1/biases/Variable*
_output_shapes
:

_
train_1/Adam/learning_rateConst*
valueB
 *o:*
dtype0*
_output_shapes
: 
W
train_1/Adam/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
W
train_1/Adam/beta2Const*
valueB
 *wО?*
dtype0*
_output_shapes
: 
Y
train_1/Adam/epsilonConst*
valueB
 *wЬ+2*
dtype0*
_output_shapes
: 
ќ
7train_1/Adam/update_layer1_1/weights/Variable/ApplyAdam	ApplyAdamlayer1_1/weights/Variablelayer1_1/weights/Variable/Adam layer1_1/weights/Variable/Adam_1train_1/beta1_power/readtrain_1/beta2_power/readtrain_1/Adam/learning_ratetrain_1/Adam/beta1train_1/Adam/beta2train_1/Adam/epsilonKtrain_1/gradients/layer1_1/Wx_plus_b/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *,
_class"
 loc:@layer1_1/weights/Variable* 
_output_shapes
:
є
я
6train_1/Adam/update_layer1_1/biases/Variable/ApplyAdam	ApplyAdamlayer1_1/biases/Variablelayer1_1/biases/Variable/Adamlayer1_1/biases/Variable/Adam_1train_1/beta1_power/readtrain_1/beta2_power/readtrain_1/Adam/learning_ratetrain_1/Adam/beta1train_1/Adam/beta2train_1/Adam/epsilonHtrain_1/gradients/layer1_1/Wx_plus_b/add_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *+
_class!
loc:@layer1_1/biases/Variable*
_output_shapes	
:є
ћ
7train_1/Adam/update_layer2_1/weights/Variable/ApplyAdam	ApplyAdamlayer2_1/weights/Variablelayer2_1/weights/Variable/Adam layer2_1/weights/Variable/Adam_1train_1/beta1_power/readtrain_1/beta2_power/readtrain_1/Adam/learning_ratetrain_1/Adam/beta1train_1/Adam/beta2train_1/Adam/epsilonKtrain_1/gradients/layer2_1/Wx_plus_b/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *,
_class"
 loc:@layer2_1/weights/Variable*
_output_shapes
:	є

ю
6train_1/Adam/update_layer2_1/biases/Variable/ApplyAdam	ApplyAdamlayer2_1/biases/Variablelayer2_1/biases/Variable/Adamlayer2_1/biases/Variable/Adam_1train_1/beta1_power/readtrain_1/beta2_power/readtrain_1/Adam/learning_ratetrain_1/Adam/beta1train_1/Adam/beta2train_1/Adam/epsilonHtrain_1/gradients/layer2_1/Wx_plus_b/add_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *+
_class!
loc:@layer2_1/biases/Variable*
_output_shapes
:

љ
train_1/Adam/mulMultrain_1/beta1_power/readtrain_1/Adam/beta18^train_1/Adam/update_layer1_1/weights/Variable/ApplyAdam7^train_1/Adam/update_layer1_1/biases/Variable/ApplyAdam8^train_1/Adam/update_layer2_1/weights/Variable/ApplyAdam7^train_1/Adam/update_layer2_1/biases/Variable/ApplyAdam*
T0*+
_class!
loc:@layer1_1/biases/Variable*
_output_shapes
: 
Л
train_1/Adam/AssignAssigntrain_1/beta1_powertrain_1/Adam/mul*
T0*
validate_shape(*
use_locking( *+
_class!
loc:@layer1_1/biases/Variable*
_output_shapes
: 
ћ
train_1/Adam/mul_1Multrain_1/beta2_power/readtrain_1/Adam/beta28^train_1/Adam/update_layer1_1/weights/Variable/ApplyAdam7^train_1/Adam/update_layer1_1/biases/Variable/ApplyAdam8^train_1/Adam/update_layer2_1/weights/Variable/ApplyAdam7^train_1/Adam/update_layer2_1/biases/Variable/ApplyAdam*
T0*+
_class!
loc:@layer1_1/biases/Variable*
_output_shapes
: 
П
train_1/Adam/Assign_1Assigntrain_1/beta2_powertrain_1/Adam/mul_1*
T0*
validate_shape(*
use_locking( *+
_class!
loc:@layer1_1/biases/Variable*
_output_shapes
: 
Ј
train_1/AdamNoOp8^train_1/Adam/update_layer1_1/weights/Variable/ApplyAdam7^train_1/Adam/update_layer1_1/biases/Variable/ApplyAdam8^train_1/Adam/update_layer2_1/weights/Variable/ApplyAdam7^train_1/Adam/update_layer2_1/biases/Variable/ApplyAdam^train_1/Adam/Assign^train_1/Adam/Assign_1
p
.accuracy_2/correct_prediction/ArgMax/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
Р
$accuracy_2/correct_prediction/ArgMaxArgMaxlayer2_1/activation.accuracy_2/correct_prediction/ArgMax/dimension*
T0*

Tidx0*
output_type0	*#
_output_shapes
:џџџџџџџџџ

#accuracy_2/correct_prediction/EqualEqual$accuracy_2/correct_prediction/ArgMaxinput_2/y-input*
T0	*#
_output_shapes
:џџџџџџџџџ

accuracy_2/accuracy/CastCast#accuracy_2/correct_prediction/Equal*

SrcT0
*

DstT0*#
_output_shapes
:џџџџџџџџџ
c
accuracy_2/accuracy/ConstConst*
valueB: *
dtype0*
_output_shapes
:

accuracy_2/accuracy/MeanMeanaccuracy_2/accuracy/Castaccuracy_2/accuracy/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
Z
accuracy_3/tagsConst*
valueB B
accuracy_3*
dtype0*
_output_shapes
: 
g

accuracy_3ScalarSummaryaccuracy_3/tagsaccuracy_2/accuracy/Mean*
T0*
_output_shapes
: 

Merge_1/MergeSummaryMergeSummaryinput_reshape/inputinput_reshape_1/inputlayer1/weights/summaries/mean!layer1/weights/summaries/stddev_1layer1/weights/summaries/maxlayer1/weights/summaries/min"layer1/weights/summaries/histogramlayer1/biases/summaries/mean layer1/biases/summaries/stddev_1layer1/biases/summaries/maxlayer1/biases/summaries/min!layer1/biases/summaries/histogram layer1/Wx_plus_b/pre_activationslayer1/activations dropout/dropout_keep_probabilitylayer2/weights/summaries/mean!layer2/weights/summaries/stddev_1layer2/weights/summaries/maxlayer2/weights/summaries/min"layer2/weights/summaries/histogramlayer2/biases/summaries/mean layer2/biases/summaries/stddev_1layer2/biases/summaries/maxlayer2/biases/summaries/min!layer2/biases/summaries/histogram layer2/Wx_plus_b/pre_activationslayer2/activationscross_entropy_1
accuracy_1input_reshape_2/inputlayer1_1/weights/summaries/mean#layer1_1/weights/summaries/stddev_1layer1_1/weights/summaries/maxlayer1_1/weights/summaries/min$layer1_1/weights/summaries/histogramlayer1_1/biases/summaries/mean"layer1_1/biases/summaries/stddev_1layer1_1/biases/summaries/maxlayer1_1/biases/summaries/min#layer1_1/biases/summaries/histogram"layer1_1/Wx_plus_b/pre_activationslayer1_1/activations"dropout_1/dropout_keep_probabilitylayer2_1/weights/summaries/mean#layer2_1/weights/summaries/stddev_1layer2_1/weights/summaries/maxlayer2_1/weights/summaries/min$layer2_1/weights/summaries/histogramlayer2_1/biases/summaries/mean"layer2_1/biases/summaries/stddev_1layer2_1/biases/summaries/maxlayer2_1/biases/summaries/min#layer2_1/biases/summaries/histogram"layer2_1/Wx_plus_b/pre_activationslayer2_1/activationscross_entropy_3
accuracy_3*
N9*
_output_shapes
: 
t
input_3/x-inputPlaceholder*
dtype0*
shape:џџџџџџџџџ*(
_output_shapes
:џџџџџџџџџ
j
input_3/y-inputPlaceholder*
dtype0	*
shape:џџџџџџџџџ*#
_output_shapes
:џџџџџџџџџ
v
input_reshape_3/Reshape/shapeConst*%
valueB"џџџџ         *
dtype0*
_output_shapes
:

input_reshape_3/ReshapeReshapeinput_3/x-inputinput_reshape_3/Reshape/shape*
T0*
Tshape0*/
_output_shapes
:џџџџџџџџџ
o
input_reshape_3/input/tagConst*&
valueB Binput_reshape_3/input*
dtype0*
_output_shapes
: 
­
input_reshape_3/inputImageSummaryinput_reshape_3/input/taginput_reshape_3/Reshape*

max_images
*
T0*
	bad_colorB:џ  џ*
_output_shapes
: 
x
'layer1_2/weights/truncated_normal/shapeConst*
valueB"  є  *
dtype0*
_output_shapes
:
k
&layer1_2/weights/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
m
(layer1_2/weights/truncated_normal/stddevConst*
valueB
 *ЭЬЬ=*
dtype0*
_output_shapes
: 
О
1layer1_2/weights/truncated_normal/TruncatedNormalTruncatedNormal'layer1_2/weights/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0* 
_output_shapes
:
є
Д
%layer1_2/weights/truncated_normal/mulMul1layer1_2/weights/truncated_normal/TruncatedNormal(layer1_2/weights/truncated_normal/stddev*
T0* 
_output_shapes
:
є
Ђ
!layer1_2/weights/truncated_normalAdd%layer1_2/weights/truncated_normal/mul&layer1_2/weights/truncated_normal/mean*
T0* 
_output_shapes
:
є

layer1_2/weights/Variable
VariableV2*
shape:
є*
dtype0*
	container *
shared_name * 
_output_shapes
:
є
ъ
 layer1_2/weights/Variable/AssignAssignlayer1_2/weights/Variable!layer1_2/weights/truncated_normal*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@layer1_2/weights/Variable* 
_output_shapes
:
є

layer1_2/weights/Variable/readIdentitylayer1_2/weights/Variable*
T0*,
_class"
 loc:@layer1_2/weights/Variable* 
_output_shapes
:
є
a
layer1_2/weights/summaries/RankConst*
value	B :*
dtype0*
_output_shapes
: 
h
&layer1_2/weights/summaries/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
h
&layer1_2/weights/summaries/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Т
 layer1_2/weights/summaries/rangeRange&layer1_2/weights/summaries/range/startlayer1_2/weights/summaries/Rank&layer1_2/weights/summaries/range/delta*

Tidx0*
_output_shapes
:
Ї
layer1_2/weights/summaries/MeanMeanlayer1_2/weights/Variable/read layer1_2/weights/summaries/range*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

$layer1_2/weights/summaries/mean/tagsConst*0
value'B% Blayer1_2/weights/summaries/mean*
dtype0*
_output_shapes
: 

layer1_2/weights/summaries/meanScalarSummary$layer1_2/weights/summaries/mean/tagslayer1_2/weights/summaries/Mean*
T0*
_output_shapes
: 

%layer1_2/weights/summaries/stddev/subSublayer1_2/weights/Variable/readlayer1_2/weights/summaries/Mean*
T0* 
_output_shapes
:
є

(layer1_2/weights/summaries/stddev/SquareSquare%layer1_2/weights/summaries/stddev/sub*
T0* 
_output_shapes
:
є
x
'layer1_2/weights/summaries/stddev/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
П
&layer1_2/weights/summaries/stddev/MeanMean(layer1_2/weights/summaries/stddev/Square'layer1_2/weights/summaries/stddev/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
w
&layer1_2/weights/summaries/stddev/SqrtSqrt&layer1_2/weights/summaries/stddev/Mean*
T0*
_output_shapes
: 

(layer1_2/weights/summaries/stddev_1/tagsConst*4
value+B) B#layer1_2/weights/summaries/stddev_1*
dtype0*
_output_shapes
: 
Ї
#layer1_2/weights/summaries/stddev_1ScalarSummary(layer1_2/weights/summaries/stddev_1/tags&layer1_2/weights/summaries/stddev/Sqrt*
T0*
_output_shapes
: 
c
!layer1_2/weights/summaries/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
j
(layer1_2/weights/summaries/range_1/startConst*
value	B : *
dtype0*
_output_shapes
: 
j
(layer1_2/weights/summaries/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ъ
"layer1_2/weights/summaries/range_1Range(layer1_2/weights/summaries/range_1/start!layer1_2/weights/summaries/Rank_1(layer1_2/weights/summaries/range_1/delta*

Tidx0*
_output_shapes
:
Ї
layer1_2/weights/summaries/MaxMaxlayer1_2/weights/Variable/read"layer1_2/weights/summaries/range_1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

#layer1_2/weights/summaries/max/tagsConst*/
value&B$ Blayer1_2/weights/summaries/max*
dtype0*
_output_shapes
: 

layer1_2/weights/summaries/maxScalarSummary#layer1_2/weights/summaries/max/tagslayer1_2/weights/summaries/Max*
T0*
_output_shapes
: 
c
!layer1_2/weights/summaries/Rank_2Const*
value	B :*
dtype0*
_output_shapes
: 
j
(layer1_2/weights/summaries/range_2/startConst*
value	B : *
dtype0*
_output_shapes
: 
j
(layer1_2/weights/summaries/range_2/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ъ
"layer1_2/weights/summaries/range_2Range(layer1_2/weights/summaries/range_2/start!layer1_2/weights/summaries/Rank_2(layer1_2/weights/summaries/range_2/delta*

Tidx0*
_output_shapes
:
Ї
layer1_2/weights/summaries/MinMinlayer1_2/weights/Variable/read"layer1_2/weights/summaries/range_2*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

#layer1_2/weights/summaries/min/tagsConst*/
value&B$ Blayer1_2/weights/summaries/min*
dtype0*
_output_shapes
: 

layer1_2/weights/summaries/minScalarSummary#layer1_2/weights/summaries/min/tagslayer1_2/weights/summaries/Min*
T0*
_output_shapes
: 

(layer1_2/weights/summaries/histogram/tagConst*5
value,B* B$layer1_2/weights/summaries/histogram*
dtype0*
_output_shapes
: 
Ѓ
$layer1_2/weights/summaries/histogramHistogramSummary(layer1_2/weights/summaries/histogram/taglayer1_2/weights/Variable/read*
T0*
_output_shapes
: 
d
layer1_2/biases/ConstConst*
valueBє*ЭЬЬ=*
dtype0*
_output_shapes	
:є

layer1_2/biases/Variable
VariableV2*
shape:є*
dtype0*
	container *
shared_name *
_output_shapes	
:є
ж
layer1_2/biases/Variable/AssignAssignlayer1_2/biases/Variablelayer1_2/biases/Const*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@layer1_2/biases/Variable*
_output_shapes	
:є

layer1_2/biases/Variable/readIdentitylayer1_2/biases/Variable*
T0*+
_class!
loc:@layer1_2/biases/Variable*
_output_shapes	
:є
`
layer1_2/biases/summaries/RankConst*
value	B :*
dtype0*
_output_shapes
: 
g
%layer1_2/biases/summaries/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
g
%layer1_2/biases/summaries/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
О
layer1_2/biases/summaries/rangeRange%layer1_2/biases/summaries/range/startlayer1_2/biases/summaries/Rank%layer1_2/biases/summaries/range/delta*

Tidx0*
_output_shapes
:
Є
layer1_2/biases/summaries/MeanMeanlayer1_2/biases/Variable/readlayer1_2/biases/summaries/range*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

#layer1_2/biases/summaries/mean/tagsConst*/
value&B$ Blayer1_2/biases/summaries/mean*
dtype0*
_output_shapes
: 

layer1_2/biases/summaries/meanScalarSummary#layer1_2/biases/summaries/mean/tagslayer1_2/biases/summaries/Mean*
T0*
_output_shapes
: 

$layer1_2/biases/summaries/stddev/subSublayer1_2/biases/Variable/readlayer1_2/biases/summaries/Mean*
T0*
_output_shapes	
:є
}
'layer1_2/biases/summaries/stddev/SquareSquare$layer1_2/biases/summaries/stddev/sub*
T0*
_output_shapes	
:є
p
&layer1_2/biases/summaries/stddev/ConstConst*
valueB: *
dtype0*
_output_shapes
:
М
%layer1_2/biases/summaries/stddev/MeanMean'layer1_2/biases/summaries/stddev/Square&layer1_2/biases/summaries/stddev/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
u
%layer1_2/biases/summaries/stddev/SqrtSqrt%layer1_2/biases/summaries/stddev/Mean*
T0*
_output_shapes
: 

'layer1_2/biases/summaries/stddev_1/tagsConst*3
value*B( B"layer1_2/biases/summaries/stddev_1*
dtype0*
_output_shapes
: 
Є
"layer1_2/biases/summaries/stddev_1ScalarSummary'layer1_2/biases/summaries/stddev_1/tags%layer1_2/biases/summaries/stddev/Sqrt*
T0*
_output_shapes
: 
b
 layer1_2/biases/summaries/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
i
'layer1_2/biases/summaries/range_1/startConst*
value	B : *
dtype0*
_output_shapes
: 
i
'layer1_2/biases/summaries/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ц
!layer1_2/biases/summaries/range_1Range'layer1_2/biases/summaries/range_1/start layer1_2/biases/summaries/Rank_1'layer1_2/biases/summaries/range_1/delta*

Tidx0*
_output_shapes
:
Є
layer1_2/biases/summaries/MaxMaxlayer1_2/biases/Variable/read!layer1_2/biases/summaries/range_1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

"layer1_2/biases/summaries/max/tagsConst*.
value%B# Blayer1_2/biases/summaries/max*
dtype0*
_output_shapes
: 

layer1_2/biases/summaries/maxScalarSummary"layer1_2/biases/summaries/max/tagslayer1_2/biases/summaries/Max*
T0*
_output_shapes
: 
b
 layer1_2/biases/summaries/Rank_2Const*
value	B :*
dtype0*
_output_shapes
: 
i
'layer1_2/biases/summaries/range_2/startConst*
value	B : *
dtype0*
_output_shapes
: 
i
'layer1_2/biases/summaries/range_2/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ц
!layer1_2/biases/summaries/range_2Range'layer1_2/biases/summaries/range_2/start layer1_2/biases/summaries/Rank_2'layer1_2/biases/summaries/range_2/delta*

Tidx0*
_output_shapes
:
Є
layer1_2/biases/summaries/MinMinlayer1_2/biases/Variable/read!layer1_2/biases/summaries/range_2*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

"layer1_2/biases/summaries/min/tagsConst*.
value%B# Blayer1_2/biases/summaries/min*
dtype0*
_output_shapes
: 

layer1_2/biases/summaries/minScalarSummary"layer1_2/biases/summaries/min/tagslayer1_2/biases/summaries/Min*
T0*
_output_shapes
: 

'layer1_2/biases/summaries/histogram/tagConst*4
value+B) B#layer1_2/biases/summaries/histogram*
dtype0*
_output_shapes
: 
 
#layer1_2/biases/summaries/histogramHistogramSummary'layer1_2/biases/summaries/histogram/taglayer1_2/biases/Variable/read*
T0*
_output_shapes
: 
­
layer1_2/Wx_plus_b/MatMulMatMulinput_3/x-inputlayer1_2/weights/Variable/read*
transpose_a( *
transpose_b( *
T0*(
_output_shapes
:џџџџџџџџџє

layer1_2/Wx_plus_b/addAddlayer1_2/Wx_plus_b/MatMullayer1_2/biases/Variable/read*
T0*(
_output_shapes
:џџџџџџџџџє

&layer1_2/Wx_plus_b/pre_activations/tagConst*3
value*B( B"layer1_2/Wx_plus_b/pre_activations*
dtype0*
_output_shapes
: 

"layer1_2/Wx_plus_b/pre_activationsHistogramSummary&layer1_2/Wx_plus_b/pre_activations/taglayer1_2/Wx_plus_b/add*
T0*
_output_shapes
: 
f
layer1_2/activationRelulayer1_2/Wx_plus_b/add*
T0*(
_output_shapes
:џџџџџџџџџє
m
layer1_2/activations/tagConst*%
valueB Blayer1_2/activations*
dtype0*
_output_shapes
: 
x
layer1_2/activationsHistogramSummarylayer1_2/activations/taglayer1_2/activation*
T0*
_output_shapes
: 
Z
dropout_2/PlaceholderPlaceholder*
dtype0*
shape:*
_output_shapes
:

'dropout_2/dropout_keep_probability/tagsConst*3
value*B( B"dropout_2/dropout_keep_probability*
dtype0*
_output_shapes
: 

"dropout_2/dropout_keep_probabilityScalarSummary'dropout_2/dropout_keep_probability/tagsdropout_2/Placeholder*
T0*
_output_shapes
: 
j
dropout_2/dropout/ShapeShapelayer1_2/activation*
T0*
out_type0*
_output_shapes
:
i
$dropout_2/dropout/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: 
i
$dropout_2/dropout/random_uniform/maxConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Б
.dropout_2/dropout/random_uniform/RandomUniformRandomUniformdropout_2/dropout/Shape*

seed *
seed2 *
dtype0*
T0*(
_output_shapes
:џџџџџџџџџє

$dropout_2/dropout/random_uniform/subSub$dropout_2/dropout/random_uniform/max$dropout_2/dropout/random_uniform/min*
T0*
_output_shapes
: 
Д
$dropout_2/dropout/random_uniform/mulMul.dropout_2/dropout/random_uniform/RandomUniform$dropout_2/dropout/random_uniform/sub*
T0*(
_output_shapes
:џџџџџџџџџє
І
 dropout_2/dropout/random_uniformAdd$dropout_2/dropout/random_uniform/mul$dropout_2/dropout/random_uniform/min*
T0*(
_output_shapes
:џџџџџџџџџє
x
dropout_2/dropout/addAdddropout_2/Placeholder dropout_2/dropout/random_uniform*
T0*
_output_shapes
:
Z
dropout_2/dropout/FloorFloordropout_2/dropout/add*
T0*
_output_shapes
:
o
dropout_2/dropout/divRealDivlayer1_2/activationdropout_2/Placeholder*
T0*
_output_shapes
:

dropout_2/dropout/mulMuldropout_2/dropout/divdropout_2/dropout/Floor*
T0*(
_output_shapes
:џџџџџџџџџє
x
'layer2_2/weights/truncated_normal/shapeConst*
valueB"є  
   *
dtype0*
_output_shapes
:
k
&layer2_2/weights/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
m
(layer2_2/weights/truncated_normal/stddevConst*
valueB
 *ЭЬЬ=*
dtype0*
_output_shapes
: 
Н
1layer2_2/weights/truncated_normal/TruncatedNormalTruncatedNormal'layer2_2/weights/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*
_output_shapes
:	є

Г
%layer2_2/weights/truncated_normal/mulMul1layer2_2/weights/truncated_normal/TruncatedNormal(layer2_2/weights/truncated_normal/stddev*
T0*
_output_shapes
:	є

Ё
!layer2_2/weights/truncated_normalAdd%layer2_2/weights/truncated_normal/mul&layer2_2/weights/truncated_normal/mean*
T0*
_output_shapes
:	є


layer2_2/weights/Variable
VariableV2*
shape:	є
*
dtype0*
	container *
shared_name *
_output_shapes
:	є

щ
 layer2_2/weights/Variable/AssignAssignlayer2_2/weights/Variable!layer2_2/weights/truncated_normal*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@layer2_2/weights/Variable*
_output_shapes
:	є


layer2_2/weights/Variable/readIdentitylayer2_2/weights/Variable*
T0*,
_class"
 loc:@layer2_2/weights/Variable*
_output_shapes
:	є

a
layer2_2/weights/summaries/RankConst*
value	B :*
dtype0*
_output_shapes
: 
h
&layer2_2/weights/summaries/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
h
&layer2_2/weights/summaries/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Т
 layer2_2/weights/summaries/rangeRange&layer2_2/weights/summaries/range/startlayer2_2/weights/summaries/Rank&layer2_2/weights/summaries/range/delta*

Tidx0*
_output_shapes
:
Ї
layer2_2/weights/summaries/MeanMeanlayer2_2/weights/Variable/read layer2_2/weights/summaries/range*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

$layer2_2/weights/summaries/mean/tagsConst*0
value'B% Blayer2_2/weights/summaries/mean*
dtype0*
_output_shapes
: 

layer2_2/weights/summaries/meanScalarSummary$layer2_2/weights/summaries/mean/tagslayer2_2/weights/summaries/Mean*
T0*
_output_shapes
: 

%layer2_2/weights/summaries/stddev/subSublayer2_2/weights/Variable/readlayer2_2/weights/summaries/Mean*
T0*
_output_shapes
:	є


(layer2_2/weights/summaries/stddev/SquareSquare%layer2_2/weights/summaries/stddev/sub*
T0*
_output_shapes
:	є

x
'layer2_2/weights/summaries/stddev/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
П
&layer2_2/weights/summaries/stddev/MeanMean(layer2_2/weights/summaries/stddev/Square'layer2_2/weights/summaries/stddev/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
w
&layer2_2/weights/summaries/stddev/SqrtSqrt&layer2_2/weights/summaries/stddev/Mean*
T0*
_output_shapes
: 

(layer2_2/weights/summaries/stddev_1/tagsConst*4
value+B) B#layer2_2/weights/summaries/stddev_1*
dtype0*
_output_shapes
: 
Ї
#layer2_2/weights/summaries/stddev_1ScalarSummary(layer2_2/weights/summaries/stddev_1/tags&layer2_2/weights/summaries/stddev/Sqrt*
T0*
_output_shapes
: 
c
!layer2_2/weights/summaries/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
j
(layer2_2/weights/summaries/range_1/startConst*
value	B : *
dtype0*
_output_shapes
: 
j
(layer2_2/weights/summaries/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ъ
"layer2_2/weights/summaries/range_1Range(layer2_2/weights/summaries/range_1/start!layer2_2/weights/summaries/Rank_1(layer2_2/weights/summaries/range_1/delta*

Tidx0*
_output_shapes
:
Ї
layer2_2/weights/summaries/MaxMaxlayer2_2/weights/Variable/read"layer2_2/weights/summaries/range_1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

#layer2_2/weights/summaries/max/tagsConst*/
value&B$ Blayer2_2/weights/summaries/max*
dtype0*
_output_shapes
: 

layer2_2/weights/summaries/maxScalarSummary#layer2_2/weights/summaries/max/tagslayer2_2/weights/summaries/Max*
T0*
_output_shapes
: 
c
!layer2_2/weights/summaries/Rank_2Const*
value	B :*
dtype0*
_output_shapes
: 
j
(layer2_2/weights/summaries/range_2/startConst*
value	B : *
dtype0*
_output_shapes
: 
j
(layer2_2/weights/summaries/range_2/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ъ
"layer2_2/weights/summaries/range_2Range(layer2_2/weights/summaries/range_2/start!layer2_2/weights/summaries/Rank_2(layer2_2/weights/summaries/range_2/delta*

Tidx0*
_output_shapes
:
Ї
layer2_2/weights/summaries/MinMinlayer2_2/weights/Variable/read"layer2_2/weights/summaries/range_2*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

#layer2_2/weights/summaries/min/tagsConst*/
value&B$ Blayer2_2/weights/summaries/min*
dtype0*
_output_shapes
: 

layer2_2/weights/summaries/minScalarSummary#layer2_2/weights/summaries/min/tagslayer2_2/weights/summaries/Min*
T0*
_output_shapes
: 

(layer2_2/weights/summaries/histogram/tagConst*5
value,B* B$layer2_2/weights/summaries/histogram*
dtype0*
_output_shapes
: 
Ѓ
$layer2_2/weights/summaries/histogramHistogramSummary(layer2_2/weights/summaries/histogram/taglayer2_2/weights/Variable/read*
T0*
_output_shapes
: 
b
layer2_2/biases/ConstConst*
valueB
*ЭЬЬ=*
dtype0*
_output_shapes
:


layer2_2/biases/Variable
VariableV2*
shape:
*
dtype0*
	container *
shared_name *
_output_shapes
:

е
layer2_2/biases/Variable/AssignAssignlayer2_2/biases/Variablelayer2_2/biases/Const*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@layer2_2/biases/Variable*
_output_shapes
:


layer2_2/biases/Variable/readIdentitylayer2_2/biases/Variable*
T0*+
_class!
loc:@layer2_2/biases/Variable*
_output_shapes
:

`
layer2_2/biases/summaries/RankConst*
value	B :*
dtype0*
_output_shapes
: 
g
%layer2_2/biases/summaries/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
g
%layer2_2/biases/summaries/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
О
layer2_2/biases/summaries/rangeRange%layer2_2/biases/summaries/range/startlayer2_2/biases/summaries/Rank%layer2_2/biases/summaries/range/delta*

Tidx0*
_output_shapes
:
Є
layer2_2/biases/summaries/MeanMeanlayer2_2/biases/Variable/readlayer2_2/biases/summaries/range*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

#layer2_2/biases/summaries/mean/tagsConst*/
value&B$ Blayer2_2/biases/summaries/mean*
dtype0*
_output_shapes
: 

layer2_2/biases/summaries/meanScalarSummary#layer2_2/biases/summaries/mean/tagslayer2_2/biases/summaries/Mean*
T0*
_output_shapes
: 

$layer2_2/biases/summaries/stddev/subSublayer2_2/biases/Variable/readlayer2_2/biases/summaries/Mean*
T0*
_output_shapes
:

|
'layer2_2/biases/summaries/stddev/SquareSquare$layer2_2/biases/summaries/stddev/sub*
T0*
_output_shapes
:

p
&layer2_2/biases/summaries/stddev/ConstConst*
valueB: *
dtype0*
_output_shapes
:
М
%layer2_2/biases/summaries/stddev/MeanMean'layer2_2/biases/summaries/stddev/Square&layer2_2/biases/summaries/stddev/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
u
%layer2_2/biases/summaries/stddev/SqrtSqrt%layer2_2/biases/summaries/stddev/Mean*
T0*
_output_shapes
: 

'layer2_2/biases/summaries/stddev_1/tagsConst*3
value*B( B"layer2_2/biases/summaries/stddev_1*
dtype0*
_output_shapes
: 
Є
"layer2_2/biases/summaries/stddev_1ScalarSummary'layer2_2/biases/summaries/stddev_1/tags%layer2_2/biases/summaries/stddev/Sqrt*
T0*
_output_shapes
: 
b
 layer2_2/biases/summaries/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
i
'layer2_2/biases/summaries/range_1/startConst*
value	B : *
dtype0*
_output_shapes
: 
i
'layer2_2/biases/summaries/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ц
!layer2_2/biases/summaries/range_1Range'layer2_2/biases/summaries/range_1/start layer2_2/biases/summaries/Rank_1'layer2_2/biases/summaries/range_1/delta*

Tidx0*
_output_shapes
:
Є
layer2_2/biases/summaries/MaxMaxlayer2_2/biases/Variable/read!layer2_2/biases/summaries/range_1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

"layer2_2/biases/summaries/max/tagsConst*.
value%B# Blayer2_2/biases/summaries/max*
dtype0*
_output_shapes
: 

layer2_2/biases/summaries/maxScalarSummary"layer2_2/biases/summaries/max/tagslayer2_2/biases/summaries/Max*
T0*
_output_shapes
: 
b
 layer2_2/biases/summaries/Rank_2Const*
value	B :*
dtype0*
_output_shapes
: 
i
'layer2_2/biases/summaries/range_2/startConst*
value	B : *
dtype0*
_output_shapes
: 
i
'layer2_2/biases/summaries/range_2/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ц
!layer2_2/biases/summaries/range_2Range'layer2_2/biases/summaries/range_2/start layer2_2/biases/summaries/Rank_2'layer2_2/biases/summaries/range_2/delta*

Tidx0*
_output_shapes
:
Є
layer2_2/biases/summaries/MinMinlayer2_2/biases/Variable/read!layer2_2/biases/summaries/range_2*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

"layer2_2/biases/summaries/min/tagsConst*.
value%B# Blayer2_2/biases/summaries/min*
dtype0*
_output_shapes
: 

layer2_2/biases/summaries/minScalarSummary"layer2_2/biases/summaries/min/tagslayer2_2/biases/summaries/Min*
T0*
_output_shapes
: 

'layer2_2/biases/summaries/histogram/tagConst*4
value+B) B#layer2_2/biases/summaries/histogram*
dtype0*
_output_shapes
: 
 
#layer2_2/biases/summaries/histogramHistogramSummary'layer2_2/biases/summaries/histogram/taglayer2_2/biases/Variable/read*
T0*
_output_shapes
: 
В
layer2_2/Wx_plus_b/MatMulMatMuldropout_2/dropout/mullayer2_2/weights/Variable/read*
transpose_a( *
transpose_b( *
T0*'
_output_shapes
:џџџџџџџџџ


layer2_2/Wx_plus_b/addAddlayer2_2/Wx_plus_b/MatMullayer2_2/biases/Variable/read*
T0*'
_output_shapes
:џџџџџџџџџ


&layer2_2/Wx_plus_b/pre_activations/tagConst*3
value*B( B"layer2_2/Wx_plus_b/pre_activations*
dtype0*
_output_shapes
: 

"layer2_2/Wx_plus_b/pre_activationsHistogramSummary&layer2_2/Wx_plus_b/pre_activations/taglayer2_2/Wx_plus_b/add*
T0*
_output_shapes
: 
i
layer2_2/activationIdentitylayer2_2/Wx_plus_b/add*
T0*'
_output_shapes
:џџџџџџџџџ

m
layer2_2/activations/tagConst*%
valueB Blayer2_2/activations*
dtype0*
_output_shapes
: 
x
layer2_2/activationsHistogramSummarylayer2_2/activations/taglayer2_2/activation*
T0*
_output_shapes
: 

=cross_entropy_4/total/sparse_softmax_cross_entropy_loss/ConstConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

Fcross_entropy_4/total/sparse_softmax_cross_entropy_loss/xentropy/ShapeShapeinput_3/y-input*
T0	*
out_type0*
_output_shapes
:
ц
Icross_entropy_4/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy#SparseSoftmaxCrossEntropyWithLogitslayer2_2/activationinput_3/y-input*
T0*
Tlabels0	*6
_output_shapes$
":џџџџџџџџџ:џџџџџџџџџ


Zcross_entropy_4/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/weights/shapeConst*
valueB *
dtype0*
_output_shapes
: 

Ycross_entropy_4/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/weights/rankConst*
value	B : *
dtype0*
_output_shapes
: 
т
Ycross_entropy_4/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/values/shapeShapeIcross_entropy_4/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy*
T0*
out_type0*
_output_shapes
:

Xcross_entropy_4/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
p
hcross_entropy_4/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_successNoOp
х
;cross_entropy_4/total/sparse_softmax_cross_entropy_loss/MulMulIcross_entropy_4/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy=cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Consti^cross_entropy_4/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
T0*#
_output_shapes
:џџџџџџџџџ
є
?cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Const_1Consti^cross_entropy_4/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB: *
dtype0*
_output_shapes
:
ў
;cross_entropy_4/total/sparse_softmax_cross_entropy_loss/SumSum;cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Mul?cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Const_1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
ћ
Kcross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/Equal/yConsti^cross_entropy_4/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
џ
Icross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/EqualEqual=cross_entropy_4/total/sparse_softmax_cross_entropy_loss/ConstKcross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/Equal/y*
T0*
_output_shapes
: 
ў
Ncross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/zeros_likeConsti^cross_entropy_4/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 

Scross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/ones_like/ShapeConsti^cross_entropy_4/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 

Scross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/ones_like/ConstConsti^cross_entropy_4/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 
 
Mcross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/ones_likeFillScross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/ones_like/ShapeScross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/ones_like/Const*
T0*
_output_shapes
: 
п
Jcross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/SelectSelectIcross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/EqualNcross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/zeros_likeMcross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/ones_like*
T0*
_output_shapes
: 
І
xcross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/shapeConsti^cross_entropy_4/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
Є
wcross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/rankConsti^cross_entropy_4/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
value	B : *
dtype0*
_output_shapes
: 
ы
wcross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/shapeShapeIcross_entropy_4/total/sparse_softmax_cross_entropy_loss/xentropy/xentropyi^cross_entropy_4/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
T0*
out_type0*
_output_shapes
:
Ѓ
vcross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/rankConsti^cross_entropy_4/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
value	B :*
dtype0*
_output_shapes
: 
њ
cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOpi^cross_entropy_4/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success
у
ecross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/ShapeShapeIcross_entropy_4/total/sparse_softmax_cross_entropy_loss/xentropy/xentropyi^cross_entropy_4/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success^cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
T0*
out_type0*
_output_shapes
:

ecross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/ConstConsti^cross_entropy_4/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success^cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 
у
_cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_likeFillecross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/Shapeecross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/Const*
T0*#
_output_shapes
:џџџџџџџџџ
З
Ucross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weightsMulJcross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/Select_cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like*
T0*#
_output_shapes
:џџџџџџџџџ
ў
Icross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/ConstConsti^cross_entropy_4/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB: *
dtype0*
_output_shapes
:
Њ
Ccross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_presentSumUcross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weightsIcross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
э
?cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Const_2Consti^cross_entropy_4/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 

=cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Sum_1Sum;cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Sum?cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Const_2*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
ё
Across_entropy_4/total/sparse_softmax_cross_entropy_loss/Greater/yConsti^cross_entropy_4/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
ѓ
?cross_entropy_4/total/sparse_softmax_cross_entropy_loss/GreaterGreaterCcross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_presentAcross_entropy_4/total/sparse_softmax_cross_entropy_loss/Greater/y*
T0*
_output_shapes
: 
я
?cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Equal/yConsti^cross_entropy_4/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
э
=cross_entropy_4/total/sparse_softmax_cross_entropy_loss/EqualEqualCcross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present?cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Equal/y*
T0*
_output_shapes
: 
ѕ
Gcross_entropy_4/total/sparse_softmax_cross_entropy_loss/ones_like/ShapeConsti^cross_entropy_4/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
ї
Gcross_entropy_4/total/sparse_softmax_cross_entropy_loss/ones_like/ConstConsti^cross_entropy_4/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ќ
Across_entropy_4/total/sparse_softmax_cross_entropy_loss/ones_likeFillGcross_entropy_4/total/sparse_softmax_cross_entropy_loss/ones_like/ShapeGcross_entropy_4/total/sparse_softmax_cross_entropy_loss/ones_like/Const*
T0*
_output_shapes
: 
А
>cross_entropy_4/total/sparse_softmax_cross_entropy_loss/SelectSelect=cross_entropy_4/total/sparse_softmax_cross_entropy_loss/EqualAcross_entropy_4/total/sparse_softmax_cross_entropy_loss/ones_likeCcross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present*
T0*
_output_shapes
: 
ц
;cross_entropy_4/total/sparse_softmax_cross_entropy_loss/divRealDiv=cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Sum_1>cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 
ђ
Bcross_entropy_4/total/sparse_softmax_cross_entropy_loss/zeros_likeConsti^cross_entropy_4/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
Њ
=cross_entropy_4/total/sparse_softmax_cross_entropy_loss/valueSelect?cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Greater;cross_entropy_4/total/sparse_softmax_cross_entropy_loss/divBcross_entropy_4/total/sparse_softmax_cross_entropy_loss/zeros_like*
T0*
_output_shapes
: 
d
cross_entropy_5/tagsConst* 
valueB Bcross_entropy_5*
dtype0*
_output_shapes
: 

cross_entropy_5ScalarSummarycross_entropy_5/tags=cross_entropy_4/total/sparse_softmax_cross_entropy_loss/value*
T0*
_output_shapes
: 
Z
train_2/gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
`
train_2/gradients/grad_ys_0Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
train_2/gradients/FillFilltrain_2/gradients/Shapetrain_2/gradients/grad_ys_0*
T0*
_output_shapes
: 
Є
_train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/value_grad/zeros_likeConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Р
[train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/value_grad/SelectSelect?cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Greatertrain_2/gradients/Fill_train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/value_grad/zeros_like*
T0*
_output_shapes
: 
Т
]train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/value_grad/Select_1Select?cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Greater_train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/value_grad/zeros_liketrain_2/gradients/Fill*
T0*
_output_shapes
: 
Ћ
etrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/value_grad/tuple/group_depsNoOp\^train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/value_grad/Select^^train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/value_grad/Select_1
Я
mtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/value_grad/tuple/control_dependencyIdentity[train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/value_grad/Selectf^train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/value_grad/tuple/group_deps*
T0*n
_classd
b`loc:@train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/value_grad/Select*
_output_shapes
: 
е
otrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/value_grad/tuple/control_dependency_1Identity]train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/value_grad/Select_1f^train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/value_grad/tuple/group_deps*
T0*p
_classf
dbloc:@train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/value_grad/Select_1*
_output_shapes
: 

Xtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 

Ztrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
є
htrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/BroadcastGradientArgsBroadcastGradientArgsXtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/ShapeZtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Е
Ztrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/RealDivRealDivmtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/value_grad/tuple/control_dependency>cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 
у
Vtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/SumSumZtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/RealDivhtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
Ц
Ztrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/ReshapeReshapeVtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/SumXtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
Н
Vtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/NegNeg=cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Sum_1*
T0*
_output_shapes
: 
 
\train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/RealDiv_1RealDivVtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/Neg>cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 
І
\train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/RealDiv_2RealDiv\train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/RealDiv_1>cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 
Ы
Vtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/mulMulmtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/value_grad/tuple/control_dependency\train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/RealDiv_2*
T0*
_output_shapes
: 
у
Xtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/Sum_1SumVtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/muljtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
Ь
\train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/Reshape_1ReshapeXtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/Sum_1Ztrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
Ї
ctrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/group_depsNoOp[^train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/Reshape]^train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/Reshape_1
Щ
ktrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/control_dependencyIdentityZtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/Reshaped^train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/group_deps*
T0*m
_classc
a_loc:@train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/Reshape*
_output_shapes
: 
Я
mtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/control_dependency_1Identity\train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/Reshape_1d^train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/group_deps*
T0*o
_classe
caloc:@train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/Reshape_1*
_output_shapes
: 
Ѕ
btrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/Reshape/shapeConst*
valueB *
dtype0*
_output_shapes
: 
ч
\train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/ReshapeReshapektrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/control_dependencybtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
: 
І
ctrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/Tile/multiplesConst*
valueB *
dtype0*
_output_shapes
: 
з
Ytrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/TileTile\train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/Reshapectrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/Tile/multiples*
T0*

Tmultiples0*
_output_shapes
: 
Ѕ
`train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Select_grad/zeros_likeConst*
valueB
 *    *
dtype0*
_output_shapes
: 

\train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Select_grad/SelectSelect=cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Equalmtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/control_dependency_1`train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Select_grad/zeros_like*
T0*
_output_shapes
: 

^train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Select_grad/Select_1Select=cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Equal`train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Select_grad/zeros_likemtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/control_dependency_1*
T0*
_output_shapes
: 
Ў
ftrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Select_grad/tuple/group_depsNoOp]^train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Select_grad/Select_^train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Select_grad/Select_1
г
ntrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Select_grad/tuple/control_dependencyIdentity\train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Select_grad/Selectg^train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Select_grad/tuple/group_deps*
T0*o
_classe
caloc:@train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Select_grad/Select*
_output_shapes
: 
й
ptrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Select_grad/tuple/control_dependency_1Identity^train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Select_grad/Select_1g^train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Select_grad/tuple/group_deps*
T0*q
_classg
ecloc:@train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Select_grad/Select_1*
_output_shapes
: 
Њ
`train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Sum_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
е
Ztrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Sum_grad/ReshapeReshapeYtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/Tile`train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Sum_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
г
Xtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Sum_grad/ShapeShape;cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Mul*
T0*
out_type0*
_output_shapes
:
е
Wtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Sum_grad/TileTileZtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Sum_grad/ReshapeXtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Sum_grad/Shape*
T0*

Tmultiples0*#
_output_shapes
:џџџџџџџџџ
с
Xtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Mul_grad/ShapeShapeIcross_entropy_4/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy*
T0*
out_type0*
_output_shapes
:

Ztrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Mul_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
є
htrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgsBroadcastGradientArgsXtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Mul_grad/ShapeZtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Mul_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Ѓ
Vtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Mul_grad/mulMulWtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Sum_grad/Tile=cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Const*
T0*#
_output_shapes
:џџџџџџџџџ
п
Vtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Mul_grad/SumSumVtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Mul_grad/mulhtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
г
Ztrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Mul_grad/ReshapeReshapeVtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Mul_grad/SumXtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Mul_grad/Shape*
T0*
Tshape0*#
_output_shapes
:џџџџџџџџџ
Б
Xtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Mul_grad/mul_1MulIcross_entropy_4/total/sparse_softmax_cross_entropy_loss/xentropy/xentropyWtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Sum_grad/Tile*
T0*#
_output_shapes
:џџџџџџџџџ
х
Xtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Mul_grad/Sum_1SumXtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Mul_grad/mul_1jtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
Ь
\train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape_1ReshapeXtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Mul_grad/Sum_1Ztrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Mul_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
Ї
ctrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/group_depsNoOp[^train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape]^train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape_1
ж
ktrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/control_dependencyIdentityZtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Mul_grad/Reshaped^train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/group_deps*
T0*m
_classc
a_loc:@train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape*#
_output_shapes
:џџџџџџџџџ
Я
mtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/control_dependency_1Identity\train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape_1d^train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/group_deps*
T0*o
_classe
caloc:@train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape_1*
_output_shapes
: 
В
htrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
ќ
btrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present_grad/ReshapeReshapeptrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Select_grad/tuple/control_dependency_1htrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
ѕ
`train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present_grad/ShapeShapeUcross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights*
T0*
out_type0*
_output_shapes
:
э
_train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present_grad/TileTilebtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present_grad/Reshape`train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present_grad/Shape*
T0*

Tmultiples0*#
_output_shapes
:џџџџџџџџџ
Е
rtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 

ttrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Shape_1Shape_cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like*
T0*
out_type0*
_output_shapes
:
У
train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/BroadcastGradientArgsBroadcastGradientArgsrtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Shapettrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
ч
ptrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/mulMul_train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present_grad/Tile_cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like*
T0*#
_output_shapes
:џџџџџџџџџ
Ў
ptrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/SumSumptrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/multrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:

ttrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/ReshapeReshapeptrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Sumrtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
д
rtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/mul_1MulJcross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/Select_train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present_grad/Tile*
T0*#
_output_shapes
:џџџџџџџџџ
Д
rtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Sum_1Sumrtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/mul_1train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
Ї
vtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape_1Reshapertrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Sum_1ttrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:џџџџџџџџџ
ѕ
}train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/group_depsNoOpu^train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshapew^train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape_1
Г
train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/control_dependencyIdentityttrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape~^train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/group_deps*
T0*
_class}
{yloc:@train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape*
_output_shapes
: 
Ц
train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/control_dependency_1Identityvtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape_1~^train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/group_deps*
T0*
_class
}{loc:@train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape_1*#
_output_shapes
:џџџџџџџџџ
Ц
|train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Ч
ztrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like_grad/SumSumtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/control_dependency_1|train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like_grad/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
Ј
train_2/gradients/zeros_like	ZerosLikeKcross_entropy_4/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy:1*
T0*'
_output_shapes
:џџџџџџџџџ

Й
ptrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/PreventGradientPreventGradientKcross_entropy_4/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy:1*
T0*Д
messageЈЅCurrently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*'
_output_shapes
:џџџџџџџџџ

К
otrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/ExpandDims/dimConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

ktrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/ExpandDims
ExpandDimsktrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/control_dependencyotrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/ExpandDims/dim*
T0*

Tdim0*'
_output_shapes
:џџџџџџџџџ
ќ
dtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/mulMulktrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/ExpandDimsptrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/PreventGradient*
T0*'
_output_shapes
:џџџџџџџџџ


3train_2/gradients/layer2_2/Wx_plus_b/add_grad/ShapeShapelayer2_2/Wx_plus_b/MatMul*
T0*
out_type0*
_output_shapes
:

5train_2/gradients/layer2_2/Wx_plus_b/add_grad/Shape_1Const*
valueB:
*
dtype0*
_output_shapes
:

Ctrain_2/gradients/layer2_2/Wx_plus_b/add_grad/BroadcastGradientArgsBroadcastGradientArgs3train_2/gradients/layer2_2/Wx_plus_b/add_grad/Shape5train_2/gradients/layer2_2/Wx_plus_b/add_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Ѓ
1train_2/gradients/layer2_2/Wx_plus_b/add_grad/SumSumdtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/mulCtrain_2/gradients/layer2_2/Wx_plus_b/add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
ш
5train_2/gradients/layer2_2/Wx_plus_b/add_grad/ReshapeReshape1train_2/gradients/layer2_2/Wx_plus_b/add_grad/Sum3train_2/gradients/layer2_2/Wx_plus_b/add_grad/Shape*
T0*
Tshape0*'
_output_shapes
:џџџџџџџџџ

Ї
3train_2/gradients/layer2_2/Wx_plus_b/add_grad/Sum_1Sumdtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/mulEtrain_2/gradients/layer2_2/Wx_plus_b/add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
с
7train_2/gradients/layer2_2/Wx_plus_b/add_grad/Reshape_1Reshape3train_2/gradients/layer2_2/Wx_plus_b/add_grad/Sum_15train_2/gradients/layer2_2/Wx_plus_b/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:

И
>train_2/gradients/layer2_2/Wx_plus_b/add_grad/tuple/group_depsNoOp6^train_2/gradients/layer2_2/Wx_plus_b/add_grad/Reshape8^train_2/gradients/layer2_2/Wx_plus_b/add_grad/Reshape_1
Ц
Ftrain_2/gradients/layer2_2/Wx_plus_b/add_grad/tuple/control_dependencyIdentity5train_2/gradients/layer2_2/Wx_plus_b/add_grad/Reshape?^train_2/gradients/layer2_2/Wx_plus_b/add_grad/tuple/group_deps*
T0*H
_class>
<:loc:@train_2/gradients/layer2_2/Wx_plus_b/add_grad/Reshape*'
_output_shapes
:џџџџџџџџџ

П
Htrain_2/gradients/layer2_2/Wx_plus_b/add_grad/tuple/control_dependency_1Identity7train_2/gradients/layer2_2/Wx_plus_b/add_grad/Reshape_1?^train_2/gradients/layer2_2/Wx_plus_b/add_grad/tuple/group_deps*
T0*J
_class@
><loc:@train_2/gradients/layer2_2/Wx_plus_b/add_grad/Reshape_1*
_output_shapes
:


7train_2/gradients/layer2_2/Wx_plus_b/MatMul_grad/MatMulMatMulFtrain_2/gradients/layer2_2/Wx_plus_b/add_grad/tuple/control_dependencylayer2_2/weights/Variable/read*
transpose_a( *
transpose_b(*
T0*(
_output_shapes
:џџџџџџџџџє
ђ
9train_2/gradients/layer2_2/Wx_plus_b/MatMul_grad/MatMul_1MatMuldropout_2/dropout/mulFtrain_2/gradients/layer2_2/Wx_plus_b/add_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0*
_output_shapes
:	є

П
Atrain_2/gradients/layer2_2/Wx_plus_b/MatMul_grad/tuple/group_depsNoOp8^train_2/gradients/layer2_2/Wx_plus_b/MatMul_grad/MatMul:^train_2/gradients/layer2_2/Wx_plus_b/MatMul_grad/MatMul_1
б
Itrain_2/gradients/layer2_2/Wx_plus_b/MatMul_grad/tuple/control_dependencyIdentity7train_2/gradients/layer2_2/Wx_plus_b/MatMul_grad/MatMulB^train_2/gradients/layer2_2/Wx_plus_b/MatMul_grad/tuple/group_deps*
T0*J
_class@
><loc:@train_2/gradients/layer2_2/Wx_plus_b/MatMul_grad/MatMul*(
_output_shapes
:џџџџџџџџџє
Ю
Ktrain_2/gradients/layer2_2/Wx_plus_b/MatMul_grad/tuple/control_dependency_1Identity9train_2/gradients/layer2_2/Wx_plus_b/MatMul_grad/MatMul_1B^train_2/gradients/layer2_2/Wx_plus_b/MatMul_grad/tuple/group_deps*
T0*L
_classB
@>loc:@train_2/gradients/layer2_2/Wx_plus_b/MatMul_grad/MatMul_1*
_output_shapes
:	є


2train_2/gradients/dropout_2/dropout/mul_grad/ShapeShapedropout_2/dropout/div*
T0*
out_type0*#
_output_shapes
:џџџџџџџџџ

4train_2/gradients/dropout_2/dropout/mul_grad/Shape_1Shapedropout_2/dropout/Floor*
T0*
out_type0*#
_output_shapes
:џџџџџџџџџ

Btrain_2/gradients/dropout_2/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs2train_2/gradients/dropout_2/dropout/mul_grad/Shape4train_2/gradients/dropout_2/dropout/mul_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
О
0train_2/gradients/dropout_2/dropout/mul_grad/mulMulItrain_2/gradients/layer2_2/Wx_plus_b/MatMul_grad/tuple/control_dependencydropout_2/dropout/Floor*
T0*
_output_shapes
:
э
0train_2/gradients/dropout_2/dropout/mul_grad/SumSum0train_2/gradients/dropout_2/dropout/mul_grad/mulBtrain_2/gradients/dropout_2/dropout/mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
ж
4train_2/gradients/dropout_2/dropout/mul_grad/ReshapeReshape0train_2/gradients/dropout_2/dropout/mul_grad/Sum2train_2/gradients/dropout_2/dropout/mul_grad/Shape*
T0*
Tshape0*
_output_shapes
:
О
2train_2/gradients/dropout_2/dropout/mul_grad/mul_1Muldropout_2/dropout/divItrain_2/gradients/layer2_2/Wx_plus_b/MatMul_grad/tuple/control_dependency*
T0*
_output_shapes
:
ѓ
2train_2/gradients/dropout_2/dropout/mul_grad/Sum_1Sum2train_2/gradients/dropout_2/dropout/mul_grad/mul_1Dtrain_2/gradients/dropout_2/dropout/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
м
6train_2/gradients/dropout_2/dropout/mul_grad/Reshape_1Reshape2train_2/gradients/dropout_2/dropout/mul_grad/Sum_14train_2/gradients/dropout_2/dropout/mul_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
Е
=train_2/gradients/dropout_2/dropout/mul_grad/tuple/group_depsNoOp5^train_2/gradients/dropout_2/dropout/mul_grad/Reshape7^train_2/gradients/dropout_2/dropout/mul_grad/Reshape_1
Г
Etrain_2/gradients/dropout_2/dropout/mul_grad/tuple/control_dependencyIdentity4train_2/gradients/dropout_2/dropout/mul_grad/Reshape>^train_2/gradients/dropout_2/dropout/mul_grad/tuple/group_deps*
T0*G
_class=
;9loc:@train_2/gradients/dropout_2/dropout/mul_grad/Reshape*
_output_shapes
:
Й
Gtrain_2/gradients/dropout_2/dropout/mul_grad/tuple/control_dependency_1Identity6train_2/gradients/dropout_2/dropout/mul_grad/Reshape_1>^train_2/gradients/dropout_2/dropout/mul_grad/tuple/group_deps*
T0*I
_class?
=;loc:@train_2/gradients/dropout_2/dropout/mul_grad/Reshape_1*
_output_shapes
:

2train_2/gradients/dropout_2/dropout/div_grad/ShapeShapelayer1_2/activation*
T0*
out_type0*
_output_shapes
:

4train_2/gradients/dropout_2/dropout/div_grad/Shape_1Shapedropout_2/Placeholder*
T0*
out_type0*#
_output_shapes
:џџџџџџџџџ

Btrain_2/gradients/dropout_2/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs2train_2/gradients/dropout_2/dropout/div_grad/Shape4train_2/gradients/dropout_2/dropout/div_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Р
4train_2/gradients/dropout_2/dropout/div_grad/RealDivRealDivEtrain_2/gradients/dropout_2/dropout/mul_grad/tuple/control_dependencydropout_2/Placeholder*
T0*
_output_shapes
:
ё
0train_2/gradients/dropout_2/dropout/div_grad/SumSum4train_2/gradients/dropout_2/dropout/div_grad/RealDivBtrain_2/gradients/dropout_2/dropout/div_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
ц
4train_2/gradients/dropout_2/dropout/div_grad/ReshapeReshape0train_2/gradients/dropout_2/dropout/div_grad/Sum2train_2/gradients/dropout_2/dropout/div_grad/Shape*
T0*
Tshape0*(
_output_shapes
:џџџџџџџџџє

0train_2/gradients/dropout_2/dropout/div_grad/NegNeglayer1_2/activation*
T0*(
_output_shapes
:џџџџџџџџџє
­
6train_2/gradients/dropout_2/dropout/div_grad/RealDiv_1RealDiv0train_2/gradients/dropout_2/dropout/div_grad/Negdropout_2/Placeholder*
T0*
_output_shapes
:
Г
6train_2/gradients/dropout_2/dropout/div_grad/RealDiv_2RealDiv6train_2/gradients/dropout_2/dropout/div_grad/RealDiv_1dropout_2/Placeholder*
T0*
_output_shapes
:
й
0train_2/gradients/dropout_2/dropout/div_grad/mulMulEtrain_2/gradients/dropout_2/dropout/mul_grad/tuple/control_dependency6train_2/gradients/dropout_2/dropout/div_grad/RealDiv_2*
T0*
_output_shapes
:
ё
2train_2/gradients/dropout_2/dropout/div_grad/Sum_1Sum0train_2/gradients/dropout_2/dropout/div_grad/mulDtrain_2/gradients/dropout_2/dropout/div_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
м
6train_2/gradients/dropout_2/dropout/div_grad/Reshape_1Reshape2train_2/gradients/dropout_2/dropout/div_grad/Sum_14train_2/gradients/dropout_2/dropout/div_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
Е
=train_2/gradients/dropout_2/dropout/div_grad/tuple/group_depsNoOp5^train_2/gradients/dropout_2/dropout/div_grad/Reshape7^train_2/gradients/dropout_2/dropout/div_grad/Reshape_1
У
Etrain_2/gradients/dropout_2/dropout/div_grad/tuple/control_dependencyIdentity4train_2/gradients/dropout_2/dropout/div_grad/Reshape>^train_2/gradients/dropout_2/dropout/div_grad/tuple/group_deps*
T0*G
_class=
;9loc:@train_2/gradients/dropout_2/dropout/div_grad/Reshape*(
_output_shapes
:џџџџџџџџџє
Й
Gtrain_2/gradients/dropout_2/dropout/div_grad/tuple/control_dependency_1Identity6train_2/gradients/dropout_2/dropout/div_grad/Reshape_1>^train_2/gradients/dropout_2/dropout/div_grad/tuple/group_deps*
T0*I
_class?
=;loc:@train_2/gradients/dropout_2/dropout/div_grad/Reshape_1*
_output_shapes
:
Ю
3train_2/gradients/layer1_2/activation_grad/ReluGradReluGradEtrain_2/gradients/dropout_2/dropout/div_grad/tuple/control_dependencylayer1_2/activation*
T0*(
_output_shapes
:џџџџџџџџџє

3train_2/gradients/layer1_2/Wx_plus_b/add_grad/ShapeShapelayer1_2/Wx_plus_b/MatMul*
T0*
out_type0*
_output_shapes
:

5train_2/gradients/layer1_2/Wx_plus_b/add_grad/Shape_1Const*
valueB:є*
dtype0*
_output_shapes
:

Ctrain_2/gradients/layer1_2/Wx_plus_b/add_grad/BroadcastGradientArgsBroadcastGradientArgs3train_2/gradients/layer1_2/Wx_plus_b/add_grad/Shape5train_2/gradients/layer1_2/Wx_plus_b/add_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
ђ
1train_2/gradients/layer1_2/Wx_plus_b/add_grad/SumSum3train_2/gradients/layer1_2/activation_grad/ReluGradCtrain_2/gradients/layer1_2/Wx_plus_b/add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
щ
5train_2/gradients/layer1_2/Wx_plus_b/add_grad/ReshapeReshape1train_2/gradients/layer1_2/Wx_plus_b/add_grad/Sum3train_2/gradients/layer1_2/Wx_plus_b/add_grad/Shape*
T0*
Tshape0*(
_output_shapes
:џџџџџџџџџє
і
3train_2/gradients/layer1_2/Wx_plus_b/add_grad/Sum_1Sum3train_2/gradients/layer1_2/activation_grad/ReluGradEtrain_2/gradients/layer1_2/Wx_plus_b/add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
т
7train_2/gradients/layer1_2/Wx_plus_b/add_grad/Reshape_1Reshape3train_2/gradients/layer1_2/Wx_plus_b/add_grad/Sum_15train_2/gradients/layer1_2/Wx_plus_b/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes	
:є
И
>train_2/gradients/layer1_2/Wx_plus_b/add_grad/tuple/group_depsNoOp6^train_2/gradients/layer1_2/Wx_plus_b/add_grad/Reshape8^train_2/gradients/layer1_2/Wx_plus_b/add_grad/Reshape_1
Ч
Ftrain_2/gradients/layer1_2/Wx_plus_b/add_grad/tuple/control_dependencyIdentity5train_2/gradients/layer1_2/Wx_plus_b/add_grad/Reshape?^train_2/gradients/layer1_2/Wx_plus_b/add_grad/tuple/group_deps*
T0*H
_class>
<:loc:@train_2/gradients/layer1_2/Wx_plus_b/add_grad/Reshape*(
_output_shapes
:џџџџџџџџџє
Р
Htrain_2/gradients/layer1_2/Wx_plus_b/add_grad/tuple/control_dependency_1Identity7train_2/gradients/layer1_2/Wx_plus_b/add_grad/Reshape_1?^train_2/gradients/layer1_2/Wx_plus_b/add_grad/tuple/group_deps*
T0*J
_class@
><loc:@train_2/gradients/layer1_2/Wx_plus_b/add_grad/Reshape_1*
_output_shapes	
:є

7train_2/gradients/layer1_2/Wx_plus_b/MatMul_grad/MatMulMatMulFtrain_2/gradients/layer1_2/Wx_plus_b/add_grad/tuple/control_dependencylayer1_2/weights/Variable/read*
transpose_a( *
transpose_b(*
T0*(
_output_shapes
:џџџџџџџџџ
э
9train_2/gradients/layer1_2/Wx_plus_b/MatMul_grad/MatMul_1MatMulinput_3/x-inputFtrain_2/gradients/layer1_2/Wx_plus_b/add_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0* 
_output_shapes
:
є
П
Atrain_2/gradients/layer1_2/Wx_plus_b/MatMul_grad/tuple/group_depsNoOp8^train_2/gradients/layer1_2/Wx_plus_b/MatMul_grad/MatMul:^train_2/gradients/layer1_2/Wx_plus_b/MatMul_grad/MatMul_1
б
Itrain_2/gradients/layer1_2/Wx_plus_b/MatMul_grad/tuple/control_dependencyIdentity7train_2/gradients/layer1_2/Wx_plus_b/MatMul_grad/MatMulB^train_2/gradients/layer1_2/Wx_plus_b/MatMul_grad/tuple/group_deps*
T0*J
_class@
><loc:@train_2/gradients/layer1_2/Wx_plus_b/MatMul_grad/MatMul*(
_output_shapes
:џџџџџџџџџ
Я
Ktrain_2/gradients/layer1_2/Wx_plus_b/MatMul_grad/tuple/control_dependency_1Identity9train_2/gradients/layer1_2/Wx_plus_b/MatMul_grad/MatMul_1B^train_2/gradients/layer1_2/Wx_plus_b/MatMul_grad/tuple/group_deps*
T0*L
_classB
@>loc:@train_2/gradients/layer1_2/Wx_plus_b/MatMul_grad/MatMul_1* 
_output_shapes
:
є

!train_2/beta1_power/initial_valueConst*
valueB
 *fff?*
dtype0*+
_class!
loc:@layer1_2/biases/Variable*
_output_shapes
: 
Є
train_2/beta1_power
VariableV2*
shape: *
dtype0*
	container *
shared_name *+
_class!
loc:@layer1_2/biases/Variable*
_output_shapes
: 
г
train_2/beta1_power/AssignAssigntrain_2/beta1_power!train_2/beta1_power/initial_value*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@layer1_2/biases/Variable*
_output_shapes
: 

train_2/beta1_power/readIdentitytrain_2/beta1_power*
T0*+
_class!
loc:@layer1_2/biases/Variable*
_output_shapes
: 

!train_2/beta2_power/initial_valueConst*
valueB
 *wО?*
dtype0*+
_class!
loc:@layer1_2/biases/Variable*
_output_shapes
: 
Є
train_2/beta2_power
VariableV2*
shape: *
dtype0*
	container *
shared_name *+
_class!
loc:@layer1_2/biases/Variable*
_output_shapes
: 
г
train_2/beta2_power/AssignAssigntrain_2/beta2_power!train_2/beta2_power/initial_value*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@layer1_2/biases/Variable*
_output_shapes
: 

train_2/beta2_power/readIdentitytrain_2/beta2_power*
T0*+
_class!
loc:@layer1_2/biases/Variable*
_output_shapes
: 
З
0layer1_2/weights/Variable/Adam/Initializer/zerosConst*
valueB
є*    *
dtype0*,
_class"
 loc:@layer1_2/weights/Variable* 
_output_shapes
:
є
Ф
layer1_2/weights/Variable/Adam
VariableV2*
shape:
є*
dtype0*
	container *
shared_name *,
_class"
 loc:@layer1_2/weights/Variable* 
_output_shapes
:
є

%layer1_2/weights/Variable/Adam/AssignAssignlayer1_2/weights/Variable/Adam0layer1_2/weights/Variable/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@layer1_2/weights/Variable* 
_output_shapes
:
є
Ј
#layer1_2/weights/Variable/Adam/readIdentitylayer1_2/weights/Variable/Adam*
T0*,
_class"
 loc:@layer1_2/weights/Variable* 
_output_shapes
:
є
Й
2layer1_2/weights/Variable/Adam_1/Initializer/zerosConst*
valueB
є*    *
dtype0*,
_class"
 loc:@layer1_2/weights/Variable* 
_output_shapes
:
є
Ц
 layer1_2/weights/Variable/Adam_1
VariableV2*
shape:
є*
dtype0*
	container *
shared_name *,
_class"
 loc:@layer1_2/weights/Variable* 
_output_shapes
:
є

'layer1_2/weights/Variable/Adam_1/AssignAssign layer1_2/weights/Variable/Adam_12layer1_2/weights/Variable/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@layer1_2/weights/Variable* 
_output_shapes
:
є
Ќ
%layer1_2/weights/Variable/Adam_1/readIdentity layer1_2/weights/Variable/Adam_1*
T0*,
_class"
 loc:@layer1_2/weights/Variable* 
_output_shapes
:
є
Ћ
/layer1_2/biases/Variable/Adam/Initializer/zerosConst*
valueBє*    *
dtype0*+
_class!
loc:@layer1_2/biases/Variable*
_output_shapes	
:є
И
layer1_2/biases/Variable/Adam
VariableV2*
shape:є*
dtype0*
	container *
shared_name *+
_class!
loc:@layer1_2/biases/Variable*
_output_shapes	
:є
њ
$layer1_2/biases/Variable/Adam/AssignAssignlayer1_2/biases/Variable/Adam/layer1_2/biases/Variable/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@layer1_2/biases/Variable*
_output_shapes	
:є
 
"layer1_2/biases/Variable/Adam/readIdentitylayer1_2/biases/Variable/Adam*
T0*+
_class!
loc:@layer1_2/biases/Variable*
_output_shapes	
:є
­
1layer1_2/biases/Variable/Adam_1/Initializer/zerosConst*
valueBє*    *
dtype0*+
_class!
loc:@layer1_2/biases/Variable*
_output_shapes	
:є
К
layer1_2/biases/Variable/Adam_1
VariableV2*
shape:є*
dtype0*
	container *
shared_name *+
_class!
loc:@layer1_2/biases/Variable*
_output_shapes	
:є

&layer1_2/biases/Variable/Adam_1/AssignAssignlayer1_2/biases/Variable/Adam_11layer1_2/biases/Variable/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@layer1_2/biases/Variable*
_output_shapes	
:є
Є
$layer1_2/biases/Variable/Adam_1/readIdentitylayer1_2/biases/Variable/Adam_1*
T0*+
_class!
loc:@layer1_2/biases/Variable*
_output_shapes	
:є
Е
0layer2_2/weights/Variable/Adam/Initializer/zerosConst*
valueB	є
*    *
dtype0*,
_class"
 loc:@layer2_2/weights/Variable*
_output_shapes
:	є

Т
layer2_2/weights/Variable/Adam
VariableV2*
shape:	є
*
dtype0*
	container *
shared_name *,
_class"
 loc:@layer2_2/weights/Variable*
_output_shapes
:	є


%layer2_2/weights/Variable/Adam/AssignAssignlayer2_2/weights/Variable/Adam0layer2_2/weights/Variable/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@layer2_2/weights/Variable*
_output_shapes
:	є

Ї
#layer2_2/weights/Variable/Adam/readIdentitylayer2_2/weights/Variable/Adam*
T0*,
_class"
 loc:@layer2_2/weights/Variable*
_output_shapes
:	є

З
2layer2_2/weights/Variable/Adam_1/Initializer/zerosConst*
valueB	є
*    *
dtype0*,
_class"
 loc:@layer2_2/weights/Variable*
_output_shapes
:	є

Ф
 layer2_2/weights/Variable/Adam_1
VariableV2*
shape:	є
*
dtype0*
	container *
shared_name *,
_class"
 loc:@layer2_2/weights/Variable*
_output_shapes
:	є


'layer2_2/weights/Variable/Adam_1/AssignAssign layer2_2/weights/Variable/Adam_12layer2_2/weights/Variable/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@layer2_2/weights/Variable*
_output_shapes
:	є

Ћ
%layer2_2/weights/Variable/Adam_1/readIdentity layer2_2/weights/Variable/Adam_1*
T0*,
_class"
 loc:@layer2_2/weights/Variable*
_output_shapes
:	є

Љ
/layer2_2/biases/Variable/Adam/Initializer/zerosConst*
valueB
*    *
dtype0*+
_class!
loc:@layer2_2/biases/Variable*
_output_shapes
:

Ж
layer2_2/biases/Variable/Adam
VariableV2*
shape:
*
dtype0*
	container *
shared_name *+
_class!
loc:@layer2_2/biases/Variable*
_output_shapes
:

љ
$layer2_2/biases/Variable/Adam/AssignAssignlayer2_2/biases/Variable/Adam/layer2_2/biases/Variable/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@layer2_2/biases/Variable*
_output_shapes
:


"layer2_2/biases/Variable/Adam/readIdentitylayer2_2/biases/Variable/Adam*
T0*+
_class!
loc:@layer2_2/biases/Variable*
_output_shapes
:

Ћ
1layer2_2/biases/Variable/Adam_1/Initializer/zerosConst*
valueB
*    *
dtype0*+
_class!
loc:@layer2_2/biases/Variable*
_output_shapes
:

И
layer2_2/biases/Variable/Adam_1
VariableV2*
shape:
*
dtype0*
	container *
shared_name *+
_class!
loc:@layer2_2/biases/Variable*
_output_shapes
:

џ
&layer2_2/biases/Variable/Adam_1/AssignAssignlayer2_2/biases/Variable/Adam_11layer2_2/biases/Variable/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@layer2_2/biases/Variable*
_output_shapes
:

Ѓ
$layer2_2/biases/Variable/Adam_1/readIdentitylayer2_2/biases/Variable/Adam_1*
T0*+
_class!
loc:@layer2_2/biases/Variable*
_output_shapes
:

_
train_2/Adam/learning_rateConst*
valueB
 *o:*
dtype0*
_output_shapes
: 
W
train_2/Adam/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
W
train_2/Adam/beta2Const*
valueB
 *wО?*
dtype0*
_output_shapes
: 
Y
train_2/Adam/epsilonConst*
valueB
 *wЬ+2*
dtype0*
_output_shapes
: 
ќ
7train_2/Adam/update_layer1_2/weights/Variable/ApplyAdam	ApplyAdamlayer1_2/weights/Variablelayer1_2/weights/Variable/Adam layer1_2/weights/Variable/Adam_1train_2/beta1_power/readtrain_2/beta2_power/readtrain_2/Adam/learning_ratetrain_2/Adam/beta1train_2/Adam/beta2train_2/Adam/epsilonKtrain_2/gradients/layer1_2/Wx_plus_b/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *,
_class"
 loc:@layer1_2/weights/Variable* 
_output_shapes
:
є
я
6train_2/Adam/update_layer1_2/biases/Variable/ApplyAdam	ApplyAdamlayer1_2/biases/Variablelayer1_2/biases/Variable/Adamlayer1_2/biases/Variable/Adam_1train_2/beta1_power/readtrain_2/beta2_power/readtrain_2/Adam/learning_ratetrain_2/Adam/beta1train_2/Adam/beta2train_2/Adam/epsilonHtrain_2/gradients/layer1_2/Wx_plus_b/add_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *+
_class!
loc:@layer1_2/biases/Variable*
_output_shapes	
:є
ћ
7train_2/Adam/update_layer2_2/weights/Variable/ApplyAdam	ApplyAdamlayer2_2/weights/Variablelayer2_2/weights/Variable/Adam layer2_2/weights/Variable/Adam_1train_2/beta1_power/readtrain_2/beta2_power/readtrain_2/Adam/learning_ratetrain_2/Adam/beta1train_2/Adam/beta2train_2/Adam/epsilonKtrain_2/gradients/layer2_2/Wx_plus_b/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *,
_class"
 loc:@layer2_2/weights/Variable*
_output_shapes
:	є

ю
6train_2/Adam/update_layer2_2/biases/Variable/ApplyAdam	ApplyAdamlayer2_2/biases/Variablelayer2_2/biases/Variable/Adamlayer2_2/biases/Variable/Adam_1train_2/beta1_power/readtrain_2/beta2_power/readtrain_2/Adam/learning_ratetrain_2/Adam/beta1train_2/Adam/beta2train_2/Adam/epsilonHtrain_2/gradients/layer2_2/Wx_plus_b/add_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *+
_class!
loc:@layer2_2/biases/Variable*
_output_shapes
:

љ
train_2/Adam/mulMultrain_2/beta1_power/readtrain_2/Adam/beta18^train_2/Adam/update_layer1_2/weights/Variable/ApplyAdam7^train_2/Adam/update_layer1_2/biases/Variable/ApplyAdam8^train_2/Adam/update_layer2_2/weights/Variable/ApplyAdam7^train_2/Adam/update_layer2_2/biases/Variable/ApplyAdam*
T0*+
_class!
loc:@layer1_2/biases/Variable*
_output_shapes
: 
Л
train_2/Adam/AssignAssigntrain_2/beta1_powertrain_2/Adam/mul*
T0*
validate_shape(*
use_locking( *+
_class!
loc:@layer1_2/biases/Variable*
_output_shapes
: 
ћ
train_2/Adam/mul_1Multrain_2/beta2_power/readtrain_2/Adam/beta28^train_2/Adam/update_layer1_2/weights/Variable/ApplyAdam7^train_2/Adam/update_layer1_2/biases/Variable/ApplyAdam8^train_2/Adam/update_layer2_2/weights/Variable/ApplyAdam7^train_2/Adam/update_layer2_2/biases/Variable/ApplyAdam*
T0*+
_class!
loc:@layer1_2/biases/Variable*
_output_shapes
: 
П
train_2/Adam/Assign_1Assigntrain_2/beta2_powertrain_2/Adam/mul_1*
T0*
validate_shape(*
use_locking( *+
_class!
loc:@layer1_2/biases/Variable*
_output_shapes
: 
Ј
train_2/AdamNoOp8^train_2/Adam/update_layer1_2/weights/Variable/ApplyAdam7^train_2/Adam/update_layer1_2/biases/Variable/ApplyAdam8^train_2/Adam/update_layer2_2/weights/Variable/ApplyAdam7^train_2/Adam/update_layer2_2/biases/Variable/ApplyAdam^train_2/Adam/Assign^train_2/Adam/Assign_1
p
.accuracy_4/correct_prediction/ArgMax/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
Р
$accuracy_4/correct_prediction/ArgMaxArgMaxlayer2_2/activation.accuracy_4/correct_prediction/ArgMax/dimension*
T0*

Tidx0*
output_type0	*#
_output_shapes
:џџџџџџџџџ

#accuracy_4/correct_prediction/EqualEqual$accuracy_4/correct_prediction/ArgMaxinput_3/y-input*
T0	*#
_output_shapes
:џџџџџџџџџ

accuracy_4/accuracy/CastCast#accuracy_4/correct_prediction/Equal*

SrcT0
*

DstT0*#
_output_shapes
:џџџџџџџџџ
c
accuracy_4/accuracy/ConstConst*
valueB: *
dtype0*
_output_shapes
:

accuracy_4/accuracy/MeanMeanaccuracy_4/accuracy/Castaccuracy_4/accuracy/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
Z
accuracy_5/tagsConst*
valueB B
accuracy_5*
dtype0*
_output_shapes
: 
g

accuracy_5ScalarSummaryaccuracy_5/tagsaccuracy_4/accuracy/Mean*
T0*
_output_shapes
: 
ў
Merge_2/MergeSummaryMergeSummaryinput_reshape/inputinput_reshape_1/inputlayer1/weights/summaries/mean!layer1/weights/summaries/stddev_1layer1/weights/summaries/maxlayer1/weights/summaries/min"layer1/weights/summaries/histogramlayer1/biases/summaries/mean layer1/biases/summaries/stddev_1layer1/biases/summaries/maxlayer1/biases/summaries/min!layer1/biases/summaries/histogram layer1/Wx_plus_b/pre_activationslayer1/activations dropout/dropout_keep_probabilitylayer2/weights/summaries/mean!layer2/weights/summaries/stddev_1layer2/weights/summaries/maxlayer2/weights/summaries/min"layer2/weights/summaries/histogramlayer2/biases/summaries/mean layer2/biases/summaries/stddev_1layer2/biases/summaries/maxlayer2/biases/summaries/min!layer2/biases/summaries/histogram layer2/Wx_plus_b/pre_activationslayer2/activationscross_entropy_1
accuracy_1input_reshape_2/inputlayer1_1/weights/summaries/mean#layer1_1/weights/summaries/stddev_1layer1_1/weights/summaries/maxlayer1_1/weights/summaries/min$layer1_1/weights/summaries/histogramlayer1_1/biases/summaries/mean"layer1_1/biases/summaries/stddev_1layer1_1/biases/summaries/maxlayer1_1/biases/summaries/min#layer1_1/biases/summaries/histogram"layer1_1/Wx_plus_b/pre_activationslayer1_1/activations"dropout_1/dropout_keep_probabilitylayer2_1/weights/summaries/mean#layer2_1/weights/summaries/stddev_1layer2_1/weights/summaries/maxlayer2_1/weights/summaries/min$layer2_1/weights/summaries/histogramlayer2_1/biases/summaries/mean"layer2_1/biases/summaries/stddev_1layer2_1/biases/summaries/maxlayer2_1/biases/summaries/min#layer2_1/biases/summaries/histogram"layer2_1/Wx_plus_b/pre_activationslayer2_1/activationscross_entropy_3
accuracy_3input_reshape_3/inputlayer1_2/weights/summaries/mean#layer1_2/weights/summaries/stddev_1layer1_2/weights/summaries/maxlayer1_2/weights/summaries/min$layer1_2/weights/summaries/histogramlayer1_2/biases/summaries/mean"layer1_2/biases/summaries/stddev_1layer1_2/biases/summaries/maxlayer1_2/biases/summaries/min#layer1_2/biases/summaries/histogram"layer1_2/Wx_plus_b/pre_activationslayer1_2/activations"dropout_2/dropout_keep_probabilitylayer2_2/weights/summaries/mean#layer2_2/weights/summaries/stddev_1layer2_2/weights/summaries/maxlayer2_2/weights/summaries/min$layer2_2/weights/summaries/histogramlayer2_2/biases/summaries/mean"layer2_2/biases/summaries/stddev_1layer2_2/biases/summaries/maxlayer2_2/biases/summaries/min#layer2_2/biases/summaries/histogram"layer2_2/Wx_plus_b/pre_activationslayer2_2/activationscross_entropy_5
accuracy_5*
NU*
_output_shapes
: 
t
input_4/x-inputPlaceholder*
dtype0*
shape:џџџџџџџџџ*(
_output_shapes
:џџџџџџџџџ
j
input_4/y-inputPlaceholder*
dtype0	*
shape:џџџџџџџџџ*#
_output_shapes
:џџџџџџџџџ
v
input_reshape_4/Reshape/shapeConst*%
valueB"џџџџ         *
dtype0*
_output_shapes
:

input_reshape_4/ReshapeReshapeinput_4/x-inputinput_reshape_4/Reshape/shape*
T0*
Tshape0*/
_output_shapes
:џџџџџџџџџ
o
input_reshape_4/input/tagConst*&
valueB Binput_reshape_4/input*
dtype0*
_output_shapes
: 
­
input_reshape_4/inputImageSummaryinput_reshape_4/input/taginput_reshape_4/Reshape*

max_images
*
T0*
	bad_colorB:џ  џ*
_output_shapes
: 
x
'layer1_3/weights/truncated_normal/shapeConst*
valueB"  є  *
dtype0*
_output_shapes
:
k
&layer1_3/weights/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
m
(layer1_3/weights/truncated_normal/stddevConst*
valueB
 *ЭЬЬ=*
dtype0*
_output_shapes
: 
О
1layer1_3/weights/truncated_normal/TruncatedNormalTruncatedNormal'layer1_3/weights/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0* 
_output_shapes
:
є
Д
%layer1_3/weights/truncated_normal/mulMul1layer1_3/weights/truncated_normal/TruncatedNormal(layer1_3/weights/truncated_normal/stddev*
T0* 
_output_shapes
:
є
Ђ
!layer1_3/weights/truncated_normalAdd%layer1_3/weights/truncated_normal/mul&layer1_3/weights/truncated_normal/mean*
T0* 
_output_shapes
:
є

layer1_3/weights/Variable
VariableV2*
shape:
є*
dtype0*
	container *
shared_name * 
_output_shapes
:
є
ъ
 layer1_3/weights/Variable/AssignAssignlayer1_3/weights/Variable!layer1_3/weights/truncated_normal*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@layer1_3/weights/Variable* 
_output_shapes
:
є

layer1_3/weights/Variable/readIdentitylayer1_3/weights/Variable*
T0*,
_class"
 loc:@layer1_3/weights/Variable* 
_output_shapes
:
є
a
layer1_3/weights/summaries/RankConst*
value	B :*
dtype0*
_output_shapes
: 
h
&layer1_3/weights/summaries/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
h
&layer1_3/weights/summaries/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Т
 layer1_3/weights/summaries/rangeRange&layer1_3/weights/summaries/range/startlayer1_3/weights/summaries/Rank&layer1_3/weights/summaries/range/delta*

Tidx0*
_output_shapes
:
Ї
layer1_3/weights/summaries/MeanMeanlayer1_3/weights/Variable/read layer1_3/weights/summaries/range*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

$layer1_3/weights/summaries/mean/tagsConst*0
value'B% Blayer1_3/weights/summaries/mean*
dtype0*
_output_shapes
: 

layer1_3/weights/summaries/meanScalarSummary$layer1_3/weights/summaries/mean/tagslayer1_3/weights/summaries/Mean*
T0*
_output_shapes
: 

%layer1_3/weights/summaries/stddev/subSublayer1_3/weights/Variable/readlayer1_3/weights/summaries/Mean*
T0* 
_output_shapes
:
є

(layer1_3/weights/summaries/stddev/SquareSquare%layer1_3/weights/summaries/stddev/sub*
T0* 
_output_shapes
:
є
x
'layer1_3/weights/summaries/stddev/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
П
&layer1_3/weights/summaries/stddev/MeanMean(layer1_3/weights/summaries/stddev/Square'layer1_3/weights/summaries/stddev/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
w
&layer1_3/weights/summaries/stddev/SqrtSqrt&layer1_3/weights/summaries/stddev/Mean*
T0*
_output_shapes
: 

(layer1_3/weights/summaries/stddev_1/tagsConst*4
value+B) B#layer1_3/weights/summaries/stddev_1*
dtype0*
_output_shapes
: 
Ї
#layer1_3/weights/summaries/stddev_1ScalarSummary(layer1_3/weights/summaries/stddev_1/tags&layer1_3/weights/summaries/stddev/Sqrt*
T0*
_output_shapes
: 
c
!layer1_3/weights/summaries/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
j
(layer1_3/weights/summaries/range_1/startConst*
value	B : *
dtype0*
_output_shapes
: 
j
(layer1_3/weights/summaries/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ъ
"layer1_3/weights/summaries/range_1Range(layer1_3/weights/summaries/range_1/start!layer1_3/weights/summaries/Rank_1(layer1_3/weights/summaries/range_1/delta*

Tidx0*
_output_shapes
:
Ї
layer1_3/weights/summaries/MaxMaxlayer1_3/weights/Variable/read"layer1_3/weights/summaries/range_1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

#layer1_3/weights/summaries/max/tagsConst*/
value&B$ Blayer1_3/weights/summaries/max*
dtype0*
_output_shapes
: 

layer1_3/weights/summaries/maxScalarSummary#layer1_3/weights/summaries/max/tagslayer1_3/weights/summaries/Max*
T0*
_output_shapes
: 
c
!layer1_3/weights/summaries/Rank_2Const*
value	B :*
dtype0*
_output_shapes
: 
j
(layer1_3/weights/summaries/range_2/startConst*
value	B : *
dtype0*
_output_shapes
: 
j
(layer1_3/weights/summaries/range_2/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ъ
"layer1_3/weights/summaries/range_2Range(layer1_3/weights/summaries/range_2/start!layer1_3/weights/summaries/Rank_2(layer1_3/weights/summaries/range_2/delta*

Tidx0*
_output_shapes
:
Ї
layer1_3/weights/summaries/MinMinlayer1_3/weights/Variable/read"layer1_3/weights/summaries/range_2*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

#layer1_3/weights/summaries/min/tagsConst*/
value&B$ Blayer1_3/weights/summaries/min*
dtype0*
_output_shapes
: 

layer1_3/weights/summaries/minScalarSummary#layer1_3/weights/summaries/min/tagslayer1_3/weights/summaries/Min*
T0*
_output_shapes
: 

(layer1_3/weights/summaries/histogram/tagConst*5
value,B* B$layer1_3/weights/summaries/histogram*
dtype0*
_output_shapes
: 
Ѓ
$layer1_3/weights/summaries/histogramHistogramSummary(layer1_3/weights/summaries/histogram/taglayer1_3/weights/Variable/read*
T0*
_output_shapes
: 
d
layer1_3/biases/ConstConst*
valueBє*ЭЬЬ=*
dtype0*
_output_shapes	
:є

layer1_3/biases/Variable
VariableV2*
shape:є*
dtype0*
	container *
shared_name *
_output_shapes	
:є
ж
layer1_3/biases/Variable/AssignAssignlayer1_3/biases/Variablelayer1_3/biases/Const*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@layer1_3/biases/Variable*
_output_shapes	
:є

layer1_3/biases/Variable/readIdentitylayer1_3/biases/Variable*
T0*+
_class!
loc:@layer1_3/biases/Variable*
_output_shapes	
:є
`
layer1_3/biases/summaries/RankConst*
value	B :*
dtype0*
_output_shapes
: 
g
%layer1_3/biases/summaries/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
g
%layer1_3/biases/summaries/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
О
layer1_3/biases/summaries/rangeRange%layer1_3/biases/summaries/range/startlayer1_3/biases/summaries/Rank%layer1_3/biases/summaries/range/delta*

Tidx0*
_output_shapes
:
Є
layer1_3/biases/summaries/MeanMeanlayer1_3/biases/Variable/readlayer1_3/biases/summaries/range*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

#layer1_3/biases/summaries/mean/tagsConst*/
value&B$ Blayer1_3/biases/summaries/mean*
dtype0*
_output_shapes
: 

layer1_3/biases/summaries/meanScalarSummary#layer1_3/biases/summaries/mean/tagslayer1_3/biases/summaries/Mean*
T0*
_output_shapes
: 

$layer1_3/biases/summaries/stddev/subSublayer1_3/biases/Variable/readlayer1_3/biases/summaries/Mean*
T0*
_output_shapes	
:є
}
'layer1_3/biases/summaries/stddev/SquareSquare$layer1_3/biases/summaries/stddev/sub*
T0*
_output_shapes	
:є
p
&layer1_3/biases/summaries/stddev/ConstConst*
valueB: *
dtype0*
_output_shapes
:
М
%layer1_3/biases/summaries/stddev/MeanMean'layer1_3/biases/summaries/stddev/Square&layer1_3/biases/summaries/stddev/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
u
%layer1_3/biases/summaries/stddev/SqrtSqrt%layer1_3/biases/summaries/stddev/Mean*
T0*
_output_shapes
: 

'layer1_3/biases/summaries/stddev_1/tagsConst*3
value*B( B"layer1_3/biases/summaries/stddev_1*
dtype0*
_output_shapes
: 
Є
"layer1_3/biases/summaries/stddev_1ScalarSummary'layer1_3/biases/summaries/stddev_1/tags%layer1_3/biases/summaries/stddev/Sqrt*
T0*
_output_shapes
: 
b
 layer1_3/biases/summaries/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
i
'layer1_3/biases/summaries/range_1/startConst*
value	B : *
dtype0*
_output_shapes
: 
i
'layer1_3/biases/summaries/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ц
!layer1_3/biases/summaries/range_1Range'layer1_3/biases/summaries/range_1/start layer1_3/biases/summaries/Rank_1'layer1_3/biases/summaries/range_1/delta*

Tidx0*
_output_shapes
:
Є
layer1_3/biases/summaries/MaxMaxlayer1_3/biases/Variable/read!layer1_3/biases/summaries/range_1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

"layer1_3/biases/summaries/max/tagsConst*.
value%B# Blayer1_3/biases/summaries/max*
dtype0*
_output_shapes
: 

layer1_3/biases/summaries/maxScalarSummary"layer1_3/biases/summaries/max/tagslayer1_3/biases/summaries/Max*
T0*
_output_shapes
: 
b
 layer1_3/biases/summaries/Rank_2Const*
value	B :*
dtype0*
_output_shapes
: 
i
'layer1_3/biases/summaries/range_2/startConst*
value	B : *
dtype0*
_output_shapes
: 
i
'layer1_3/biases/summaries/range_2/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ц
!layer1_3/biases/summaries/range_2Range'layer1_3/biases/summaries/range_2/start layer1_3/biases/summaries/Rank_2'layer1_3/biases/summaries/range_2/delta*

Tidx0*
_output_shapes
:
Є
layer1_3/biases/summaries/MinMinlayer1_3/biases/Variable/read!layer1_3/biases/summaries/range_2*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

"layer1_3/biases/summaries/min/tagsConst*.
value%B# Blayer1_3/biases/summaries/min*
dtype0*
_output_shapes
: 

layer1_3/biases/summaries/minScalarSummary"layer1_3/biases/summaries/min/tagslayer1_3/biases/summaries/Min*
T0*
_output_shapes
: 

'layer1_3/biases/summaries/histogram/tagConst*4
value+B) B#layer1_3/biases/summaries/histogram*
dtype0*
_output_shapes
: 
 
#layer1_3/biases/summaries/histogramHistogramSummary'layer1_3/biases/summaries/histogram/taglayer1_3/biases/Variable/read*
T0*
_output_shapes
: 
­
layer1_3/Wx_plus_b/MatMulMatMulinput_4/x-inputlayer1_3/weights/Variable/read*
transpose_a( *
transpose_b( *
T0*(
_output_shapes
:џџџџџџџџџє

layer1_3/Wx_plus_b/addAddlayer1_3/Wx_plus_b/MatMullayer1_3/biases/Variable/read*
T0*(
_output_shapes
:џџџџџџџџџє

&layer1_3/Wx_plus_b/pre_activations/tagConst*3
value*B( B"layer1_3/Wx_plus_b/pre_activations*
dtype0*
_output_shapes
: 

"layer1_3/Wx_plus_b/pre_activationsHistogramSummary&layer1_3/Wx_plus_b/pre_activations/taglayer1_3/Wx_plus_b/add*
T0*
_output_shapes
: 
f
layer1_3/activationRelulayer1_3/Wx_plus_b/add*
T0*(
_output_shapes
:џџџџџџџџџє
m
layer1_3/activations/tagConst*%
valueB Blayer1_3/activations*
dtype0*
_output_shapes
: 
x
layer1_3/activationsHistogramSummarylayer1_3/activations/taglayer1_3/activation*
T0*
_output_shapes
: 
Z
dropout_3/PlaceholderPlaceholder*
dtype0*
shape:*
_output_shapes
:

'dropout_3/dropout_keep_probability/tagsConst*3
value*B( B"dropout_3/dropout_keep_probability*
dtype0*
_output_shapes
: 

"dropout_3/dropout_keep_probabilityScalarSummary'dropout_3/dropout_keep_probability/tagsdropout_3/Placeholder*
T0*
_output_shapes
: 
j
dropout_3/dropout/ShapeShapelayer1_3/activation*
T0*
out_type0*
_output_shapes
:
i
$dropout_3/dropout/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: 
i
$dropout_3/dropout/random_uniform/maxConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Б
.dropout_3/dropout/random_uniform/RandomUniformRandomUniformdropout_3/dropout/Shape*

seed *
seed2 *
dtype0*
T0*(
_output_shapes
:џџџџџџџџџє

$dropout_3/dropout/random_uniform/subSub$dropout_3/dropout/random_uniform/max$dropout_3/dropout/random_uniform/min*
T0*
_output_shapes
: 
Д
$dropout_3/dropout/random_uniform/mulMul.dropout_3/dropout/random_uniform/RandomUniform$dropout_3/dropout/random_uniform/sub*
T0*(
_output_shapes
:џџџџџџџџџє
І
 dropout_3/dropout/random_uniformAdd$dropout_3/dropout/random_uniform/mul$dropout_3/dropout/random_uniform/min*
T0*(
_output_shapes
:џџџџџџџџџє
x
dropout_3/dropout/addAdddropout_3/Placeholder dropout_3/dropout/random_uniform*
T0*
_output_shapes
:
Z
dropout_3/dropout/FloorFloordropout_3/dropout/add*
T0*
_output_shapes
:
o
dropout_3/dropout/divRealDivlayer1_3/activationdropout_3/Placeholder*
T0*
_output_shapes
:

dropout_3/dropout/mulMuldropout_3/dropout/divdropout_3/dropout/Floor*
T0*(
_output_shapes
:џџџџџџџџџє
x
'layer2_3/weights/truncated_normal/shapeConst*
valueB"є  
   *
dtype0*
_output_shapes
:
k
&layer2_3/weights/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
m
(layer2_3/weights/truncated_normal/stddevConst*
valueB
 *ЭЬЬ=*
dtype0*
_output_shapes
: 
Н
1layer2_3/weights/truncated_normal/TruncatedNormalTruncatedNormal'layer2_3/weights/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*
_output_shapes
:	є

Г
%layer2_3/weights/truncated_normal/mulMul1layer2_3/weights/truncated_normal/TruncatedNormal(layer2_3/weights/truncated_normal/stddev*
T0*
_output_shapes
:	є

Ё
!layer2_3/weights/truncated_normalAdd%layer2_3/weights/truncated_normal/mul&layer2_3/weights/truncated_normal/mean*
T0*
_output_shapes
:	є


layer2_3/weights/Variable
VariableV2*
shape:	є
*
dtype0*
	container *
shared_name *
_output_shapes
:	є

щ
 layer2_3/weights/Variable/AssignAssignlayer2_3/weights/Variable!layer2_3/weights/truncated_normal*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@layer2_3/weights/Variable*
_output_shapes
:	є


layer2_3/weights/Variable/readIdentitylayer2_3/weights/Variable*
T0*,
_class"
 loc:@layer2_3/weights/Variable*
_output_shapes
:	є

a
layer2_3/weights/summaries/RankConst*
value	B :*
dtype0*
_output_shapes
: 
h
&layer2_3/weights/summaries/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
h
&layer2_3/weights/summaries/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Т
 layer2_3/weights/summaries/rangeRange&layer2_3/weights/summaries/range/startlayer2_3/weights/summaries/Rank&layer2_3/weights/summaries/range/delta*

Tidx0*
_output_shapes
:
Ї
layer2_3/weights/summaries/MeanMeanlayer2_3/weights/Variable/read layer2_3/weights/summaries/range*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

$layer2_3/weights/summaries/mean/tagsConst*0
value'B% Blayer2_3/weights/summaries/mean*
dtype0*
_output_shapes
: 

layer2_3/weights/summaries/meanScalarSummary$layer2_3/weights/summaries/mean/tagslayer2_3/weights/summaries/Mean*
T0*
_output_shapes
: 

%layer2_3/weights/summaries/stddev/subSublayer2_3/weights/Variable/readlayer2_3/weights/summaries/Mean*
T0*
_output_shapes
:	є


(layer2_3/weights/summaries/stddev/SquareSquare%layer2_3/weights/summaries/stddev/sub*
T0*
_output_shapes
:	є

x
'layer2_3/weights/summaries/stddev/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
П
&layer2_3/weights/summaries/stddev/MeanMean(layer2_3/weights/summaries/stddev/Square'layer2_3/weights/summaries/stddev/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
w
&layer2_3/weights/summaries/stddev/SqrtSqrt&layer2_3/weights/summaries/stddev/Mean*
T0*
_output_shapes
: 

(layer2_3/weights/summaries/stddev_1/tagsConst*4
value+B) B#layer2_3/weights/summaries/stddev_1*
dtype0*
_output_shapes
: 
Ї
#layer2_3/weights/summaries/stddev_1ScalarSummary(layer2_3/weights/summaries/stddev_1/tags&layer2_3/weights/summaries/stddev/Sqrt*
T0*
_output_shapes
: 
c
!layer2_3/weights/summaries/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
j
(layer2_3/weights/summaries/range_1/startConst*
value	B : *
dtype0*
_output_shapes
: 
j
(layer2_3/weights/summaries/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ъ
"layer2_3/weights/summaries/range_1Range(layer2_3/weights/summaries/range_1/start!layer2_3/weights/summaries/Rank_1(layer2_3/weights/summaries/range_1/delta*

Tidx0*
_output_shapes
:
Ї
layer2_3/weights/summaries/MaxMaxlayer2_3/weights/Variable/read"layer2_3/weights/summaries/range_1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

#layer2_3/weights/summaries/max/tagsConst*/
value&B$ Blayer2_3/weights/summaries/max*
dtype0*
_output_shapes
: 

layer2_3/weights/summaries/maxScalarSummary#layer2_3/weights/summaries/max/tagslayer2_3/weights/summaries/Max*
T0*
_output_shapes
: 
c
!layer2_3/weights/summaries/Rank_2Const*
value	B :*
dtype0*
_output_shapes
: 
j
(layer2_3/weights/summaries/range_2/startConst*
value	B : *
dtype0*
_output_shapes
: 
j
(layer2_3/weights/summaries/range_2/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ъ
"layer2_3/weights/summaries/range_2Range(layer2_3/weights/summaries/range_2/start!layer2_3/weights/summaries/Rank_2(layer2_3/weights/summaries/range_2/delta*

Tidx0*
_output_shapes
:
Ї
layer2_3/weights/summaries/MinMinlayer2_3/weights/Variable/read"layer2_3/weights/summaries/range_2*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

#layer2_3/weights/summaries/min/tagsConst*/
value&B$ Blayer2_3/weights/summaries/min*
dtype0*
_output_shapes
: 

layer2_3/weights/summaries/minScalarSummary#layer2_3/weights/summaries/min/tagslayer2_3/weights/summaries/Min*
T0*
_output_shapes
: 

(layer2_3/weights/summaries/histogram/tagConst*5
value,B* B$layer2_3/weights/summaries/histogram*
dtype0*
_output_shapes
: 
Ѓ
$layer2_3/weights/summaries/histogramHistogramSummary(layer2_3/weights/summaries/histogram/taglayer2_3/weights/Variable/read*
T0*
_output_shapes
: 
b
layer2_3/biases/ConstConst*
valueB
*ЭЬЬ=*
dtype0*
_output_shapes
:


layer2_3/biases/Variable
VariableV2*
shape:
*
dtype0*
	container *
shared_name *
_output_shapes
:

е
layer2_3/biases/Variable/AssignAssignlayer2_3/biases/Variablelayer2_3/biases/Const*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@layer2_3/biases/Variable*
_output_shapes
:


layer2_3/biases/Variable/readIdentitylayer2_3/biases/Variable*
T0*+
_class!
loc:@layer2_3/biases/Variable*
_output_shapes
:

`
layer2_3/biases/summaries/RankConst*
value	B :*
dtype0*
_output_shapes
: 
g
%layer2_3/biases/summaries/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
g
%layer2_3/biases/summaries/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
О
layer2_3/biases/summaries/rangeRange%layer2_3/biases/summaries/range/startlayer2_3/biases/summaries/Rank%layer2_3/biases/summaries/range/delta*

Tidx0*
_output_shapes
:
Є
layer2_3/biases/summaries/MeanMeanlayer2_3/biases/Variable/readlayer2_3/biases/summaries/range*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

#layer2_3/biases/summaries/mean/tagsConst*/
value&B$ Blayer2_3/biases/summaries/mean*
dtype0*
_output_shapes
: 

layer2_3/biases/summaries/meanScalarSummary#layer2_3/biases/summaries/mean/tagslayer2_3/biases/summaries/Mean*
T0*
_output_shapes
: 

$layer2_3/biases/summaries/stddev/subSublayer2_3/biases/Variable/readlayer2_3/biases/summaries/Mean*
T0*
_output_shapes
:

|
'layer2_3/biases/summaries/stddev/SquareSquare$layer2_3/biases/summaries/stddev/sub*
T0*
_output_shapes
:

p
&layer2_3/biases/summaries/stddev/ConstConst*
valueB: *
dtype0*
_output_shapes
:
М
%layer2_3/biases/summaries/stddev/MeanMean'layer2_3/biases/summaries/stddev/Square&layer2_3/biases/summaries/stddev/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
u
%layer2_3/biases/summaries/stddev/SqrtSqrt%layer2_3/biases/summaries/stddev/Mean*
T0*
_output_shapes
: 

'layer2_3/biases/summaries/stddev_1/tagsConst*3
value*B( B"layer2_3/biases/summaries/stddev_1*
dtype0*
_output_shapes
: 
Є
"layer2_3/biases/summaries/stddev_1ScalarSummary'layer2_3/biases/summaries/stddev_1/tags%layer2_3/biases/summaries/stddev/Sqrt*
T0*
_output_shapes
: 
b
 layer2_3/biases/summaries/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
i
'layer2_3/biases/summaries/range_1/startConst*
value	B : *
dtype0*
_output_shapes
: 
i
'layer2_3/biases/summaries/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ц
!layer2_3/biases/summaries/range_1Range'layer2_3/biases/summaries/range_1/start layer2_3/biases/summaries/Rank_1'layer2_3/biases/summaries/range_1/delta*

Tidx0*
_output_shapes
:
Є
layer2_3/biases/summaries/MaxMaxlayer2_3/biases/Variable/read!layer2_3/biases/summaries/range_1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

"layer2_3/biases/summaries/max/tagsConst*.
value%B# Blayer2_3/biases/summaries/max*
dtype0*
_output_shapes
: 

layer2_3/biases/summaries/maxScalarSummary"layer2_3/biases/summaries/max/tagslayer2_3/biases/summaries/Max*
T0*
_output_shapes
: 
b
 layer2_3/biases/summaries/Rank_2Const*
value	B :*
dtype0*
_output_shapes
: 
i
'layer2_3/biases/summaries/range_2/startConst*
value	B : *
dtype0*
_output_shapes
: 
i
'layer2_3/biases/summaries/range_2/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ц
!layer2_3/biases/summaries/range_2Range'layer2_3/biases/summaries/range_2/start layer2_3/biases/summaries/Rank_2'layer2_3/biases/summaries/range_2/delta*

Tidx0*
_output_shapes
:
Є
layer2_3/biases/summaries/MinMinlayer2_3/biases/Variable/read!layer2_3/biases/summaries/range_2*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

"layer2_3/biases/summaries/min/tagsConst*.
value%B# Blayer2_3/biases/summaries/min*
dtype0*
_output_shapes
: 

layer2_3/biases/summaries/minScalarSummary"layer2_3/biases/summaries/min/tagslayer2_3/biases/summaries/Min*
T0*
_output_shapes
: 

'layer2_3/biases/summaries/histogram/tagConst*4
value+B) B#layer2_3/biases/summaries/histogram*
dtype0*
_output_shapes
: 
 
#layer2_3/biases/summaries/histogramHistogramSummary'layer2_3/biases/summaries/histogram/taglayer2_3/biases/Variable/read*
T0*
_output_shapes
: 
В
layer2_3/Wx_plus_b/MatMulMatMuldropout_3/dropout/mullayer2_3/weights/Variable/read*
transpose_a( *
transpose_b( *
T0*'
_output_shapes
:џџџџџџџџџ


layer2_3/Wx_plus_b/addAddlayer2_3/Wx_plus_b/MatMullayer2_3/biases/Variable/read*
T0*'
_output_shapes
:џџџџџџџџџ


&layer2_3/Wx_plus_b/pre_activations/tagConst*3
value*B( B"layer2_3/Wx_plus_b/pre_activations*
dtype0*
_output_shapes
: 

"layer2_3/Wx_plus_b/pre_activationsHistogramSummary&layer2_3/Wx_plus_b/pre_activations/taglayer2_3/Wx_plus_b/add*
T0*
_output_shapes
: 
i
layer2_3/activationIdentitylayer2_3/Wx_plus_b/add*
T0*'
_output_shapes
:џџџџџџџџџ

m
layer2_3/activations/tagConst*%
valueB Blayer2_3/activations*
dtype0*
_output_shapes
: 
x
layer2_3/activationsHistogramSummarylayer2_3/activations/taglayer2_3/activation*
T0*
_output_shapes
: 

=cross_entropy_6/total/sparse_softmax_cross_entropy_loss/ConstConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

Fcross_entropy_6/total/sparse_softmax_cross_entropy_loss/xentropy/ShapeShapeinput_4/y-input*
T0	*
out_type0*
_output_shapes
:
ц
Icross_entropy_6/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy#SparseSoftmaxCrossEntropyWithLogitslayer2_3/activationinput_4/y-input*
T0*
Tlabels0	*6
_output_shapes$
":џџџџџџџџџ:џџџџџџџџџ


Zcross_entropy_6/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/weights/shapeConst*
valueB *
dtype0*
_output_shapes
: 

Ycross_entropy_6/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/weights/rankConst*
value	B : *
dtype0*
_output_shapes
: 
т
Ycross_entropy_6/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/values/shapeShapeIcross_entropy_6/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy*
T0*
out_type0*
_output_shapes
:

Xcross_entropy_6/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
p
hcross_entropy_6/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_successNoOp
х
;cross_entropy_6/total/sparse_softmax_cross_entropy_loss/MulMulIcross_entropy_6/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy=cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Consti^cross_entropy_6/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
T0*#
_output_shapes
:џџџџџџџџџ
є
?cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Const_1Consti^cross_entropy_6/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB: *
dtype0*
_output_shapes
:
ў
;cross_entropy_6/total/sparse_softmax_cross_entropy_loss/SumSum;cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Mul?cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Const_1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
ћ
Kcross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/Equal/yConsti^cross_entropy_6/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
џ
Icross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/EqualEqual=cross_entropy_6/total/sparse_softmax_cross_entropy_loss/ConstKcross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/Equal/y*
T0*
_output_shapes
: 
ў
Ncross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/zeros_likeConsti^cross_entropy_6/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 

Scross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/ones_like/ShapeConsti^cross_entropy_6/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 

Scross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/ones_like/ConstConsti^cross_entropy_6/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 
 
Mcross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/ones_likeFillScross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/ones_like/ShapeScross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/ones_like/Const*
T0*
_output_shapes
: 
п
Jcross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/SelectSelectIcross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/EqualNcross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/zeros_likeMcross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/ones_like*
T0*
_output_shapes
: 
І
xcross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/shapeConsti^cross_entropy_6/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
Є
wcross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/rankConsti^cross_entropy_6/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
value	B : *
dtype0*
_output_shapes
: 
ы
wcross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/shapeShapeIcross_entropy_6/total/sparse_softmax_cross_entropy_loss/xentropy/xentropyi^cross_entropy_6/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
T0*
out_type0*
_output_shapes
:
Ѓ
vcross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/rankConsti^cross_entropy_6/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
value	B :*
dtype0*
_output_shapes
: 
њ
cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOpi^cross_entropy_6/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success
у
ecross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/ShapeShapeIcross_entropy_6/total/sparse_softmax_cross_entropy_loss/xentropy/xentropyi^cross_entropy_6/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success^cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
T0*
out_type0*
_output_shapes
:

ecross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/ConstConsti^cross_entropy_6/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success^cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 
у
_cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_likeFillecross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/Shapeecross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/Const*
T0*#
_output_shapes
:џџџџџџџџџ
З
Ucross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weightsMulJcross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/Select_cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like*
T0*#
_output_shapes
:џџџџџџџџџ
ў
Icross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/ConstConsti^cross_entropy_6/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB: *
dtype0*
_output_shapes
:
Њ
Ccross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_presentSumUcross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weightsIcross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
э
?cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Const_2Consti^cross_entropy_6/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 

=cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Sum_1Sum;cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Sum?cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Const_2*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
ё
Across_entropy_6/total/sparse_softmax_cross_entropy_loss/Greater/yConsti^cross_entropy_6/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
ѓ
?cross_entropy_6/total/sparse_softmax_cross_entropy_loss/GreaterGreaterCcross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_presentAcross_entropy_6/total/sparse_softmax_cross_entropy_loss/Greater/y*
T0*
_output_shapes
: 
я
?cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Equal/yConsti^cross_entropy_6/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
э
=cross_entropy_6/total/sparse_softmax_cross_entropy_loss/EqualEqualCcross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present?cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Equal/y*
T0*
_output_shapes
: 
ѕ
Gcross_entropy_6/total/sparse_softmax_cross_entropy_loss/ones_like/ShapeConsti^cross_entropy_6/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
ї
Gcross_entropy_6/total/sparse_softmax_cross_entropy_loss/ones_like/ConstConsti^cross_entropy_6/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ќ
Across_entropy_6/total/sparse_softmax_cross_entropy_loss/ones_likeFillGcross_entropy_6/total/sparse_softmax_cross_entropy_loss/ones_like/ShapeGcross_entropy_6/total/sparse_softmax_cross_entropy_loss/ones_like/Const*
T0*
_output_shapes
: 
А
>cross_entropy_6/total/sparse_softmax_cross_entropy_loss/SelectSelect=cross_entropy_6/total/sparse_softmax_cross_entropy_loss/EqualAcross_entropy_6/total/sparse_softmax_cross_entropy_loss/ones_likeCcross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present*
T0*
_output_shapes
: 
ц
;cross_entropy_6/total/sparse_softmax_cross_entropy_loss/divRealDiv=cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Sum_1>cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 
ђ
Bcross_entropy_6/total/sparse_softmax_cross_entropy_loss/zeros_likeConsti^cross_entropy_6/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
Њ
=cross_entropy_6/total/sparse_softmax_cross_entropy_loss/valueSelect?cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Greater;cross_entropy_6/total/sparse_softmax_cross_entropy_loss/divBcross_entropy_6/total/sparse_softmax_cross_entropy_loss/zeros_like*
T0*
_output_shapes
: 
d
cross_entropy_7/tagsConst* 
valueB Bcross_entropy_7*
dtype0*
_output_shapes
: 

cross_entropy_7ScalarSummarycross_entropy_7/tags=cross_entropy_6/total/sparse_softmax_cross_entropy_loss/value*
T0*
_output_shapes
: 
Z
train_3/gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
`
train_3/gradients/grad_ys_0Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
train_3/gradients/FillFilltrain_3/gradients/Shapetrain_3/gradients/grad_ys_0*
T0*
_output_shapes
: 
Є
_train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/value_grad/zeros_likeConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Р
[train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/value_grad/SelectSelect?cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Greatertrain_3/gradients/Fill_train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/value_grad/zeros_like*
T0*
_output_shapes
: 
Т
]train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/value_grad/Select_1Select?cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Greater_train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/value_grad/zeros_liketrain_3/gradients/Fill*
T0*
_output_shapes
: 
Ћ
etrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/value_grad/tuple/group_depsNoOp\^train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/value_grad/Select^^train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/value_grad/Select_1
Я
mtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/value_grad/tuple/control_dependencyIdentity[train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/value_grad/Selectf^train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/value_grad/tuple/group_deps*
T0*n
_classd
b`loc:@train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/value_grad/Select*
_output_shapes
: 
е
otrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/value_grad/tuple/control_dependency_1Identity]train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/value_grad/Select_1f^train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/value_grad/tuple/group_deps*
T0*p
_classf
dbloc:@train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/value_grad/Select_1*
_output_shapes
: 

Xtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 

Ztrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
є
htrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/BroadcastGradientArgsBroadcastGradientArgsXtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/ShapeZtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Е
Ztrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/RealDivRealDivmtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/value_grad/tuple/control_dependency>cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 
у
Vtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/SumSumZtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/RealDivhtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
Ц
Ztrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/ReshapeReshapeVtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/SumXtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
Н
Vtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/NegNeg=cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Sum_1*
T0*
_output_shapes
: 
 
\train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/RealDiv_1RealDivVtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/Neg>cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 
І
\train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/RealDiv_2RealDiv\train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/RealDiv_1>cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 
Ы
Vtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/mulMulmtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/value_grad/tuple/control_dependency\train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/RealDiv_2*
T0*
_output_shapes
: 
у
Xtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/Sum_1SumVtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/muljtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
Ь
\train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/Reshape_1ReshapeXtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/Sum_1Ztrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
Ї
ctrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/group_depsNoOp[^train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/Reshape]^train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/Reshape_1
Щ
ktrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/control_dependencyIdentityZtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/Reshaped^train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/group_deps*
T0*m
_classc
a_loc:@train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/Reshape*
_output_shapes
: 
Я
mtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/control_dependency_1Identity\train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/Reshape_1d^train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/group_deps*
T0*o
_classe
caloc:@train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/Reshape_1*
_output_shapes
: 
Ѕ
btrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/Reshape/shapeConst*
valueB *
dtype0*
_output_shapes
: 
ч
\train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/ReshapeReshapektrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/control_dependencybtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
: 
І
ctrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/Tile/multiplesConst*
valueB *
dtype0*
_output_shapes
: 
з
Ytrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/TileTile\train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/Reshapectrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/Tile/multiples*
T0*

Tmultiples0*
_output_shapes
: 
Ѕ
`train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Select_grad/zeros_likeConst*
valueB
 *    *
dtype0*
_output_shapes
: 

\train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Select_grad/SelectSelect=cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Equalmtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/control_dependency_1`train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Select_grad/zeros_like*
T0*
_output_shapes
: 

^train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Select_grad/Select_1Select=cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Equal`train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Select_grad/zeros_likemtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/control_dependency_1*
T0*
_output_shapes
: 
Ў
ftrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Select_grad/tuple/group_depsNoOp]^train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Select_grad/Select_^train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Select_grad/Select_1
г
ntrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Select_grad/tuple/control_dependencyIdentity\train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Select_grad/Selectg^train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Select_grad/tuple/group_deps*
T0*o
_classe
caloc:@train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Select_grad/Select*
_output_shapes
: 
й
ptrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Select_grad/tuple/control_dependency_1Identity^train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Select_grad/Select_1g^train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Select_grad/tuple/group_deps*
T0*q
_classg
ecloc:@train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Select_grad/Select_1*
_output_shapes
: 
Њ
`train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Sum_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
е
Ztrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Sum_grad/ReshapeReshapeYtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/Tile`train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Sum_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
г
Xtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Sum_grad/ShapeShape;cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Mul*
T0*
out_type0*
_output_shapes
:
е
Wtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Sum_grad/TileTileZtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Sum_grad/ReshapeXtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Sum_grad/Shape*
T0*

Tmultiples0*#
_output_shapes
:џџџџџџџџџ
с
Xtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Mul_grad/ShapeShapeIcross_entropy_6/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy*
T0*
out_type0*
_output_shapes
:

Ztrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Mul_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
є
htrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgsBroadcastGradientArgsXtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Mul_grad/ShapeZtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Mul_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Ѓ
Vtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Mul_grad/mulMulWtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Sum_grad/Tile=cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Const*
T0*#
_output_shapes
:џџџџџџџџџ
п
Vtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Mul_grad/SumSumVtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Mul_grad/mulhtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
г
Ztrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Mul_grad/ReshapeReshapeVtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Mul_grad/SumXtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Mul_grad/Shape*
T0*
Tshape0*#
_output_shapes
:џџџџџџџџџ
Б
Xtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Mul_grad/mul_1MulIcross_entropy_6/total/sparse_softmax_cross_entropy_loss/xentropy/xentropyWtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Sum_grad/Tile*
T0*#
_output_shapes
:џџџџџџџџџ
х
Xtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Mul_grad/Sum_1SumXtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Mul_grad/mul_1jtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
Ь
\train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape_1ReshapeXtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Mul_grad/Sum_1Ztrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Mul_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
Ї
ctrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/group_depsNoOp[^train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape]^train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape_1
ж
ktrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/control_dependencyIdentityZtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Mul_grad/Reshaped^train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/group_deps*
T0*m
_classc
a_loc:@train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape*#
_output_shapes
:џџџџџџџџџ
Я
mtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/control_dependency_1Identity\train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape_1d^train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/group_deps*
T0*o
_classe
caloc:@train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape_1*
_output_shapes
: 
В
htrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
ќ
btrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present_grad/ReshapeReshapeptrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Select_grad/tuple/control_dependency_1htrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
ѕ
`train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present_grad/ShapeShapeUcross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights*
T0*
out_type0*
_output_shapes
:
э
_train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present_grad/TileTilebtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present_grad/Reshape`train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present_grad/Shape*
T0*

Tmultiples0*#
_output_shapes
:џџџџџџџџџ
Е
rtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 

ttrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Shape_1Shape_cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like*
T0*
out_type0*
_output_shapes
:
У
train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/BroadcastGradientArgsBroadcastGradientArgsrtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Shapettrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
ч
ptrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/mulMul_train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present_grad/Tile_cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like*
T0*#
_output_shapes
:џџџџџџџџџ
Ў
ptrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/SumSumptrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/multrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:

ttrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/ReshapeReshapeptrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Sumrtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
д
rtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/mul_1MulJcross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/Select_train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present_grad/Tile*
T0*#
_output_shapes
:џџџџџџџџџ
Д
rtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Sum_1Sumrtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/mul_1train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
Ї
vtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape_1Reshapertrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Sum_1ttrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:џџџџџџџџџ
ѕ
}train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/group_depsNoOpu^train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshapew^train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape_1
Г
train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/control_dependencyIdentityttrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape~^train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/group_deps*
T0*
_class}
{yloc:@train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape*
_output_shapes
: 
Ц
train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/control_dependency_1Identityvtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape_1~^train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/group_deps*
T0*
_class
}{loc:@train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape_1*#
_output_shapes
:џџџџџџџџџ
Ц
|train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Ч
ztrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like_grad/SumSumtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/control_dependency_1|train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like_grad/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
Ј
train_3/gradients/zeros_like	ZerosLikeKcross_entropy_6/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy:1*
T0*'
_output_shapes
:џџџџџџџџџ

Й
ptrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/PreventGradientPreventGradientKcross_entropy_6/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy:1*
T0*Д
messageЈЅCurrently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*'
_output_shapes
:џџџџџџџџџ

К
otrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/ExpandDims/dimConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

ktrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/ExpandDims
ExpandDimsktrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/control_dependencyotrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/ExpandDims/dim*
T0*

Tdim0*'
_output_shapes
:џџџџџџџџџ
ќ
dtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/mulMulktrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/ExpandDimsptrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/PreventGradient*
T0*'
_output_shapes
:џџџџџџџџџ


3train_3/gradients/layer2_3/Wx_plus_b/add_grad/ShapeShapelayer2_3/Wx_plus_b/MatMul*
T0*
out_type0*
_output_shapes
:

5train_3/gradients/layer2_3/Wx_plus_b/add_grad/Shape_1Const*
valueB:
*
dtype0*
_output_shapes
:

Ctrain_3/gradients/layer2_3/Wx_plus_b/add_grad/BroadcastGradientArgsBroadcastGradientArgs3train_3/gradients/layer2_3/Wx_plus_b/add_grad/Shape5train_3/gradients/layer2_3/Wx_plus_b/add_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Ѓ
1train_3/gradients/layer2_3/Wx_plus_b/add_grad/SumSumdtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/mulCtrain_3/gradients/layer2_3/Wx_plus_b/add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
ш
5train_3/gradients/layer2_3/Wx_plus_b/add_grad/ReshapeReshape1train_3/gradients/layer2_3/Wx_plus_b/add_grad/Sum3train_3/gradients/layer2_3/Wx_plus_b/add_grad/Shape*
T0*
Tshape0*'
_output_shapes
:џџџџџџџџџ

Ї
3train_3/gradients/layer2_3/Wx_plus_b/add_grad/Sum_1Sumdtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/mulEtrain_3/gradients/layer2_3/Wx_plus_b/add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
с
7train_3/gradients/layer2_3/Wx_plus_b/add_grad/Reshape_1Reshape3train_3/gradients/layer2_3/Wx_plus_b/add_grad/Sum_15train_3/gradients/layer2_3/Wx_plus_b/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:

И
>train_3/gradients/layer2_3/Wx_plus_b/add_grad/tuple/group_depsNoOp6^train_3/gradients/layer2_3/Wx_plus_b/add_grad/Reshape8^train_3/gradients/layer2_3/Wx_plus_b/add_grad/Reshape_1
Ц
Ftrain_3/gradients/layer2_3/Wx_plus_b/add_grad/tuple/control_dependencyIdentity5train_3/gradients/layer2_3/Wx_plus_b/add_grad/Reshape?^train_3/gradients/layer2_3/Wx_plus_b/add_grad/tuple/group_deps*
T0*H
_class>
<:loc:@train_3/gradients/layer2_3/Wx_plus_b/add_grad/Reshape*'
_output_shapes
:џџџџџџџџџ

П
Htrain_3/gradients/layer2_3/Wx_plus_b/add_grad/tuple/control_dependency_1Identity7train_3/gradients/layer2_3/Wx_plus_b/add_grad/Reshape_1?^train_3/gradients/layer2_3/Wx_plus_b/add_grad/tuple/group_deps*
T0*J
_class@
><loc:@train_3/gradients/layer2_3/Wx_plus_b/add_grad/Reshape_1*
_output_shapes
:


7train_3/gradients/layer2_3/Wx_plus_b/MatMul_grad/MatMulMatMulFtrain_3/gradients/layer2_3/Wx_plus_b/add_grad/tuple/control_dependencylayer2_3/weights/Variable/read*
transpose_a( *
transpose_b(*
T0*(
_output_shapes
:џџџџџџџџџє
ђ
9train_3/gradients/layer2_3/Wx_plus_b/MatMul_grad/MatMul_1MatMuldropout_3/dropout/mulFtrain_3/gradients/layer2_3/Wx_plus_b/add_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0*
_output_shapes
:	є

П
Atrain_3/gradients/layer2_3/Wx_plus_b/MatMul_grad/tuple/group_depsNoOp8^train_3/gradients/layer2_3/Wx_plus_b/MatMul_grad/MatMul:^train_3/gradients/layer2_3/Wx_plus_b/MatMul_grad/MatMul_1
б
Itrain_3/gradients/layer2_3/Wx_plus_b/MatMul_grad/tuple/control_dependencyIdentity7train_3/gradients/layer2_3/Wx_plus_b/MatMul_grad/MatMulB^train_3/gradients/layer2_3/Wx_plus_b/MatMul_grad/tuple/group_deps*
T0*J
_class@
><loc:@train_3/gradients/layer2_3/Wx_plus_b/MatMul_grad/MatMul*(
_output_shapes
:џџџџџџџџџє
Ю
Ktrain_3/gradients/layer2_3/Wx_plus_b/MatMul_grad/tuple/control_dependency_1Identity9train_3/gradients/layer2_3/Wx_plus_b/MatMul_grad/MatMul_1B^train_3/gradients/layer2_3/Wx_plus_b/MatMul_grad/tuple/group_deps*
T0*L
_classB
@>loc:@train_3/gradients/layer2_3/Wx_plus_b/MatMul_grad/MatMul_1*
_output_shapes
:	є


2train_3/gradients/dropout_3/dropout/mul_grad/ShapeShapedropout_3/dropout/div*
T0*
out_type0*#
_output_shapes
:џџџџџџџџџ

4train_3/gradients/dropout_3/dropout/mul_grad/Shape_1Shapedropout_3/dropout/Floor*
T0*
out_type0*#
_output_shapes
:џџџџџџџџџ

Btrain_3/gradients/dropout_3/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs2train_3/gradients/dropout_3/dropout/mul_grad/Shape4train_3/gradients/dropout_3/dropout/mul_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
О
0train_3/gradients/dropout_3/dropout/mul_grad/mulMulItrain_3/gradients/layer2_3/Wx_plus_b/MatMul_grad/tuple/control_dependencydropout_3/dropout/Floor*
T0*
_output_shapes
:
э
0train_3/gradients/dropout_3/dropout/mul_grad/SumSum0train_3/gradients/dropout_3/dropout/mul_grad/mulBtrain_3/gradients/dropout_3/dropout/mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
ж
4train_3/gradients/dropout_3/dropout/mul_grad/ReshapeReshape0train_3/gradients/dropout_3/dropout/mul_grad/Sum2train_3/gradients/dropout_3/dropout/mul_grad/Shape*
T0*
Tshape0*
_output_shapes
:
О
2train_3/gradients/dropout_3/dropout/mul_grad/mul_1Muldropout_3/dropout/divItrain_3/gradients/layer2_3/Wx_plus_b/MatMul_grad/tuple/control_dependency*
T0*
_output_shapes
:
ѓ
2train_3/gradients/dropout_3/dropout/mul_grad/Sum_1Sum2train_3/gradients/dropout_3/dropout/mul_grad/mul_1Dtrain_3/gradients/dropout_3/dropout/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
м
6train_3/gradients/dropout_3/dropout/mul_grad/Reshape_1Reshape2train_3/gradients/dropout_3/dropout/mul_grad/Sum_14train_3/gradients/dropout_3/dropout/mul_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
Е
=train_3/gradients/dropout_3/dropout/mul_grad/tuple/group_depsNoOp5^train_3/gradients/dropout_3/dropout/mul_grad/Reshape7^train_3/gradients/dropout_3/dropout/mul_grad/Reshape_1
Г
Etrain_3/gradients/dropout_3/dropout/mul_grad/tuple/control_dependencyIdentity4train_3/gradients/dropout_3/dropout/mul_grad/Reshape>^train_3/gradients/dropout_3/dropout/mul_grad/tuple/group_deps*
T0*G
_class=
;9loc:@train_3/gradients/dropout_3/dropout/mul_grad/Reshape*
_output_shapes
:
Й
Gtrain_3/gradients/dropout_3/dropout/mul_grad/tuple/control_dependency_1Identity6train_3/gradients/dropout_3/dropout/mul_grad/Reshape_1>^train_3/gradients/dropout_3/dropout/mul_grad/tuple/group_deps*
T0*I
_class?
=;loc:@train_3/gradients/dropout_3/dropout/mul_grad/Reshape_1*
_output_shapes
:

2train_3/gradients/dropout_3/dropout/div_grad/ShapeShapelayer1_3/activation*
T0*
out_type0*
_output_shapes
:

4train_3/gradients/dropout_3/dropout/div_grad/Shape_1Shapedropout_3/Placeholder*
T0*
out_type0*#
_output_shapes
:џџџџџџџџџ

Btrain_3/gradients/dropout_3/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs2train_3/gradients/dropout_3/dropout/div_grad/Shape4train_3/gradients/dropout_3/dropout/div_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Р
4train_3/gradients/dropout_3/dropout/div_grad/RealDivRealDivEtrain_3/gradients/dropout_3/dropout/mul_grad/tuple/control_dependencydropout_3/Placeholder*
T0*
_output_shapes
:
ё
0train_3/gradients/dropout_3/dropout/div_grad/SumSum4train_3/gradients/dropout_3/dropout/div_grad/RealDivBtrain_3/gradients/dropout_3/dropout/div_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
ц
4train_3/gradients/dropout_3/dropout/div_grad/ReshapeReshape0train_3/gradients/dropout_3/dropout/div_grad/Sum2train_3/gradients/dropout_3/dropout/div_grad/Shape*
T0*
Tshape0*(
_output_shapes
:џџџџџџџџџє

0train_3/gradients/dropout_3/dropout/div_grad/NegNeglayer1_3/activation*
T0*(
_output_shapes
:џџџџџџџџџє
­
6train_3/gradients/dropout_3/dropout/div_grad/RealDiv_1RealDiv0train_3/gradients/dropout_3/dropout/div_grad/Negdropout_3/Placeholder*
T0*
_output_shapes
:
Г
6train_3/gradients/dropout_3/dropout/div_grad/RealDiv_2RealDiv6train_3/gradients/dropout_3/dropout/div_grad/RealDiv_1dropout_3/Placeholder*
T0*
_output_shapes
:
й
0train_3/gradients/dropout_3/dropout/div_grad/mulMulEtrain_3/gradients/dropout_3/dropout/mul_grad/tuple/control_dependency6train_3/gradients/dropout_3/dropout/div_grad/RealDiv_2*
T0*
_output_shapes
:
ё
2train_3/gradients/dropout_3/dropout/div_grad/Sum_1Sum0train_3/gradients/dropout_3/dropout/div_grad/mulDtrain_3/gradients/dropout_3/dropout/div_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
м
6train_3/gradients/dropout_3/dropout/div_grad/Reshape_1Reshape2train_3/gradients/dropout_3/dropout/div_grad/Sum_14train_3/gradients/dropout_3/dropout/div_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
Е
=train_3/gradients/dropout_3/dropout/div_grad/tuple/group_depsNoOp5^train_3/gradients/dropout_3/dropout/div_grad/Reshape7^train_3/gradients/dropout_3/dropout/div_grad/Reshape_1
У
Etrain_3/gradients/dropout_3/dropout/div_grad/tuple/control_dependencyIdentity4train_3/gradients/dropout_3/dropout/div_grad/Reshape>^train_3/gradients/dropout_3/dropout/div_grad/tuple/group_deps*
T0*G
_class=
;9loc:@train_3/gradients/dropout_3/dropout/div_grad/Reshape*(
_output_shapes
:џџџџџџџџџє
Й
Gtrain_3/gradients/dropout_3/dropout/div_grad/tuple/control_dependency_1Identity6train_3/gradients/dropout_3/dropout/div_grad/Reshape_1>^train_3/gradients/dropout_3/dropout/div_grad/tuple/group_deps*
T0*I
_class?
=;loc:@train_3/gradients/dropout_3/dropout/div_grad/Reshape_1*
_output_shapes
:
Ю
3train_3/gradients/layer1_3/activation_grad/ReluGradReluGradEtrain_3/gradients/dropout_3/dropout/div_grad/tuple/control_dependencylayer1_3/activation*
T0*(
_output_shapes
:џџџџџџџџџє

3train_3/gradients/layer1_3/Wx_plus_b/add_grad/ShapeShapelayer1_3/Wx_plus_b/MatMul*
T0*
out_type0*
_output_shapes
:

5train_3/gradients/layer1_3/Wx_plus_b/add_grad/Shape_1Const*
valueB:є*
dtype0*
_output_shapes
:

Ctrain_3/gradients/layer1_3/Wx_plus_b/add_grad/BroadcastGradientArgsBroadcastGradientArgs3train_3/gradients/layer1_3/Wx_plus_b/add_grad/Shape5train_3/gradients/layer1_3/Wx_plus_b/add_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
ђ
1train_3/gradients/layer1_3/Wx_plus_b/add_grad/SumSum3train_3/gradients/layer1_3/activation_grad/ReluGradCtrain_3/gradients/layer1_3/Wx_plus_b/add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
щ
5train_3/gradients/layer1_3/Wx_plus_b/add_grad/ReshapeReshape1train_3/gradients/layer1_3/Wx_plus_b/add_grad/Sum3train_3/gradients/layer1_3/Wx_plus_b/add_grad/Shape*
T0*
Tshape0*(
_output_shapes
:џџџџџџџџџє
і
3train_3/gradients/layer1_3/Wx_plus_b/add_grad/Sum_1Sum3train_3/gradients/layer1_3/activation_grad/ReluGradEtrain_3/gradients/layer1_3/Wx_plus_b/add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
т
7train_3/gradients/layer1_3/Wx_plus_b/add_grad/Reshape_1Reshape3train_3/gradients/layer1_3/Wx_plus_b/add_grad/Sum_15train_3/gradients/layer1_3/Wx_plus_b/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes	
:є
И
>train_3/gradients/layer1_3/Wx_plus_b/add_grad/tuple/group_depsNoOp6^train_3/gradients/layer1_3/Wx_plus_b/add_grad/Reshape8^train_3/gradients/layer1_3/Wx_plus_b/add_grad/Reshape_1
Ч
Ftrain_3/gradients/layer1_3/Wx_plus_b/add_grad/tuple/control_dependencyIdentity5train_3/gradients/layer1_3/Wx_plus_b/add_grad/Reshape?^train_3/gradients/layer1_3/Wx_plus_b/add_grad/tuple/group_deps*
T0*H
_class>
<:loc:@train_3/gradients/layer1_3/Wx_plus_b/add_grad/Reshape*(
_output_shapes
:џџџџџџџџџє
Р
Htrain_3/gradients/layer1_3/Wx_plus_b/add_grad/tuple/control_dependency_1Identity7train_3/gradients/layer1_3/Wx_plus_b/add_grad/Reshape_1?^train_3/gradients/layer1_3/Wx_plus_b/add_grad/tuple/group_deps*
T0*J
_class@
><loc:@train_3/gradients/layer1_3/Wx_plus_b/add_grad/Reshape_1*
_output_shapes	
:є

7train_3/gradients/layer1_3/Wx_plus_b/MatMul_grad/MatMulMatMulFtrain_3/gradients/layer1_3/Wx_plus_b/add_grad/tuple/control_dependencylayer1_3/weights/Variable/read*
transpose_a( *
transpose_b(*
T0*(
_output_shapes
:џџџџџџџџџ
э
9train_3/gradients/layer1_3/Wx_plus_b/MatMul_grad/MatMul_1MatMulinput_4/x-inputFtrain_3/gradients/layer1_3/Wx_plus_b/add_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0* 
_output_shapes
:
є
П
Atrain_3/gradients/layer1_3/Wx_plus_b/MatMul_grad/tuple/group_depsNoOp8^train_3/gradients/layer1_3/Wx_plus_b/MatMul_grad/MatMul:^train_3/gradients/layer1_3/Wx_plus_b/MatMul_grad/MatMul_1
б
Itrain_3/gradients/layer1_3/Wx_plus_b/MatMul_grad/tuple/control_dependencyIdentity7train_3/gradients/layer1_3/Wx_plus_b/MatMul_grad/MatMulB^train_3/gradients/layer1_3/Wx_plus_b/MatMul_grad/tuple/group_deps*
T0*J
_class@
><loc:@train_3/gradients/layer1_3/Wx_plus_b/MatMul_grad/MatMul*(
_output_shapes
:џџџџџџџџџ
Я
Ktrain_3/gradients/layer1_3/Wx_plus_b/MatMul_grad/tuple/control_dependency_1Identity9train_3/gradients/layer1_3/Wx_plus_b/MatMul_grad/MatMul_1B^train_3/gradients/layer1_3/Wx_plus_b/MatMul_grad/tuple/group_deps*
T0*L
_classB
@>loc:@train_3/gradients/layer1_3/Wx_plus_b/MatMul_grad/MatMul_1* 
_output_shapes
:
є

!train_3/beta1_power/initial_valueConst*
valueB
 *fff?*
dtype0*+
_class!
loc:@layer1_3/biases/Variable*
_output_shapes
: 
Є
train_3/beta1_power
VariableV2*
shape: *
dtype0*
	container *
shared_name *+
_class!
loc:@layer1_3/biases/Variable*
_output_shapes
: 
г
train_3/beta1_power/AssignAssigntrain_3/beta1_power!train_3/beta1_power/initial_value*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@layer1_3/biases/Variable*
_output_shapes
: 

train_3/beta1_power/readIdentitytrain_3/beta1_power*
T0*+
_class!
loc:@layer1_3/biases/Variable*
_output_shapes
: 

!train_3/beta2_power/initial_valueConst*
valueB
 *wО?*
dtype0*+
_class!
loc:@layer1_3/biases/Variable*
_output_shapes
: 
Є
train_3/beta2_power
VariableV2*
shape: *
dtype0*
	container *
shared_name *+
_class!
loc:@layer1_3/biases/Variable*
_output_shapes
: 
г
train_3/beta2_power/AssignAssigntrain_3/beta2_power!train_3/beta2_power/initial_value*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@layer1_3/biases/Variable*
_output_shapes
: 

train_3/beta2_power/readIdentitytrain_3/beta2_power*
T0*+
_class!
loc:@layer1_3/biases/Variable*
_output_shapes
: 
З
0layer1_3/weights/Variable/Adam/Initializer/zerosConst*
valueB
є*    *
dtype0*,
_class"
 loc:@layer1_3/weights/Variable* 
_output_shapes
:
є
Ф
layer1_3/weights/Variable/Adam
VariableV2*
shape:
є*
dtype0*
	container *
shared_name *,
_class"
 loc:@layer1_3/weights/Variable* 
_output_shapes
:
є

%layer1_3/weights/Variable/Adam/AssignAssignlayer1_3/weights/Variable/Adam0layer1_3/weights/Variable/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@layer1_3/weights/Variable* 
_output_shapes
:
є
Ј
#layer1_3/weights/Variable/Adam/readIdentitylayer1_3/weights/Variable/Adam*
T0*,
_class"
 loc:@layer1_3/weights/Variable* 
_output_shapes
:
є
Й
2layer1_3/weights/Variable/Adam_1/Initializer/zerosConst*
valueB
є*    *
dtype0*,
_class"
 loc:@layer1_3/weights/Variable* 
_output_shapes
:
є
Ц
 layer1_3/weights/Variable/Adam_1
VariableV2*
shape:
є*
dtype0*
	container *
shared_name *,
_class"
 loc:@layer1_3/weights/Variable* 
_output_shapes
:
є

'layer1_3/weights/Variable/Adam_1/AssignAssign layer1_3/weights/Variable/Adam_12layer1_3/weights/Variable/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@layer1_3/weights/Variable* 
_output_shapes
:
є
Ќ
%layer1_3/weights/Variable/Adam_1/readIdentity layer1_3/weights/Variable/Adam_1*
T0*,
_class"
 loc:@layer1_3/weights/Variable* 
_output_shapes
:
є
Ћ
/layer1_3/biases/Variable/Adam/Initializer/zerosConst*
valueBє*    *
dtype0*+
_class!
loc:@layer1_3/biases/Variable*
_output_shapes	
:є
И
layer1_3/biases/Variable/Adam
VariableV2*
shape:є*
dtype0*
	container *
shared_name *+
_class!
loc:@layer1_3/biases/Variable*
_output_shapes	
:є
њ
$layer1_3/biases/Variable/Adam/AssignAssignlayer1_3/biases/Variable/Adam/layer1_3/biases/Variable/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@layer1_3/biases/Variable*
_output_shapes	
:є
 
"layer1_3/biases/Variable/Adam/readIdentitylayer1_3/biases/Variable/Adam*
T0*+
_class!
loc:@layer1_3/biases/Variable*
_output_shapes	
:є
­
1layer1_3/biases/Variable/Adam_1/Initializer/zerosConst*
valueBє*    *
dtype0*+
_class!
loc:@layer1_3/biases/Variable*
_output_shapes	
:є
К
layer1_3/biases/Variable/Adam_1
VariableV2*
shape:є*
dtype0*
	container *
shared_name *+
_class!
loc:@layer1_3/biases/Variable*
_output_shapes	
:є

&layer1_3/biases/Variable/Adam_1/AssignAssignlayer1_3/biases/Variable/Adam_11layer1_3/biases/Variable/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@layer1_3/biases/Variable*
_output_shapes	
:є
Є
$layer1_3/biases/Variable/Adam_1/readIdentitylayer1_3/biases/Variable/Adam_1*
T0*+
_class!
loc:@layer1_3/biases/Variable*
_output_shapes	
:є
Е
0layer2_3/weights/Variable/Adam/Initializer/zerosConst*
valueB	є
*    *
dtype0*,
_class"
 loc:@layer2_3/weights/Variable*
_output_shapes
:	є

Т
layer2_3/weights/Variable/Adam
VariableV2*
shape:	є
*
dtype0*
	container *
shared_name *,
_class"
 loc:@layer2_3/weights/Variable*
_output_shapes
:	є


%layer2_3/weights/Variable/Adam/AssignAssignlayer2_3/weights/Variable/Adam0layer2_3/weights/Variable/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@layer2_3/weights/Variable*
_output_shapes
:	є

Ї
#layer2_3/weights/Variable/Adam/readIdentitylayer2_3/weights/Variable/Adam*
T0*,
_class"
 loc:@layer2_3/weights/Variable*
_output_shapes
:	є

З
2layer2_3/weights/Variable/Adam_1/Initializer/zerosConst*
valueB	є
*    *
dtype0*,
_class"
 loc:@layer2_3/weights/Variable*
_output_shapes
:	є

Ф
 layer2_3/weights/Variable/Adam_1
VariableV2*
shape:	є
*
dtype0*
	container *
shared_name *,
_class"
 loc:@layer2_3/weights/Variable*
_output_shapes
:	є


'layer2_3/weights/Variable/Adam_1/AssignAssign layer2_3/weights/Variable/Adam_12layer2_3/weights/Variable/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@layer2_3/weights/Variable*
_output_shapes
:	є

Ћ
%layer2_3/weights/Variable/Adam_1/readIdentity layer2_3/weights/Variable/Adam_1*
T0*,
_class"
 loc:@layer2_3/weights/Variable*
_output_shapes
:	є

Љ
/layer2_3/biases/Variable/Adam/Initializer/zerosConst*
valueB
*    *
dtype0*+
_class!
loc:@layer2_3/biases/Variable*
_output_shapes
:

Ж
layer2_3/biases/Variable/Adam
VariableV2*
shape:
*
dtype0*
	container *
shared_name *+
_class!
loc:@layer2_3/biases/Variable*
_output_shapes
:

љ
$layer2_3/biases/Variable/Adam/AssignAssignlayer2_3/biases/Variable/Adam/layer2_3/biases/Variable/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@layer2_3/biases/Variable*
_output_shapes
:


"layer2_3/biases/Variable/Adam/readIdentitylayer2_3/biases/Variable/Adam*
T0*+
_class!
loc:@layer2_3/biases/Variable*
_output_shapes
:

Ћ
1layer2_3/biases/Variable/Adam_1/Initializer/zerosConst*
valueB
*    *
dtype0*+
_class!
loc:@layer2_3/biases/Variable*
_output_shapes
:

И
layer2_3/biases/Variable/Adam_1
VariableV2*
shape:
*
dtype0*
	container *
shared_name *+
_class!
loc:@layer2_3/biases/Variable*
_output_shapes
:

џ
&layer2_3/biases/Variable/Adam_1/AssignAssignlayer2_3/biases/Variable/Adam_11layer2_3/biases/Variable/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@layer2_3/biases/Variable*
_output_shapes
:

Ѓ
$layer2_3/biases/Variable/Adam_1/readIdentitylayer2_3/biases/Variable/Adam_1*
T0*+
_class!
loc:@layer2_3/biases/Variable*
_output_shapes
:

_
train_3/Adam/learning_rateConst*
valueB
 *o:*
dtype0*
_output_shapes
: 
W
train_3/Adam/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
W
train_3/Adam/beta2Const*
valueB
 *wО?*
dtype0*
_output_shapes
: 
Y
train_3/Adam/epsilonConst*
valueB
 *wЬ+2*
dtype0*
_output_shapes
: 
ќ
7train_3/Adam/update_layer1_3/weights/Variable/ApplyAdam	ApplyAdamlayer1_3/weights/Variablelayer1_3/weights/Variable/Adam layer1_3/weights/Variable/Adam_1train_3/beta1_power/readtrain_3/beta2_power/readtrain_3/Adam/learning_ratetrain_3/Adam/beta1train_3/Adam/beta2train_3/Adam/epsilonKtrain_3/gradients/layer1_3/Wx_plus_b/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *,
_class"
 loc:@layer1_3/weights/Variable* 
_output_shapes
:
є
я
6train_3/Adam/update_layer1_3/biases/Variable/ApplyAdam	ApplyAdamlayer1_3/biases/Variablelayer1_3/biases/Variable/Adamlayer1_3/biases/Variable/Adam_1train_3/beta1_power/readtrain_3/beta2_power/readtrain_3/Adam/learning_ratetrain_3/Adam/beta1train_3/Adam/beta2train_3/Adam/epsilonHtrain_3/gradients/layer1_3/Wx_plus_b/add_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *+
_class!
loc:@layer1_3/biases/Variable*
_output_shapes	
:є
ћ
7train_3/Adam/update_layer2_3/weights/Variable/ApplyAdam	ApplyAdamlayer2_3/weights/Variablelayer2_3/weights/Variable/Adam layer2_3/weights/Variable/Adam_1train_3/beta1_power/readtrain_3/beta2_power/readtrain_3/Adam/learning_ratetrain_3/Adam/beta1train_3/Adam/beta2train_3/Adam/epsilonKtrain_3/gradients/layer2_3/Wx_plus_b/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *,
_class"
 loc:@layer2_3/weights/Variable*
_output_shapes
:	є

ю
6train_3/Adam/update_layer2_3/biases/Variable/ApplyAdam	ApplyAdamlayer2_3/biases/Variablelayer2_3/biases/Variable/Adamlayer2_3/biases/Variable/Adam_1train_3/beta1_power/readtrain_3/beta2_power/readtrain_3/Adam/learning_ratetrain_3/Adam/beta1train_3/Adam/beta2train_3/Adam/epsilonHtrain_3/gradients/layer2_3/Wx_plus_b/add_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *+
_class!
loc:@layer2_3/biases/Variable*
_output_shapes
:

љ
train_3/Adam/mulMultrain_3/beta1_power/readtrain_3/Adam/beta18^train_3/Adam/update_layer1_3/weights/Variable/ApplyAdam7^train_3/Adam/update_layer1_3/biases/Variable/ApplyAdam8^train_3/Adam/update_layer2_3/weights/Variable/ApplyAdam7^train_3/Adam/update_layer2_3/biases/Variable/ApplyAdam*
T0*+
_class!
loc:@layer1_3/biases/Variable*
_output_shapes
: 
Л
train_3/Adam/AssignAssigntrain_3/beta1_powertrain_3/Adam/mul*
T0*
validate_shape(*
use_locking( *+
_class!
loc:@layer1_3/biases/Variable*
_output_shapes
: 
ћ
train_3/Adam/mul_1Multrain_3/beta2_power/readtrain_3/Adam/beta28^train_3/Adam/update_layer1_3/weights/Variable/ApplyAdam7^train_3/Adam/update_layer1_3/biases/Variable/ApplyAdam8^train_3/Adam/update_layer2_3/weights/Variable/ApplyAdam7^train_3/Adam/update_layer2_3/biases/Variable/ApplyAdam*
T0*+
_class!
loc:@layer1_3/biases/Variable*
_output_shapes
: 
П
train_3/Adam/Assign_1Assigntrain_3/beta2_powertrain_3/Adam/mul_1*
T0*
validate_shape(*
use_locking( *+
_class!
loc:@layer1_3/biases/Variable*
_output_shapes
: 
Ј
train_3/AdamNoOp8^train_3/Adam/update_layer1_3/weights/Variable/ApplyAdam7^train_3/Adam/update_layer1_3/biases/Variable/ApplyAdam8^train_3/Adam/update_layer2_3/weights/Variable/ApplyAdam7^train_3/Adam/update_layer2_3/biases/Variable/ApplyAdam^train_3/Adam/Assign^train_3/Adam/Assign_1
p
.accuracy_6/correct_prediction/ArgMax/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
Р
$accuracy_6/correct_prediction/ArgMaxArgMaxlayer2_3/activation.accuracy_6/correct_prediction/ArgMax/dimension*
T0*

Tidx0*
output_type0	*#
_output_shapes
:џџџџџџџџџ

#accuracy_6/correct_prediction/EqualEqual$accuracy_6/correct_prediction/ArgMaxinput_4/y-input*
T0	*#
_output_shapes
:џџџџџџџџџ

accuracy_6/accuracy/CastCast#accuracy_6/correct_prediction/Equal*

SrcT0
*

DstT0*#
_output_shapes
:џџџџџџџџџ
c
accuracy_6/accuracy/ConstConst*
valueB: *
dtype0*
_output_shapes
:

accuracy_6/accuracy/MeanMeanaccuracy_6/accuracy/Castaccuracy_6/accuracy/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
Z
accuracy_7/tagsConst*
valueB B
accuracy_7*
dtype0*
_output_shapes
: 
g

accuracy_7ScalarSummaryaccuracy_7/tagsaccuracy_6/accuracy/Mean*
T0*
_output_shapes
: 
№
Merge_3/MergeSummaryMergeSummaryinput_reshape/inputinput_reshape_1/inputlayer1/weights/summaries/mean!layer1/weights/summaries/stddev_1layer1/weights/summaries/maxlayer1/weights/summaries/min"layer1/weights/summaries/histogramlayer1/biases/summaries/mean layer1/biases/summaries/stddev_1layer1/biases/summaries/maxlayer1/biases/summaries/min!layer1/biases/summaries/histogram layer1/Wx_plus_b/pre_activationslayer1/activations dropout/dropout_keep_probabilitylayer2/weights/summaries/mean!layer2/weights/summaries/stddev_1layer2/weights/summaries/maxlayer2/weights/summaries/min"layer2/weights/summaries/histogramlayer2/biases/summaries/mean layer2/biases/summaries/stddev_1layer2/biases/summaries/maxlayer2/biases/summaries/min!layer2/biases/summaries/histogram layer2/Wx_plus_b/pre_activationslayer2/activationscross_entropy_1
accuracy_1input_reshape_2/inputlayer1_1/weights/summaries/mean#layer1_1/weights/summaries/stddev_1layer1_1/weights/summaries/maxlayer1_1/weights/summaries/min$layer1_1/weights/summaries/histogramlayer1_1/biases/summaries/mean"layer1_1/biases/summaries/stddev_1layer1_1/biases/summaries/maxlayer1_1/biases/summaries/min#layer1_1/biases/summaries/histogram"layer1_1/Wx_plus_b/pre_activationslayer1_1/activations"dropout_1/dropout_keep_probabilitylayer2_1/weights/summaries/mean#layer2_1/weights/summaries/stddev_1layer2_1/weights/summaries/maxlayer2_1/weights/summaries/min$layer2_1/weights/summaries/histogramlayer2_1/biases/summaries/mean"layer2_1/biases/summaries/stddev_1layer2_1/biases/summaries/maxlayer2_1/biases/summaries/min#layer2_1/biases/summaries/histogram"layer2_1/Wx_plus_b/pre_activationslayer2_1/activationscross_entropy_3
accuracy_3input_reshape_3/inputlayer1_2/weights/summaries/mean#layer1_2/weights/summaries/stddev_1layer1_2/weights/summaries/maxlayer1_2/weights/summaries/min$layer1_2/weights/summaries/histogramlayer1_2/biases/summaries/mean"layer1_2/biases/summaries/stddev_1layer1_2/biases/summaries/maxlayer1_2/biases/summaries/min#layer1_2/biases/summaries/histogram"layer1_2/Wx_plus_b/pre_activationslayer1_2/activations"dropout_2/dropout_keep_probabilitylayer2_2/weights/summaries/mean#layer2_2/weights/summaries/stddev_1layer2_2/weights/summaries/maxlayer2_2/weights/summaries/min$layer2_2/weights/summaries/histogramlayer2_2/biases/summaries/mean"layer2_2/biases/summaries/stddev_1layer2_2/biases/summaries/maxlayer2_2/biases/summaries/min#layer2_2/biases/summaries/histogram"layer2_2/Wx_plus_b/pre_activationslayer2_2/activationscross_entropy_5
accuracy_5input_reshape_4/inputlayer1_3/weights/summaries/mean#layer1_3/weights/summaries/stddev_1layer1_3/weights/summaries/maxlayer1_3/weights/summaries/min$layer1_3/weights/summaries/histogramlayer1_3/biases/summaries/mean"layer1_3/biases/summaries/stddev_1layer1_3/biases/summaries/maxlayer1_3/biases/summaries/min#layer1_3/biases/summaries/histogram"layer1_3/Wx_plus_b/pre_activationslayer1_3/activations"dropout_3/dropout_keep_probabilitylayer2_3/weights/summaries/mean#layer2_3/weights/summaries/stddev_1layer2_3/weights/summaries/maxlayer2_3/weights/summaries/min$layer2_3/weights/summaries/histogramlayer2_3/biases/summaries/mean"layer2_3/biases/summaries/stddev_1layer2_3/biases/summaries/maxlayer2_3/biases/summaries/min#layer2_3/biases/summaries/histogram"layer2_3/Wx_plus_b/pre_activationslayer2_3/activationscross_entropy_7
accuracy_7*
Nq*
_output_shapes
: 
t
input_5/x-inputPlaceholder*
dtype0*
shape:џџџџџџџџџ*(
_output_shapes
:џџџџџџџџџ
j
input_5/y-inputPlaceholder*
dtype0	*
shape:џџџџџџџџџ*#
_output_shapes
:џџџџџџџџџ
v
input_reshape_5/Reshape/shapeConst*%
valueB"џџџџ         *
dtype0*
_output_shapes
:

input_reshape_5/ReshapeReshapeinput_5/x-inputinput_reshape_5/Reshape/shape*
T0*
Tshape0*/
_output_shapes
:џџџџџџџџџ
o
input_reshape_5/input/tagConst*&
valueB Binput_reshape_5/input*
dtype0*
_output_shapes
: 
­
input_reshape_5/inputImageSummaryinput_reshape_5/input/taginput_reshape_5/Reshape*

max_images
*
T0*
	bad_colorB:џ  џ*
_output_shapes
: 
x
'layer1_4/weights/truncated_normal/shapeConst*
valueB"  є  *
dtype0*
_output_shapes
:
k
&layer1_4/weights/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
m
(layer1_4/weights/truncated_normal/stddevConst*
valueB
 *ЭЬЬ=*
dtype0*
_output_shapes
: 
О
1layer1_4/weights/truncated_normal/TruncatedNormalTruncatedNormal'layer1_4/weights/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0* 
_output_shapes
:
є
Д
%layer1_4/weights/truncated_normal/mulMul1layer1_4/weights/truncated_normal/TruncatedNormal(layer1_4/weights/truncated_normal/stddev*
T0* 
_output_shapes
:
є
Ђ
!layer1_4/weights/truncated_normalAdd%layer1_4/weights/truncated_normal/mul&layer1_4/weights/truncated_normal/mean*
T0* 
_output_shapes
:
є

layer1_4/weights/Variable
VariableV2*
shape:
є*
dtype0*
	container *
shared_name * 
_output_shapes
:
є
ъ
 layer1_4/weights/Variable/AssignAssignlayer1_4/weights/Variable!layer1_4/weights/truncated_normal*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@layer1_4/weights/Variable* 
_output_shapes
:
є

layer1_4/weights/Variable/readIdentitylayer1_4/weights/Variable*
T0*,
_class"
 loc:@layer1_4/weights/Variable* 
_output_shapes
:
є
a
layer1_4/weights/summaries/RankConst*
value	B :*
dtype0*
_output_shapes
: 
h
&layer1_4/weights/summaries/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
h
&layer1_4/weights/summaries/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Т
 layer1_4/weights/summaries/rangeRange&layer1_4/weights/summaries/range/startlayer1_4/weights/summaries/Rank&layer1_4/weights/summaries/range/delta*

Tidx0*
_output_shapes
:
Ї
layer1_4/weights/summaries/MeanMeanlayer1_4/weights/Variable/read layer1_4/weights/summaries/range*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

$layer1_4/weights/summaries/mean/tagsConst*0
value'B% Blayer1_4/weights/summaries/mean*
dtype0*
_output_shapes
: 

layer1_4/weights/summaries/meanScalarSummary$layer1_4/weights/summaries/mean/tagslayer1_4/weights/summaries/Mean*
T0*
_output_shapes
: 

%layer1_4/weights/summaries/stddev/subSublayer1_4/weights/Variable/readlayer1_4/weights/summaries/Mean*
T0* 
_output_shapes
:
є

(layer1_4/weights/summaries/stddev/SquareSquare%layer1_4/weights/summaries/stddev/sub*
T0* 
_output_shapes
:
є
x
'layer1_4/weights/summaries/stddev/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
П
&layer1_4/weights/summaries/stddev/MeanMean(layer1_4/weights/summaries/stddev/Square'layer1_4/weights/summaries/stddev/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
w
&layer1_4/weights/summaries/stddev/SqrtSqrt&layer1_4/weights/summaries/stddev/Mean*
T0*
_output_shapes
: 

(layer1_4/weights/summaries/stddev_1/tagsConst*4
value+B) B#layer1_4/weights/summaries/stddev_1*
dtype0*
_output_shapes
: 
Ї
#layer1_4/weights/summaries/stddev_1ScalarSummary(layer1_4/weights/summaries/stddev_1/tags&layer1_4/weights/summaries/stddev/Sqrt*
T0*
_output_shapes
: 
c
!layer1_4/weights/summaries/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
j
(layer1_4/weights/summaries/range_1/startConst*
value	B : *
dtype0*
_output_shapes
: 
j
(layer1_4/weights/summaries/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ъ
"layer1_4/weights/summaries/range_1Range(layer1_4/weights/summaries/range_1/start!layer1_4/weights/summaries/Rank_1(layer1_4/weights/summaries/range_1/delta*

Tidx0*
_output_shapes
:
Ї
layer1_4/weights/summaries/MaxMaxlayer1_4/weights/Variable/read"layer1_4/weights/summaries/range_1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

#layer1_4/weights/summaries/max/tagsConst*/
value&B$ Blayer1_4/weights/summaries/max*
dtype0*
_output_shapes
: 

layer1_4/weights/summaries/maxScalarSummary#layer1_4/weights/summaries/max/tagslayer1_4/weights/summaries/Max*
T0*
_output_shapes
: 
c
!layer1_4/weights/summaries/Rank_2Const*
value	B :*
dtype0*
_output_shapes
: 
j
(layer1_4/weights/summaries/range_2/startConst*
value	B : *
dtype0*
_output_shapes
: 
j
(layer1_4/weights/summaries/range_2/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ъ
"layer1_4/weights/summaries/range_2Range(layer1_4/weights/summaries/range_2/start!layer1_4/weights/summaries/Rank_2(layer1_4/weights/summaries/range_2/delta*

Tidx0*
_output_shapes
:
Ї
layer1_4/weights/summaries/MinMinlayer1_4/weights/Variable/read"layer1_4/weights/summaries/range_2*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

#layer1_4/weights/summaries/min/tagsConst*/
value&B$ Blayer1_4/weights/summaries/min*
dtype0*
_output_shapes
: 

layer1_4/weights/summaries/minScalarSummary#layer1_4/weights/summaries/min/tagslayer1_4/weights/summaries/Min*
T0*
_output_shapes
: 

(layer1_4/weights/summaries/histogram/tagConst*5
value,B* B$layer1_4/weights/summaries/histogram*
dtype0*
_output_shapes
: 
Ѓ
$layer1_4/weights/summaries/histogramHistogramSummary(layer1_4/weights/summaries/histogram/taglayer1_4/weights/Variable/read*
T0*
_output_shapes
: 
d
layer1_4/biases/ConstConst*
valueBє*ЭЬЬ=*
dtype0*
_output_shapes	
:є

layer1_4/biases/Variable
VariableV2*
shape:є*
dtype0*
	container *
shared_name *
_output_shapes	
:є
ж
layer1_4/biases/Variable/AssignAssignlayer1_4/biases/Variablelayer1_4/biases/Const*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@layer1_4/biases/Variable*
_output_shapes	
:є

layer1_4/biases/Variable/readIdentitylayer1_4/biases/Variable*
T0*+
_class!
loc:@layer1_4/biases/Variable*
_output_shapes	
:є
`
layer1_4/biases/summaries/RankConst*
value	B :*
dtype0*
_output_shapes
: 
g
%layer1_4/biases/summaries/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
g
%layer1_4/biases/summaries/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
О
layer1_4/biases/summaries/rangeRange%layer1_4/biases/summaries/range/startlayer1_4/biases/summaries/Rank%layer1_4/biases/summaries/range/delta*

Tidx0*
_output_shapes
:
Є
layer1_4/biases/summaries/MeanMeanlayer1_4/biases/Variable/readlayer1_4/biases/summaries/range*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

#layer1_4/biases/summaries/mean/tagsConst*/
value&B$ Blayer1_4/biases/summaries/mean*
dtype0*
_output_shapes
: 

layer1_4/biases/summaries/meanScalarSummary#layer1_4/biases/summaries/mean/tagslayer1_4/biases/summaries/Mean*
T0*
_output_shapes
: 

$layer1_4/biases/summaries/stddev/subSublayer1_4/biases/Variable/readlayer1_4/biases/summaries/Mean*
T0*
_output_shapes	
:є
}
'layer1_4/biases/summaries/stddev/SquareSquare$layer1_4/biases/summaries/stddev/sub*
T0*
_output_shapes	
:є
p
&layer1_4/biases/summaries/stddev/ConstConst*
valueB: *
dtype0*
_output_shapes
:
М
%layer1_4/biases/summaries/stddev/MeanMean'layer1_4/biases/summaries/stddev/Square&layer1_4/biases/summaries/stddev/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
u
%layer1_4/biases/summaries/stddev/SqrtSqrt%layer1_4/biases/summaries/stddev/Mean*
T0*
_output_shapes
: 

'layer1_4/biases/summaries/stddev_1/tagsConst*3
value*B( B"layer1_4/biases/summaries/stddev_1*
dtype0*
_output_shapes
: 
Є
"layer1_4/biases/summaries/stddev_1ScalarSummary'layer1_4/biases/summaries/stddev_1/tags%layer1_4/biases/summaries/stddev/Sqrt*
T0*
_output_shapes
: 
b
 layer1_4/biases/summaries/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
i
'layer1_4/biases/summaries/range_1/startConst*
value	B : *
dtype0*
_output_shapes
: 
i
'layer1_4/biases/summaries/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ц
!layer1_4/biases/summaries/range_1Range'layer1_4/biases/summaries/range_1/start layer1_4/biases/summaries/Rank_1'layer1_4/biases/summaries/range_1/delta*

Tidx0*
_output_shapes
:
Є
layer1_4/biases/summaries/MaxMaxlayer1_4/biases/Variable/read!layer1_4/biases/summaries/range_1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

"layer1_4/biases/summaries/max/tagsConst*.
value%B# Blayer1_4/biases/summaries/max*
dtype0*
_output_shapes
: 

layer1_4/biases/summaries/maxScalarSummary"layer1_4/biases/summaries/max/tagslayer1_4/biases/summaries/Max*
T0*
_output_shapes
: 
b
 layer1_4/biases/summaries/Rank_2Const*
value	B :*
dtype0*
_output_shapes
: 
i
'layer1_4/biases/summaries/range_2/startConst*
value	B : *
dtype0*
_output_shapes
: 
i
'layer1_4/biases/summaries/range_2/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ц
!layer1_4/biases/summaries/range_2Range'layer1_4/biases/summaries/range_2/start layer1_4/biases/summaries/Rank_2'layer1_4/biases/summaries/range_2/delta*

Tidx0*
_output_shapes
:
Є
layer1_4/biases/summaries/MinMinlayer1_4/biases/Variable/read!layer1_4/biases/summaries/range_2*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

"layer1_4/biases/summaries/min/tagsConst*.
value%B# Blayer1_4/biases/summaries/min*
dtype0*
_output_shapes
: 

layer1_4/biases/summaries/minScalarSummary"layer1_4/biases/summaries/min/tagslayer1_4/biases/summaries/Min*
T0*
_output_shapes
: 

'layer1_4/biases/summaries/histogram/tagConst*4
value+B) B#layer1_4/biases/summaries/histogram*
dtype0*
_output_shapes
: 
 
#layer1_4/biases/summaries/histogramHistogramSummary'layer1_4/biases/summaries/histogram/taglayer1_4/biases/Variable/read*
T0*
_output_shapes
: 
­
layer1_4/Wx_plus_b/MatMulMatMulinput_5/x-inputlayer1_4/weights/Variable/read*
transpose_a( *
transpose_b( *
T0*(
_output_shapes
:џџџџџџџџџє

layer1_4/Wx_plus_b/addAddlayer1_4/Wx_plus_b/MatMullayer1_4/biases/Variable/read*
T0*(
_output_shapes
:џџџџџџџџџє

&layer1_4/Wx_plus_b/pre_activations/tagConst*3
value*B( B"layer1_4/Wx_plus_b/pre_activations*
dtype0*
_output_shapes
: 

"layer1_4/Wx_plus_b/pre_activationsHistogramSummary&layer1_4/Wx_plus_b/pre_activations/taglayer1_4/Wx_plus_b/add*
T0*
_output_shapes
: 
f
layer1_4/activationRelulayer1_4/Wx_plus_b/add*
T0*(
_output_shapes
:џџџџџџџџџє
m
layer1_4/activations/tagConst*%
valueB Blayer1_4/activations*
dtype0*
_output_shapes
: 
x
layer1_4/activationsHistogramSummarylayer1_4/activations/taglayer1_4/activation*
T0*
_output_shapes
: 
Z
dropout_4/PlaceholderPlaceholder*
dtype0*
shape:*
_output_shapes
:

'dropout_4/dropout_keep_probability/tagsConst*3
value*B( B"dropout_4/dropout_keep_probability*
dtype0*
_output_shapes
: 

"dropout_4/dropout_keep_probabilityScalarSummary'dropout_4/dropout_keep_probability/tagsdropout_4/Placeholder*
T0*
_output_shapes
: 
j
dropout_4/dropout/ShapeShapelayer1_4/activation*
T0*
out_type0*
_output_shapes
:
i
$dropout_4/dropout/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: 
i
$dropout_4/dropout/random_uniform/maxConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Б
.dropout_4/dropout/random_uniform/RandomUniformRandomUniformdropout_4/dropout/Shape*

seed *
seed2 *
dtype0*
T0*(
_output_shapes
:џџџџџџџџџє

$dropout_4/dropout/random_uniform/subSub$dropout_4/dropout/random_uniform/max$dropout_4/dropout/random_uniform/min*
T0*
_output_shapes
: 
Д
$dropout_4/dropout/random_uniform/mulMul.dropout_4/dropout/random_uniform/RandomUniform$dropout_4/dropout/random_uniform/sub*
T0*(
_output_shapes
:џџџџџџџџџє
І
 dropout_4/dropout/random_uniformAdd$dropout_4/dropout/random_uniform/mul$dropout_4/dropout/random_uniform/min*
T0*(
_output_shapes
:џџџџџџџџџє
x
dropout_4/dropout/addAdddropout_4/Placeholder dropout_4/dropout/random_uniform*
T0*
_output_shapes
:
Z
dropout_4/dropout/FloorFloordropout_4/dropout/add*
T0*
_output_shapes
:
o
dropout_4/dropout/divRealDivlayer1_4/activationdropout_4/Placeholder*
T0*
_output_shapes
:

dropout_4/dropout/mulMuldropout_4/dropout/divdropout_4/dropout/Floor*
T0*(
_output_shapes
:џџџџџџџџџє
x
'layer2_4/weights/truncated_normal/shapeConst*
valueB"є  
   *
dtype0*
_output_shapes
:
k
&layer2_4/weights/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
m
(layer2_4/weights/truncated_normal/stddevConst*
valueB
 *ЭЬЬ=*
dtype0*
_output_shapes
: 
Н
1layer2_4/weights/truncated_normal/TruncatedNormalTruncatedNormal'layer2_4/weights/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*
_output_shapes
:	є

Г
%layer2_4/weights/truncated_normal/mulMul1layer2_4/weights/truncated_normal/TruncatedNormal(layer2_4/weights/truncated_normal/stddev*
T0*
_output_shapes
:	є

Ё
!layer2_4/weights/truncated_normalAdd%layer2_4/weights/truncated_normal/mul&layer2_4/weights/truncated_normal/mean*
T0*
_output_shapes
:	є


layer2_4/weights/Variable
VariableV2*
shape:	є
*
dtype0*
	container *
shared_name *
_output_shapes
:	є

щ
 layer2_4/weights/Variable/AssignAssignlayer2_4/weights/Variable!layer2_4/weights/truncated_normal*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@layer2_4/weights/Variable*
_output_shapes
:	є


layer2_4/weights/Variable/readIdentitylayer2_4/weights/Variable*
T0*,
_class"
 loc:@layer2_4/weights/Variable*
_output_shapes
:	є

a
layer2_4/weights/summaries/RankConst*
value	B :*
dtype0*
_output_shapes
: 
h
&layer2_4/weights/summaries/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
h
&layer2_4/weights/summaries/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Т
 layer2_4/weights/summaries/rangeRange&layer2_4/weights/summaries/range/startlayer2_4/weights/summaries/Rank&layer2_4/weights/summaries/range/delta*

Tidx0*
_output_shapes
:
Ї
layer2_4/weights/summaries/MeanMeanlayer2_4/weights/Variable/read layer2_4/weights/summaries/range*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

$layer2_4/weights/summaries/mean/tagsConst*0
value'B% Blayer2_4/weights/summaries/mean*
dtype0*
_output_shapes
: 

layer2_4/weights/summaries/meanScalarSummary$layer2_4/weights/summaries/mean/tagslayer2_4/weights/summaries/Mean*
T0*
_output_shapes
: 

%layer2_4/weights/summaries/stddev/subSublayer2_4/weights/Variable/readlayer2_4/weights/summaries/Mean*
T0*
_output_shapes
:	є


(layer2_4/weights/summaries/stddev/SquareSquare%layer2_4/weights/summaries/stddev/sub*
T0*
_output_shapes
:	є

x
'layer2_4/weights/summaries/stddev/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
П
&layer2_4/weights/summaries/stddev/MeanMean(layer2_4/weights/summaries/stddev/Square'layer2_4/weights/summaries/stddev/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
w
&layer2_4/weights/summaries/stddev/SqrtSqrt&layer2_4/weights/summaries/stddev/Mean*
T0*
_output_shapes
: 

(layer2_4/weights/summaries/stddev_1/tagsConst*4
value+B) B#layer2_4/weights/summaries/stddev_1*
dtype0*
_output_shapes
: 
Ї
#layer2_4/weights/summaries/stddev_1ScalarSummary(layer2_4/weights/summaries/stddev_1/tags&layer2_4/weights/summaries/stddev/Sqrt*
T0*
_output_shapes
: 
c
!layer2_4/weights/summaries/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
j
(layer2_4/weights/summaries/range_1/startConst*
value	B : *
dtype0*
_output_shapes
: 
j
(layer2_4/weights/summaries/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ъ
"layer2_4/weights/summaries/range_1Range(layer2_4/weights/summaries/range_1/start!layer2_4/weights/summaries/Rank_1(layer2_4/weights/summaries/range_1/delta*

Tidx0*
_output_shapes
:
Ї
layer2_4/weights/summaries/MaxMaxlayer2_4/weights/Variable/read"layer2_4/weights/summaries/range_1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

#layer2_4/weights/summaries/max/tagsConst*/
value&B$ Blayer2_4/weights/summaries/max*
dtype0*
_output_shapes
: 

layer2_4/weights/summaries/maxScalarSummary#layer2_4/weights/summaries/max/tagslayer2_4/weights/summaries/Max*
T0*
_output_shapes
: 
c
!layer2_4/weights/summaries/Rank_2Const*
value	B :*
dtype0*
_output_shapes
: 
j
(layer2_4/weights/summaries/range_2/startConst*
value	B : *
dtype0*
_output_shapes
: 
j
(layer2_4/weights/summaries/range_2/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ъ
"layer2_4/weights/summaries/range_2Range(layer2_4/weights/summaries/range_2/start!layer2_4/weights/summaries/Rank_2(layer2_4/weights/summaries/range_2/delta*

Tidx0*
_output_shapes
:
Ї
layer2_4/weights/summaries/MinMinlayer2_4/weights/Variable/read"layer2_4/weights/summaries/range_2*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

#layer2_4/weights/summaries/min/tagsConst*/
value&B$ Blayer2_4/weights/summaries/min*
dtype0*
_output_shapes
: 

layer2_4/weights/summaries/minScalarSummary#layer2_4/weights/summaries/min/tagslayer2_4/weights/summaries/Min*
T0*
_output_shapes
: 

(layer2_4/weights/summaries/histogram/tagConst*5
value,B* B$layer2_4/weights/summaries/histogram*
dtype0*
_output_shapes
: 
Ѓ
$layer2_4/weights/summaries/histogramHistogramSummary(layer2_4/weights/summaries/histogram/taglayer2_4/weights/Variable/read*
T0*
_output_shapes
: 
b
layer2_4/biases/ConstConst*
valueB
*ЭЬЬ=*
dtype0*
_output_shapes
:


layer2_4/biases/Variable
VariableV2*
shape:
*
dtype0*
	container *
shared_name *
_output_shapes
:

е
layer2_4/biases/Variable/AssignAssignlayer2_4/biases/Variablelayer2_4/biases/Const*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@layer2_4/biases/Variable*
_output_shapes
:


layer2_4/biases/Variable/readIdentitylayer2_4/biases/Variable*
T0*+
_class!
loc:@layer2_4/biases/Variable*
_output_shapes
:

`
layer2_4/biases/summaries/RankConst*
value	B :*
dtype0*
_output_shapes
: 
g
%layer2_4/biases/summaries/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
g
%layer2_4/biases/summaries/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
О
layer2_4/biases/summaries/rangeRange%layer2_4/biases/summaries/range/startlayer2_4/biases/summaries/Rank%layer2_4/biases/summaries/range/delta*

Tidx0*
_output_shapes
:
Є
layer2_4/biases/summaries/MeanMeanlayer2_4/biases/Variable/readlayer2_4/biases/summaries/range*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

#layer2_4/biases/summaries/mean/tagsConst*/
value&B$ Blayer2_4/biases/summaries/mean*
dtype0*
_output_shapes
: 

layer2_4/biases/summaries/meanScalarSummary#layer2_4/biases/summaries/mean/tagslayer2_4/biases/summaries/Mean*
T0*
_output_shapes
: 

$layer2_4/biases/summaries/stddev/subSublayer2_4/biases/Variable/readlayer2_4/biases/summaries/Mean*
T0*
_output_shapes
:

|
'layer2_4/biases/summaries/stddev/SquareSquare$layer2_4/biases/summaries/stddev/sub*
T0*
_output_shapes
:

p
&layer2_4/biases/summaries/stddev/ConstConst*
valueB: *
dtype0*
_output_shapes
:
М
%layer2_4/biases/summaries/stddev/MeanMean'layer2_4/biases/summaries/stddev/Square&layer2_4/biases/summaries/stddev/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
u
%layer2_4/biases/summaries/stddev/SqrtSqrt%layer2_4/biases/summaries/stddev/Mean*
T0*
_output_shapes
: 

'layer2_4/biases/summaries/stddev_1/tagsConst*3
value*B( B"layer2_4/biases/summaries/stddev_1*
dtype0*
_output_shapes
: 
Є
"layer2_4/biases/summaries/stddev_1ScalarSummary'layer2_4/biases/summaries/stddev_1/tags%layer2_4/biases/summaries/stddev/Sqrt*
T0*
_output_shapes
: 
b
 layer2_4/biases/summaries/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
i
'layer2_4/biases/summaries/range_1/startConst*
value	B : *
dtype0*
_output_shapes
: 
i
'layer2_4/biases/summaries/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ц
!layer2_4/biases/summaries/range_1Range'layer2_4/biases/summaries/range_1/start layer2_4/biases/summaries/Rank_1'layer2_4/biases/summaries/range_1/delta*

Tidx0*
_output_shapes
:
Є
layer2_4/biases/summaries/MaxMaxlayer2_4/biases/Variable/read!layer2_4/biases/summaries/range_1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

"layer2_4/biases/summaries/max/tagsConst*.
value%B# Blayer2_4/biases/summaries/max*
dtype0*
_output_shapes
: 

layer2_4/biases/summaries/maxScalarSummary"layer2_4/biases/summaries/max/tagslayer2_4/biases/summaries/Max*
T0*
_output_shapes
: 
b
 layer2_4/biases/summaries/Rank_2Const*
value	B :*
dtype0*
_output_shapes
: 
i
'layer2_4/biases/summaries/range_2/startConst*
value	B : *
dtype0*
_output_shapes
: 
i
'layer2_4/biases/summaries/range_2/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ц
!layer2_4/biases/summaries/range_2Range'layer2_4/biases/summaries/range_2/start layer2_4/biases/summaries/Rank_2'layer2_4/biases/summaries/range_2/delta*

Tidx0*
_output_shapes
:
Є
layer2_4/biases/summaries/MinMinlayer2_4/biases/Variable/read!layer2_4/biases/summaries/range_2*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

"layer2_4/biases/summaries/min/tagsConst*.
value%B# Blayer2_4/biases/summaries/min*
dtype0*
_output_shapes
: 

layer2_4/biases/summaries/minScalarSummary"layer2_4/biases/summaries/min/tagslayer2_4/biases/summaries/Min*
T0*
_output_shapes
: 

'layer2_4/biases/summaries/histogram/tagConst*4
value+B) B#layer2_4/biases/summaries/histogram*
dtype0*
_output_shapes
: 
 
#layer2_4/biases/summaries/histogramHistogramSummary'layer2_4/biases/summaries/histogram/taglayer2_4/biases/Variable/read*
T0*
_output_shapes
: 
В
layer2_4/Wx_plus_b/MatMulMatMuldropout_4/dropout/mullayer2_4/weights/Variable/read*
transpose_a( *
transpose_b( *
T0*'
_output_shapes
:џџџџџџџџџ


layer2_4/Wx_plus_b/addAddlayer2_4/Wx_plus_b/MatMullayer2_4/biases/Variable/read*
T0*'
_output_shapes
:џџџџџџџџџ


&layer2_4/Wx_plus_b/pre_activations/tagConst*3
value*B( B"layer2_4/Wx_plus_b/pre_activations*
dtype0*
_output_shapes
: 

"layer2_4/Wx_plus_b/pre_activationsHistogramSummary&layer2_4/Wx_plus_b/pre_activations/taglayer2_4/Wx_plus_b/add*
T0*
_output_shapes
: 
i
layer2_4/activationIdentitylayer2_4/Wx_plus_b/add*
T0*'
_output_shapes
:џџџџџџџџџ

m
layer2_4/activations/tagConst*%
valueB Blayer2_4/activations*
dtype0*
_output_shapes
: 
x
layer2_4/activationsHistogramSummarylayer2_4/activations/taglayer2_4/activation*
T0*
_output_shapes
: 

=cross_entropy_8/total/sparse_softmax_cross_entropy_loss/ConstConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

Fcross_entropy_8/total/sparse_softmax_cross_entropy_loss/xentropy/ShapeShapeinput_5/y-input*
T0	*
out_type0*
_output_shapes
:
ц
Icross_entropy_8/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy#SparseSoftmaxCrossEntropyWithLogitslayer2_4/activationinput_5/y-input*
T0*
Tlabels0	*6
_output_shapes$
":џџџџџџџџџ:џџџџџџџџџ


Zcross_entropy_8/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/weights/shapeConst*
valueB *
dtype0*
_output_shapes
: 

Ycross_entropy_8/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/weights/rankConst*
value	B : *
dtype0*
_output_shapes
: 
т
Ycross_entropy_8/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/values/shapeShapeIcross_entropy_8/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy*
T0*
out_type0*
_output_shapes
:

Xcross_entropy_8/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
p
hcross_entropy_8/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_successNoOp
х
;cross_entropy_8/total/sparse_softmax_cross_entropy_loss/MulMulIcross_entropy_8/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy=cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Consti^cross_entropy_8/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
T0*#
_output_shapes
:џџџџџџџџџ
є
?cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Const_1Consti^cross_entropy_8/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB: *
dtype0*
_output_shapes
:
ў
;cross_entropy_8/total/sparse_softmax_cross_entropy_loss/SumSum;cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Mul?cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Const_1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
ћ
Kcross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/Equal/yConsti^cross_entropy_8/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
џ
Icross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/EqualEqual=cross_entropy_8/total/sparse_softmax_cross_entropy_loss/ConstKcross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/Equal/y*
T0*
_output_shapes
: 
ў
Ncross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/zeros_likeConsti^cross_entropy_8/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 

Scross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/ones_like/ShapeConsti^cross_entropy_8/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 

Scross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/ones_like/ConstConsti^cross_entropy_8/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 
 
Mcross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/ones_likeFillScross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/ones_like/ShapeScross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/ones_like/Const*
T0*
_output_shapes
: 
п
Jcross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/SelectSelectIcross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/EqualNcross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/zeros_likeMcross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/ones_like*
T0*
_output_shapes
: 
І
xcross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/shapeConsti^cross_entropy_8/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
Є
wcross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/rankConsti^cross_entropy_8/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
value	B : *
dtype0*
_output_shapes
: 
ы
wcross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/shapeShapeIcross_entropy_8/total/sparse_softmax_cross_entropy_loss/xentropy/xentropyi^cross_entropy_8/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
T0*
out_type0*
_output_shapes
:
Ѓ
vcross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/rankConsti^cross_entropy_8/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
value	B :*
dtype0*
_output_shapes
: 
њ
cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOpi^cross_entropy_8/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success
у
ecross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/ShapeShapeIcross_entropy_8/total/sparse_softmax_cross_entropy_loss/xentropy/xentropyi^cross_entropy_8/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success^cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
T0*
out_type0*
_output_shapes
:

ecross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/ConstConsti^cross_entropy_8/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success^cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 
у
_cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_likeFillecross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/Shapeecross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/Const*
T0*#
_output_shapes
:џџџџџџџџџ
З
Ucross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weightsMulJcross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/Select_cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like*
T0*#
_output_shapes
:џџџџџџџџџ
ў
Icross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/ConstConsti^cross_entropy_8/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB: *
dtype0*
_output_shapes
:
Њ
Ccross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_presentSumUcross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weightsIcross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
э
?cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Const_2Consti^cross_entropy_8/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 

=cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Sum_1Sum;cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Sum?cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Const_2*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
ё
Across_entropy_8/total/sparse_softmax_cross_entropy_loss/Greater/yConsti^cross_entropy_8/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
ѓ
?cross_entropy_8/total/sparse_softmax_cross_entropy_loss/GreaterGreaterCcross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_presentAcross_entropy_8/total/sparse_softmax_cross_entropy_loss/Greater/y*
T0*
_output_shapes
: 
я
?cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Equal/yConsti^cross_entropy_8/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
э
=cross_entropy_8/total/sparse_softmax_cross_entropy_loss/EqualEqualCcross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present?cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Equal/y*
T0*
_output_shapes
: 
ѕ
Gcross_entropy_8/total/sparse_softmax_cross_entropy_loss/ones_like/ShapeConsti^cross_entropy_8/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
ї
Gcross_entropy_8/total/sparse_softmax_cross_entropy_loss/ones_like/ConstConsti^cross_entropy_8/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ќ
Across_entropy_8/total/sparse_softmax_cross_entropy_loss/ones_likeFillGcross_entropy_8/total/sparse_softmax_cross_entropy_loss/ones_like/ShapeGcross_entropy_8/total/sparse_softmax_cross_entropy_loss/ones_like/Const*
T0*
_output_shapes
: 
А
>cross_entropy_8/total/sparse_softmax_cross_entropy_loss/SelectSelect=cross_entropy_8/total/sparse_softmax_cross_entropy_loss/EqualAcross_entropy_8/total/sparse_softmax_cross_entropy_loss/ones_likeCcross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present*
T0*
_output_shapes
: 
ц
;cross_entropy_8/total/sparse_softmax_cross_entropy_loss/divRealDiv=cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Sum_1>cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 
ђ
Bcross_entropy_8/total/sparse_softmax_cross_entropy_loss/zeros_likeConsti^cross_entropy_8/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
Њ
=cross_entropy_8/total/sparse_softmax_cross_entropy_loss/valueSelect?cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Greater;cross_entropy_8/total/sparse_softmax_cross_entropy_loss/divBcross_entropy_8/total/sparse_softmax_cross_entropy_loss/zeros_like*
T0*
_output_shapes
: 
d
cross_entropy_9/tagsConst* 
valueB Bcross_entropy_9*
dtype0*
_output_shapes
: 

cross_entropy_9ScalarSummarycross_entropy_9/tags=cross_entropy_8/total/sparse_softmax_cross_entropy_loss/value*
T0*
_output_shapes
: 
Z
train_4/gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
`
train_4/gradients/grad_ys_0Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
train_4/gradients/FillFilltrain_4/gradients/Shapetrain_4/gradients/grad_ys_0*
T0*
_output_shapes
: 
Є
_train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/value_grad/zeros_likeConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Р
[train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/value_grad/SelectSelect?cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Greatertrain_4/gradients/Fill_train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/value_grad/zeros_like*
T0*
_output_shapes
: 
Т
]train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/value_grad/Select_1Select?cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Greater_train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/value_grad/zeros_liketrain_4/gradients/Fill*
T0*
_output_shapes
: 
Ћ
etrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/value_grad/tuple/group_depsNoOp\^train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/value_grad/Select^^train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/value_grad/Select_1
Я
mtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/value_grad/tuple/control_dependencyIdentity[train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/value_grad/Selectf^train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/value_grad/tuple/group_deps*
T0*n
_classd
b`loc:@train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/value_grad/Select*
_output_shapes
: 
е
otrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/value_grad/tuple/control_dependency_1Identity]train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/value_grad/Select_1f^train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/value_grad/tuple/group_deps*
T0*p
_classf
dbloc:@train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/value_grad/Select_1*
_output_shapes
: 

Xtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 

Ztrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
є
htrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/BroadcastGradientArgsBroadcastGradientArgsXtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/ShapeZtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Е
Ztrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/RealDivRealDivmtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/value_grad/tuple/control_dependency>cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 
у
Vtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/SumSumZtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/RealDivhtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
Ц
Ztrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/ReshapeReshapeVtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/SumXtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
Н
Vtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/NegNeg=cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Sum_1*
T0*
_output_shapes
: 
 
\train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/RealDiv_1RealDivVtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/Neg>cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 
І
\train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/RealDiv_2RealDiv\train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/RealDiv_1>cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 
Ы
Vtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/mulMulmtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/value_grad/tuple/control_dependency\train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/RealDiv_2*
T0*
_output_shapes
: 
у
Xtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/Sum_1SumVtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/muljtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
Ь
\train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/Reshape_1ReshapeXtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/Sum_1Ztrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
Ї
ctrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/group_depsNoOp[^train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/Reshape]^train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/Reshape_1
Щ
ktrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/control_dependencyIdentityZtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/Reshaped^train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/group_deps*
T0*m
_classc
a_loc:@train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/Reshape*
_output_shapes
: 
Я
mtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/control_dependency_1Identity\train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/Reshape_1d^train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/group_deps*
T0*o
_classe
caloc:@train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/Reshape_1*
_output_shapes
: 
Ѕ
btrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/Reshape/shapeConst*
valueB *
dtype0*
_output_shapes
: 
ч
\train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/ReshapeReshapektrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/control_dependencybtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
: 
І
ctrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/Tile/multiplesConst*
valueB *
dtype0*
_output_shapes
: 
з
Ytrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/TileTile\train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/Reshapectrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/Tile/multiples*
T0*

Tmultiples0*
_output_shapes
: 
Ѕ
`train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Select_grad/zeros_likeConst*
valueB
 *    *
dtype0*
_output_shapes
: 

\train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Select_grad/SelectSelect=cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Equalmtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/control_dependency_1`train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Select_grad/zeros_like*
T0*
_output_shapes
: 

^train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Select_grad/Select_1Select=cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Equal`train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Select_grad/zeros_likemtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/control_dependency_1*
T0*
_output_shapes
: 
Ў
ftrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Select_grad/tuple/group_depsNoOp]^train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Select_grad/Select_^train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Select_grad/Select_1
г
ntrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Select_grad/tuple/control_dependencyIdentity\train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Select_grad/Selectg^train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Select_grad/tuple/group_deps*
T0*o
_classe
caloc:@train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Select_grad/Select*
_output_shapes
: 
й
ptrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Select_grad/tuple/control_dependency_1Identity^train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Select_grad/Select_1g^train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Select_grad/tuple/group_deps*
T0*q
_classg
ecloc:@train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Select_grad/Select_1*
_output_shapes
: 
Њ
`train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Sum_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
е
Ztrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Sum_grad/ReshapeReshapeYtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/Tile`train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Sum_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
г
Xtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Sum_grad/ShapeShape;cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Mul*
T0*
out_type0*
_output_shapes
:
е
Wtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Sum_grad/TileTileZtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Sum_grad/ReshapeXtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Sum_grad/Shape*
T0*

Tmultiples0*#
_output_shapes
:џџџџџџџџџ
с
Xtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Mul_grad/ShapeShapeIcross_entropy_8/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy*
T0*
out_type0*
_output_shapes
:

Ztrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Mul_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
є
htrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgsBroadcastGradientArgsXtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Mul_grad/ShapeZtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Mul_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Ѓ
Vtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Mul_grad/mulMulWtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Sum_grad/Tile=cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Const*
T0*#
_output_shapes
:џџџџџџџџџ
п
Vtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Mul_grad/SumSumVtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Mul_grad/mulhtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
г
Ztrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Mul_grad/ReshapeReshapeVtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Mul_grad/SumXtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Mul_grad/Shape*
T0*
Tshape0*#
_output_shapes
:џџџџџџџџџ
Б
Xtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Mul_grad/mul_1MulIcross_entropy_8/total/sparse_softmax_cross_entropy_loss/xentropy/xentropyWtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Sum_grad/Tile*
T0*#
_output_shapes
:џџџџџџџџџ
х
Xtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Mul_grad/Sum_1SumXtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Mul_grad/mul_1jtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
Ь
\train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape_1ReshapeXtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Mul_grad/Sum_1Ztrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Mul_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
Ї
ctrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/group_depsNoOp[^train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape]^train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape_1
ж
ktrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/control_dependencyIdentityZtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Mul_grad/Reshaped^train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/group_deps*
T0*m
_classc
a_loc:@train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape*#
_output_shapes
:џџџџџџџџџ
Я
mtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/control_dependency_1Identity\train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape_1d^train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/group_deps*
T0*o
_classe
caloc:@train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape_1*
_output_shapes
: 
В
htrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
ќ
btrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present_grad/ReshapeReshapeptrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Select_grad/tuple/control_dependency_1htrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
ѕ
`train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present_grad/ShapeShapeUcross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights*
T0*
out_type0*
_output_shapes
:
э
_train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present_grad/TileTilebtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present_grad/Reshape`train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present_grad/Shape*
T0*

Tmultiples0*#
_output_shapes
:џџџџџџџџџ
Е
rtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 

ttrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Shape_1Shape_cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like*
T0*
out_type0*
_output_shapes
:
У
train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/BroadcastGradientArgsBroadcastGradientArgsrtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Shapettrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
ч
ptrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/mulMul_train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present_grad/Tile_cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like*
T0*#
_output_shapes
:џџџџџџџџџ
Ў
ptrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/SumSumptrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/multrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:

ttrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/ReshapeReshapeptrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Sumrtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
д
rtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/mul_1MulJcross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/Select_train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present_grad/Tile*
T0*#
_output_shapes
:џџџџџџџџџ
Д
rtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Sum_1Sumrtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/mul_1train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
Ї
vtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape_1Reshapertrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Sum_1ttrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:џџџџџџџџџ
ѕ
}train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/group_depsNoOpu^train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshapew^train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape_1
Г
train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/control_dependencyIdentityttrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape~^train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/group_deps*
T0*
_class}
{yloc:@train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape*
_output_shapes
: 
Ц
train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/control_dependency_1Identityvtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape_1~^train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/group_deps*
T0*
_class
}{loc:@train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape_1*#
_output_shapes
:џџџџџџџџџ
Ц
|train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Ч
ztrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like_grad/SumSumtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/control_dependency_1|train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like_grad/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
Ј
train_4/gradients/zeros_like	ZerosLikeKcross_entropy_8/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy:1*
T0*'
_output_shapes
:џџџџџџџџџ

Й
ptrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/PreventGradientPreventGradientKcross_entropy_8/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy:1*
T0*Д
messageЈЅCurrently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*'
_output_shapes
:џџџџџџџџџ

К
otrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/ExpandDims/dimConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

ktrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/ExpandDims
ExpandDimsktrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/control_dependencyotrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/ExpandDims/dim*
T0*

Tdim0*'
_output_shapes
:џџџџџџџџџ
ќ
dtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/mulMulktrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/ExpandDimsptrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/PreventGradient*
T0*'
_output_shapes
:џџџџџџџџџ


3train_4/gradients/layer2_4/Wx_plus_b/add_grad/ShapeShapelayer2_4/Wx_plus_b/MatMul*
T0*
out_type0*
_output_shapes
:

5train_4/gradients/layer2_4/Wx_plus_b/add_grad/Shape_1Const*
valueB:
*
dtype0*
_output_shapes
:

Ctrain_4/gradients/layer2_4/Wx_plus_b/add_grad/BroadcastGradientArgsBroadcastGradientArgs3train_4/gradients/layer2_4/Wx_plus_b/add_grad/Shape5train_4/gradients/layer2_4/Wx_plus_b/add_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Ѓ
1train_4/gradients/layer2_4/Wx_plus_b/add_grad/SumSumdtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/mulCtrain_4/gradients/layer2_4/Wx_plus_b/add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
ш
5train_4/gradients/layer2_4/Wx_plus_b/add_grad/ReshapeReshape1train_4/gradients/layer2_4/Wx_plus_b/add_grad/Sum3train_4/gradients/layer2_4/Wx_plus_b/add_grad/Shape*
T0*
Tshape0*'
_output_shapes
:џџџџџџџџџ

Ї
3train_4/gradients/layer2_4/Wx_plus_b/add_grad/Sum_1Sumdtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/mulEtrain_4/gradients/layer2_4/Wx_plus_b/add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
с
7train_4/gradients/layer2_4/Wx_plus_b/add_grad/Reshape_1Reshape3train_4/gradients/layer2_4/Wx_plus_b/add_grad/Sum_15train_4/gradients/layer2_4/Wx_plus_b/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:

И
>train_4/gradients/layer2_4/Wx_plus_b/add_grad/tuple/group_depsNoOp6^train_4/gradients/layer2_4/Wx_plus_b/add_grad/Reshape8^train_4/gradients/layer2_4/Wx_plus_b/add_grad/Reshape_1
Ц
Ftrain_4/gradients/layer2_4/Wx_plus_b/add_grad/tuple/control_dependencyIdentity5train_4/gradients/layer2_4/Wx_plus_b/add_grad/Reshape?^train_4/gradients/layer2_4/Wx_plus_b/add_grad/tuple/group_deps*
T0*H
_class>
<:loc:@train_4/gradients/layer2_4/Wx_plus_b/add_grad/Reshape*'
_output_shapes
:џџџџџџџџџ

П
Htrain_4/gradients/layer2_4/Wx_plus_b/add_grad/tuple/control_dependency_1Identity7train_4/gradients/layer2_4/Wx_plus_b/add_grad/Reshape_1?^train_4/gradients/layer2_4/Wx_plus_b/add_grad/tuple/group_deps*
T0*J
_class@
><loc:@train_4/gradients/layer2_4/Wx_plus_b/add_grad/Reshape_1*
_output_shapes
:


7train_4/gradients/layer2_4/Wx_plus_b/MatMul_grad/MatMulMatMulFtrain_4/gradients/layer2_4/Wx_plus_b/add_grad/tuple/control_dependencylayer2_4/weights/Variable/read*
transpose_a( *
transpose_b(*
T0*(
_output_shapes
:џџџџџџџџџє
ђ
9train_4/gradients/layer2_4/Wx_plus_b/MatMul_grad/MatMul_1MatMuldropout_4/dropout/mulFtrain_4/gradients/layer2_4/Wx_plus_b/add_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0*
_output_shapes
:	є

П
Atrain_4/gradients/layer2_4/Wx_plus_b/MatMul_grad/tuple/group_depsNoOp8^train_4/gradients/layer2_4/Wx_plus_b/MatMul_grad/MatMul:^train_4/gradients/layer2_4/Wx_plus_b/MatMul_grad/MatMul_1
б
Itrain_4/gradients/layer2_4/Wx_plus_b/MatMul_grad/tuple/control_dependencyIdentity7train_4/gradients/layer2_4/Wx_plus_b/MatMul_grad/MatMulB^train_4/gradients/layer2_4/Wx_plus_b/MatMul_grad/tuple/group_deps*
T0*J
_class@
><loc:@train_4/gradients/layer2_4/Wx_plus_b/MatMul_grad/MatMul*(
_output_shapes
:џџџџџџџџџє
Ю
Ktrain_4/gradients/layer2_4/Wx_plus_b/MatMul_grad/tuple/control_dependency_1Identity9train_4/gradients/layer2_4/Wx_plus_b/MatMul_grad/MatMul_1B^train_4/gradients/layer2_4/Wx_plus_b/MatMul_grad/tuple/group_deps*
T0*L
_classB
@>loc:@train_4/gradients/layer2_4/Wx_plus_b/MatMul_grad/MatMul_1*
_output_shapes
:	є


2train_4/gradients/dropout_4/dropout/mul_grad/ShapeShapedropout_4/dropout/div*
T0*
out_type0*#
_output_shapes
:џџџџџџџџџ

4train_4/gradients/dropout_4/dropout/mul_grad/Shape_1Shapedropout_4/dropout/Floor*
T0*
out_type0*#
_output_shapes
:џџџџџџџџџ

Btrain_4/gradients/dropout_4/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs2train_4/gradients/dropout_4/dropout/mul_grad/Shape4train_4/gradients/dropout_4/dropout/mul_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
О
0train_4/gradients/dropout_4/dropout/mul_grad/mulMulItrain_4/gradients/layer2_4/Wx_plus_b/MatMul_grad/tuple/control_dependencydropout_4/dropout/Floor*
T0*
_output_shapes
:
э
0train_4/gradients/dropout_4/dropout/mul_grad/SumSum0train_4/gradients/dropout_4/dropout/mul_grad/mulBtrain_4/gradients/dropout_4/dropout/mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
ж
4train_4/gradients/dropout_4/dropout/mul_grad/ReshapeReshape0train_4/gradients/dropout_4/dropout/mul_grad/Sum2train_4/gradients/dropout_4/dropout/mul_grad/Shape*
T0*
Tshape0*
_output_shapes
:
О
2train_4/gradients/dropout_4/dropout/mul_grad/mul_1Muldropout_4/dropout/divItrain_4/gradients/layer2_4/Wx_plus_b/MatMul_grad/tuple/control_dependency*
T0*
_output_shapes
:
ѓ
2train_4/gradients/dropout_4/dropout/mul_grad/Sum_1Sum2train_4/gradients/dropout_4/dropout/mul_grad/mul_1Dtrain_4/gradients/dropout_4/dropout/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
м
6train_4/gradients/dropout_4/dropout/mul_grad/Reshape_1Reshape2train_4/gradients/dropout_4/dropout/mul_grad/Sum_14train_4/gradients/dropout_4/dropout/mul_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
Е
=train_4/gradients/dropout_4/dropout/mul_grad/tuple/group_depsNoOp5^train_4/gradients/dropout_4/dropout/mul_grad/Reshape7^train_4/gradients/dropout_4/dropout/mul_grad/Reshape_1
Г
Etrain_4/gradients/dropout_4/dropout/mul_grad/tuple/control_dependencyIdentity4train_4/gradients/dropout_4/dropout/mul_grad/Reshape>^train_4/gradients/dropout_4/dropout/mul_grad/tuple/group_deps*
T0*G
_class=
;9loc:@train_4/gradients/dropout_4/dropout/mul_grad/Reshape*
_output_shapes
:
Й
Gtrain_4/gradients/dropout_4/dropout/mul_grad/tuple/control_dependency_1Identity6train_4/gradients/dropout_4/dropout/mul_grad/Reshape_1>^train_4/gradients/dropout_4/dropout/mul_grad/tuple/group_deps*
T0*I
_class?
=;loc:@train_4/gradients/dropout_4/dropout/mul_grad/Reshape_1*
_output_shapes
:

2train_4/gradients/dropout_4/dropout/div_grad/ShapeShapelayer1_4/activation*
T0*
out_type0*
_output_shapes
:

4train_4/gradients/dropout_4/dropout/div_grad/Shape_1Shapedropout_4/Placeholder*
T0*
out_type0*#
_output_shapes
:џџџџџџџџџ

Btrain_4/gradients/dropout_4/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs2train_4/gradients/dropout_4/dropout/div_grad/Shape4train_4/gradients/dropout_4/dropout/div_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Р
4train_4/gradients/dropout_4/dropout/div_grad/RealDivRealDivEtrain_4/gradients/dropout_4/dropout/mul_grad/tuple/control_dependencydropout_4/Placeholder*
T0*
_output_shapes
:
ё
0train_4/gradients/dropout_4/dropout/div_grad/SumSum4train_4/gradients/dropout_4/dropout/div_grad/RealDivBtrain_4/gradients/dropout_4/dropout/div_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
ц
4train_4/gradients/dropout_4/dropout/div_grad/ReshapeReshape0train_4/gradients/dropout_4/dropout/div_grad/Sum2train_4/gradients/dropout_4/dropout/div_grad/Shape*
T0*
Tshape0*(
_output_shapes
:џџџџџџџџџє

0train_4/gradients/dropout_4/dropout/div_grad/NegNeglayer1_4/activation*
T0*(
_output_shapes
:џџџџџџџџџє
­
6train_4/gradients/dropout_4/dropout/div_grad/RealDiv_1RealDiv0train_4/gradients/dropout_4/dropout/div_grad/Negdropout_4/Placeholder*
T0*
_output_shapes
:
Г
6train_4/gradients/dropout_4/dropout/div_grad/RealDiv_2RealDiv6train_4/gradients/dropout_4/dropout/div_grad/RealDiv_1dropout_4/Placeholder*
T0*
_output_shapes
:
й
0train_4/gradients/dropout_4/dropout/div_grad/mulMulEtrain_4/gradients/dropout_4/dropout/mul_grad/tuple/control_dependency6train_4/gradients/dropout_4/dropout/div_grad/RealDiv_2*
T0*
_output_shapes
:
ё
2train_4/gradients/dropout_4/dropout/div_grad/Sum_1Sum0train_4/gradients/dropout_4/dropout/div_grad/mulDtrain_4/gradients/dropout_4/dropout/div_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
м
6train_4/gradients/dropout_4/dropout/div_grad/Reshape_1Reshape2train_4/gradients/dropout_4/dropout/div_grad/Sum_14train_4/gradients/dropout_4/dropout/div_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
Е
=train_4/gradients/dropout_4/dropout/div_grad/tuple/group_depsNoOp5^train_4/gradients/dropout_4/dropout/div_grad/Reshape7^train_4/gradients/dropout_4/dropout/div_grad/Reshape_1
У
Etrain_4/gradients/dropout_4/dropout/div_grad/tuple/control_dependencyIdentity4train_4/gradients/dropout_4/dropout/div_grad/Reshape>^train_4/gradients/dropout_4/dropout/div_grad/tuple/group_deps*
T0*G
_class=
;9loc:@train_4/gradients/dropout_4/dropout/div_grad/Reshape*(
_output_shapes
:џџџџџџџџџє
Й
Gtrain_4/gradients/dropout_4/dropout/div_grad/tuple/control_dependency_1Identity6train_4/gradients/dropout_4/dropout/div_grad/Reshape_1>^train_4/gradients/dropout_4/dropout/div_grad/tuple/group_deps*
T0*I
_class?
=;loc:@train_4/gradients/dropout_4/dropout/div_grad/Reshape_1*
_output_shapes
:
Ю
3train_4/gradients/layer1_4/activation_grad/ReluGradReluGradEtrain_4/gradients/dropout_4/dropout/div_grad/tuple/control_dependencylayer1_4/activation*
T0*(
_output_shapes
:џџџџџџџџџє

3train_4/gradients/layer1_4/Wx_plus_b/add_grad/ShapeShapelayer1_4/Wx_plus_b/MatMul*
T0*
out_type0*
_output_shapes
:

5train_4/gradients/layer1_4/Wx_plus_b/add_grad/Shape_1Const*
valueB:є*
dtype0*
_output_shapes
:

Ctrain_4/gradients/layer1_4/Wx_plus_b/add_grad/BroadcastGradientArgsBroadcastGradientArgs3train_4/gradients/layer1_4/Wx_plus_b/add_grad/Shape5train_4/gradients/layer1_4/Wx_plus_b/add_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
ђ
1train_4/gradients/layer1_4/Wx_plus_b/add_grad/SumSum3train_4/gradients/layer1_4/activation_grad/ReluGradCtrain_4/gradients/layer1_4/Wx_plus_b/add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
щ
5train_4/gradients/layer1_4/Wx_plus_b/add_grad/ReshapeReshape1train_4/gradients/layer1_4/Wx_plus_b/add_grad/Sum3train_4/gradients/layer1_4/Wx_plus_b/add_grad/Shape*
T0*
Tshape0*(
_output_shapes
:џџџџџџџџџє
і
3train_4/gradients/layer1_4/Wx_plus_b/add_grad/Sum_1Sum3train_4/gradients/layer1_4/activation_grad/ReluGradEtrain_4/gradients/layer1_4/Wx_plus_b/add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
т
7train_4/gradients/layer1_4/Wx_plus_b/add_grad/Reshape_1Reshape3train_4/gradients/layer1_4/Wx_plus_b/add_grad/Sum_15train_4/gradients/layer1_4/Wx_plus_b/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes	
:є
И
>train_4/gradients/layer1_4/Wx_plus_b/add_grad/tuple/group_depsNoOp6^train_4/gradients/layer1_4/Wx_plus_b/add_grad/Reshape8^train_4/gradients/layer1_4/Wx_plus_b/add_grad/Reshape_1
Ч
Ftrain_4/gradients/layer1_4/Wx_plus_b/add_grad/tuple/control_dependencyIdentity5train_4/gradients/layer1_4/Wx_plus_b/add_grad/Reshape?^train_4/gradients/layer1_4/Wx_plus_b/add_grad/tuple/group_deps*
T0*H
_class>
<:loc:@train_4/gradients/layer1_4/Wx_plus_b/add_grad/Reshape*(
_output_shapes
:џџџџџџџџџє
Р
Htrain_4/gradients/layer1_4/Wx_plus_b/add_grad/tuple/control_dependency_1Identity7train_4/gradients/layer1_4/Wx_plus_b/add_grad/Reshape_1?^train_4/gradients/layer1_4/Wx_plus_b/add_grad/tuple/group_deps*
T0*J
_class@
><loc:@train_4/gradients/layer1_4/Wx_plus_b/add_grad/Reshape_1*
_output_shapes	
:є

7train_4/gradients/layer1_4/Wx_plus_b/MatMul_grad/MatMulMatMulFtrain_4/gradients/layer1_4/Wx_plus_b/add_grad/tuple/control_dependencylayer1_4/weights/Variable/read*
transpose_a( *
transpose_b(*
T0*(
_output_shapes
:џџџџџџџџџ
э
9train_4/gradients/layer1_4/Wx_plus_b/MatMul_grad/MatMul_1MatMulinput_5/x-inputFtrain_4/gradients/layer1_4/Wx_plus_b/add_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0* 
_output_shapes
:
є
П
Atrain_4/gradients/layer1_4/Wx_plus_b/MatMul_grad/tuple/group_depsNoOp8^train_4/gradients/layer1_4/Wx_plus_b/MatMul_grad/MatMul:^train_4/gradients/layer1_4/Wx_plus_b/MatMul_grad/MatMul_1
б
Itrain_4/gradients/layer1_4/Wx_plus_b/MatMul_grad/tuple/control_dependencyIdentity7train_4/gradients/layer1_4/Wx_plus_b/MatMul_grad/MatMulB^train_4/gradients/layer1_4/Wx_plus_b/MatMul_grad/tuple/group_deps*
T0*J
_class@
><loc:@train_4/gradients/layer1_4/Wx_plus_b/MatMul_grad/MatMul*(
_output_shapes
:џџџџџџџџџ
Я
Ktrain_4/gradients/layer1_4/Wx_plus_b/MatMul_grad/tuple/control_dependency_1Identity9train_4/gradients/layer1_4/Wx_plus_b/MatMul_grad/MatMul_1B^train_4/gradients/layer1_4/Wx_plus_b/MatMul_grad/tuple/group_deps*
T0*L
_classB
@>loc:@train_4/gradients/layer1_4/Wx_plus_b/MatMul_grad/MatMul_1* 
_output_shapes
:
є

!train_4/beta1_power/initial_valueConst*
valueB
 *fff?*
dtype0*+
_class!
loc:@layer1_4/biases/Variable*
_output_shapes
: 
Є
train_4/beta1_power
VariableV2*
shape: *
dtype0*
	container *
shared_name *+
_class!
loc:@layer1_4/biases/Variable*
_output_shapes
: 
г
train_4/beta1_power/AssignAssigntrain_4/beta1_power!train_4/beta1_power/initial_value*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@layer1_4/biases/Variable*
_output_shapes
: 

train_4/beta1_power/readIdentitytrain_4/beta1_power*
T0*+
_class!
loc:@layer1_4/biases/Variable*
_output_shapes
: 

!train_4/beta2_power/initial_valueConst*
valueB
 *wО?*
dtype0*+
_class!
loc:@layer1_4/biases/Variable*
_output_shapes
: 
Є
train_4/beta2_power
VariableV2*
shape: *
dtype0*
	container *
shared_name *+
_class!
loc:@layer1_4/biases/Variable*
_output_shapes
: 
г
train_4/beta2_power/AssignAssigntrain_4/beta2_power!train_4/beta2_power/initial_value*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@layer1_4/biases/Variable*
_output_shapes
: 

train_4/beta2_power/readIdentitytrain_4/beta2_power*
T0*+
_class!
loc:@layer1_4/biases/Variable*
_output_shapes
: 
З
0layer1_4/weights/Variable/Adam/Initializer/zerosConst*
valueB
є*    *
dtype0*,
_class"
 loc:@layer1_4/weights/Variable* 
_output_shapes
:
є
Ф
layer1_4/weights/Variable/Adam
VariableV2*
shape:
є*
dtype0*
	container *
shared_name *,
_class"
 loc:@layer1_4/weights/Variable* 
_output_shapes
:
є

%layer1_4/weights/Variable/Adam/AssignAssignlayer1_4/weights/Variable/Adam0layer1_4/weights/Variable/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@layer1_4/weights/Variable* 
_output_shapes
:
є
Ј
#layer1_4/weights/Variable/Adam/readIdentitylayer1_4/weights/Variable/Adam*
T0*,
_class"
 loc:@layer1_4/weights/Variable* 
_output_shapes
:
є
Й
2layer1_4/weights/Variable/Adam_1/Initializer/zerosConst*
valueB
є*    *
dtype0*,
_class"
 loc:@layer1_4/weights/Variable* 
_output_shapes
:
є
Ц
 layer1_4/weights/Variable/Adam_1
VariableV2*
shape:
є*
dtype0*
	container *
shared_name *,
_class"
 loc:@layer1_4/weights/Variable* 
_output_shapes
:
є

'layer1_4/weights/Variable/Adam_1/AssignAssign layer1_4/weights/Variable/Adam_12layer1_4/weights/Variable/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@layer1_4/weights/Variable* 
_output_shapes
:
є
Ќ
%layer1_4/weights/Variable/Adam_1/readIdentity layer1_4/weights/Variable/Adam_1*
T0*,
_class"
 loc:@layer1_4/weights/Variable* 
_output_shapes
:
є
Ћ
/layer1_4/biases/Variable/Adam/Initializer/zerosConst*
valueBє*    *
dtype0*+
_class!
loc:@layer1_4/biases/Variable*
_output_shapes	
:є
И
layer1_4/biases/Variable/Adam
VariableV2*
shape:є*
dtype0*
	container *
shared_name *+
_class!
loc:@layer1_4/biases/Variable*
_output_shapes	
:є
њ
$layer1_4/biases/Variable/Adam/AssignAssignlayer1_4/biases/Variable/Adam/layer1_4/biases/Variable/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@layer1_4/biases/Variable*
_output_shapes	
:є
 
"layer1_4/biases/Variable/Adam/readIdentitylayer1_4/biases/Variable/Adam*
T0*+
_class!
loc:@layer1_4/biases/Variable*
_output_shapes	
:є
­
1layer1_4/biases/Variable/Adam_1/Initializer/zerosConst*
valueBє*    *
dtype0*+
_class!
loc:@layer1_4/biases/Variable*
_output_shapes	
:є
К
layer1_4/biases/Variable/Adam_1
VariableV2*
shape:є*
dtype0*
	container *
shared_name *+
_class!
loc:@layer1_4/biases/Variable*
_output_shapes	
:є

&layer1_4/biases/Variable/Adam_1/AssignAssignlayer1_4/biases/Variable/Adam_11layer1_4/biases/Variable/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@layer1_4/biases/Variable*
_output_shapes	
:є
Є
$layer1_4/biases/Variable/Adam_1/readIdentitylayer1_4/biases/Variable/Adam_1*
T0*+
_class!
loc:@layer1_4/biases/Variable*
_output_shapes	
:є
Е
0layer2_4/weights/Variable/Adam/Initializer/zerosConst*
valueB	є
*    *
dtype0*,
_class"
 loc:@layer2_4/weights/Variable*
_output_shapes
:	є

Т
layer2_4/weights/Variable/Adam
VariableV2*
shape:	є
*
dtype0*
	container *
shared_name *,
_class"
 loc:@layer2_4/weights/Variable*
_output_shapes
:	є


%layer2_4/weights/Variable/Adam/AssignAssignlayer2_4/weights/Variable/Adam0layer2_4/weights/Variable/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@layer2_4/weights/Variable*
_output_shapes
:	є

Ї
#layer2_4/weights/Variable/Adam/readIdentitylayer2_4/weights/Variable/Adam*
T0*,
_class"
 loc:@layer2_4/weights/Variable*
_output_shapes
:	є

З
2layer2_4/weights/Variable/Adam_1/Initializer/zerosConst*
valueB	є
*    *
dtype0*,
_class"
 loc:@layer2_4/weights/Variable*
_output_shapes
:	є

Ф
 layer2_4/weights/Variable/Adam_1
VariableV2*
shape:	є
*
dtype0*
	container *
shared_name *,
_class"
 loc:@layer2_4/weights/Variable*
_output_shapes
:	є


'layer2_4/weights/Variable/Adam_1/AssignAssign layer2_4/weights/Variable/Adam_12layer2_4/weights/Variable/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@layer2_4/weights/Variable*
_output_shapes
:	є

Ћ
%layer2_4/weights/Variable/Adam_1/readIdentity layer2_4/weights/Variable/Adam_1*
T0*,
_class"
 loc:@layer2_4/weights/Variable*
_output_shapes
:	є

Љ
/layer2_4/biases/Variable/Adam/Initializer/zerosConst*
valueB
*    *
dtype0*+
_class!
loc:@layer2_4/biases/Variable*
_output_shapes
:

Ж
layer2_4/biases/Variable/Adam
VariableV2*
shape:
*
dtype0*
	container *
shared_name *+
_class!
loc:@layer2_4/biases/Variable*
_output_shapes
:

љ
$layer2_4/biases/Variable/Adam/AssignAssignlayer2_4/biases/Variable/Adam/layer2_4/biases/Variable/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@layer2_4/biases/Variable*
_output_shapes
:


"layer2_4/biases/Variable/Adam/readIdentitylayer2_4/biases/Variable/Adam*
T0*+
_class!
loc:@layer2_4/biases/Variable*
_output_shapes
:

Ћ
1layer2_4/biases/Variable/Adam_1/Initializer/zerosConst*
valueB
*    *
dtype0*+
_class!
loc:@layer2_4/biases/Variable*
_output_shapes
:

И
layer2_4/biases/Variable/Adam_1
VariableV2*
shape:
*
dtype0*
	container *
shared_name *+
_class!
loc:@layer2_4/biases/Variable*
_output_shapes
:

џ
&layer2_4/biases/Variable/Adam_1/AssignAssignlayer2_4/biases/Variable/Adam_11layer2_4/biases/Variable/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@layer2_4/biases/Variable*
_output_shapes
:

Ѓ
$layer2_4/biases/Variable/Adam_1/readIdentitylayer2_4/biases/Variable/Adam_1*
T0*+
_class!
loc:@layer2_4/biases/Variable*
_output_shapes
:

_
train_4/Adam/learning_rateConst*
valueB
 *o:*
dtype0*
_output_shapes
: 
W
train_4/Adam/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
W
train_4/Adam/beta2Const*
valueB
 *wО?*
dtype0*
_output_shapes
: 
Y
train_4/Adam/epsilonConst*
valueB
 *wЬ+2*
dtype0*
_output_shapes
: 
ќ
7train_4/Adam/update_layer1_4/weights/Variable/ApplyAdam	ApplyAdamlayer1_4/weights/Variablelayer1_4/weights/Variable/Adam layer1_4/weights/Variable/Adam_1train_4/beta1_power/readtrain_4/beta2_power/readtrain_4/Adam/learning_ratetrain_4/Adam/beta1train_4/Adam/beta2train_4/Adam/epsilonKtrain_4/gradients/layer1_4/Wx_plus_b/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *,
_class"
 loc:@layer1_4/weights/Variable* 
_output_shapes
:
є
я
6train_4/Adam/update_layer1_4/biases/Variable/ApplyAdam	ApplyAdamlayer1_4/biases/Variablelayer1_4/biases/Variable/Adamlayer1_4/biases/Variable/Adam_1train_4/beta1_power/readtrain_4/beta2_power/readtrain_4/Adam/learning_ratetrain_4/Adam/beta1train_4/Adam/beta2train_4/Adam/epsilonHtrain_4/gradients/layer1_4/Wx_plus_b/add_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *+
_class!
loc:@layer1_4/biases/Variable*
_output_shapes	
:є
ћ
7train_4/Adam/update_layer2_4/weights/Variable/ApplyAdam	ApplyAdamlayer2_4/weights/Variablelayer2_4/weights/Variable/Adam layer2_4/weights/Variable/Adam_1train_4/beta1_power/readtrain_4/beta2_power/readtrain_4/Adam/learning_ratetrain_4/Adam/beta1train_4/Adam/beta2train_4/Adam/epsilonKtrain_4/gradients/layer2_4/Wx_plus_b/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *,
_class"
 loc:@layer2_4/weights/Variable*
_output_shapes
:	є

ю
6train_4/Adam/update_layer2_4/biases/Variable/ApplyAdam	ApplyAdamlayer2_4/biases/Variablelayer2_4/biases/Variable/Adamlayer2_4/biases/Variable/Adam_1train_4/beta1_power/readtrain_4/beta2_power/readtrain_4/Adam/learning_ratetrain_4/Adam/beta1train_4/Adam/beta2train_4/Adam/epsilonHtrain_4/gradients/layer2_4/Wx_plus_b/add_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *+
_class!
loc:@layer2_4/biases/Variable*
_output_shapes
:

љ
train_4/Adam/mulMultrain_4/beta1_power/readtrain_4/Adam/beta18^train_4/Adam/update_layer1_4/weights/Variable/ApplyAdam7^train_4/Adam/update_layer1_4/biases/Variable/ApplyAdam8^train_4/Adam/update_layer2_4/weights/Variable/ApplyAdam7^train_4/Adam/update_layer2_4/biases/Variable/ApplyAdam*
T0*+
_class!
loc:@layer1_4/biases/Variable*
_output_shapes
: 
Л
train_4/Adam/AssignAssigntrain_4/beta1_powertrain_4/Adam/mul*
T0*
validate_shape(*
use_locking( *+
_class!
loc:@layer1_4/biases/Variable*
_output_shapes
: 
ћ
train_4/Adam/mul_1Multrain_4/beta2_power/readtrain_4/Adam/beta28^train_4/Adam/update_layer1_4/weights/Variable/ApplyAdam7^train_4/Adam/update_layer1_4/biases/Variable/ApplyAdam8^train_4/Adam/update_layer2_4/weights/Variable/ApplyAdam7^train_4/Adam/update_layer2_4/biases/Variable/ApplyAdam*
T0*+
_class!
loc:@layer1_4/biases/Variable*
_output_shapes
: 
П
train_4/Adam/Assign_1Assigntrain_4/beta2_powertrain_4/Adam/mul_1*
T0*
validate_shape(*
use_locking( *+
_class!
loc:@layer1_4/biases/Variable*
_output_shapes
: 
Ј
train_4/AdamNoOp8^train_4/Adam/update_layer1_4/weights/Variable/ApplyAdam7^train_4/Adam/update_layer1_4/biases/Variable/ApplyAdam8^train_4/Adam/update_layer2_4/weights/Variable/ApplyAdam7^train_4/Adam/update_layer2_4/biases/Variable/ApplyAdam^train_4/Adam/Assign^train_4/Adam/Assign_1
p
.accuracy_8/correct_prediction/ArgMax/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
Р
$accuracy_8/correct_prediction/ArgMaxArgMaxlayer2_4/activation.accuracy_8/correct_prediction/ArgMax/dimension*
T0*

Tidx0*
output_type0	*#
_output_shapes
:џџџџџџџџџ

#accuracy_8/correct_prediction/EqualEqual$accuracy_8/correct_prediction/ArgMaxinput_5/y-input*
T0	*#
_output_shapes
:џџџџџџџџџ

accuracy_8/accuracy/CastCast#accuracy_8/correct_prediction/Equal*

SrcT0
*

DstT0*#
_output_shapes
:џџџџџџџџџ
c
accuracy_8/accuracy/ConstConst*
valueB: *
dtype0*
_output_shapes
:

accuracy_8/accuracy/MeanMeanaccuracy_8/accuracy/Castaccuracy_8/accuracy/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
Z
accuracy_9/tagsConst*
valueB B
accuracy_9*
dtype0*
_output_shapes
: 
g

accuracy_9ScalarSummaryaccuracy_9/tagsaccuracy_8/accuracy/Mean*
T0*
_output_shapes
: 
у"
Merge_4/MergeSummaryMergeSummaryinput_reshape/inputinput_reshape_1/inputlayer1/weights/summaries/mean!layer1/weights/summaries/stddev_1layer1/weights/summaries/maxlayer1/weights/summaries/min"layer1/weights/summaries/histogramlayer1/biases/summaries/mean layer1/biases/summaries/stddev_1layer1/biases/summaries/maxlayer1/biases/summaries/min!layer1/biases/summaries/histogram layer1/Wx_plus_b/pre_activationslayer1/activations dropout/dropout_keep_probabilitylayer2/weights/summaries/mean!layer2/weights/summaries/stddev_1layer2/weights/summaries/maxlayer2/weights/summaries/min"layer2/weights/summaries/histogramlayer2/biases/summaries/mean layer2/biases/summaries/stddev_1layer2/biases/summaries/maxlayer2/biases/summaries/min!layer2/biases/summaries/histogram layer2/Wx_plus_b/pre_activationslayer2/activationscross_entropy_1
accuracy_1input_reshape_2/inputlayer1_1/weights/summaries/mean#layer1_1/weights/summaries/stddev_1layer1_1/weights/summaries/maxlayer1_1/weights/summaries/min$layer1_1/weights/summaries/histogramlayer1_1/biases/summaries/mean"layer1_1/biases/summaries/stddev_1layer1_1/biases/summaries/maxlayer1_1/biases/summaries/min#layer1_1/biases/summaries/histogram"layer1_1/Wx_plus_b/pre_activationslayer1_1/activations"dropout_1/dropout_keep_probabilitylayer2_1/weights/summaries/mean#layer2_1/weights/summaries/stddev_1layer2_1/weights/summaries/maxlayer2_1/weights/summaries/min$layer2_1/weights/summaries/histogramlayer2_1/biases/summaries/mean"layer2_1/biases/summaries/stddev_1layer2_1/biases/summaries/maxlayer2_1/biases/summaries/min#layer2_1/biases/summaries/histogram"layer2_1/Wx_plus_b/pre_activationslayer2_1/activationscross_entropy_3
accuracy_3input_reshape_3/inputlayer1_2/weights/summaries/mean#layer1_2/weights/summaries/stddev_1layer1_2/weights/summaries/maxlayer1_2/weights/summaries/min$layer1_2/weights/summaries/histogramlayer1_2/biases/summaries/mean"layer1_2/biases/summaries/stddev_1layer1_2/biases/summaries/maxlayer1_2/biases/summaries/min#layer1_2/biases/summaries/histogram"layer1_2/Wx_plus_b/pre_activationslayer1_2/activations"dropout_2/dropout_keep_probabilitylayer2_2/weights/summaries/mean#layer2_2/weights/summaries/stddev_1layer2_2/weights/summaries/maxlayer2_2/weights/summaries/min$layer2_2/weights/summaries/histogramlayer2_2/biases/summaries/mean"layer2_2/biases/summaries/stddev_1layer2_2/biases/summaries/maxlayer2_2/biases/summaries/min#layer2_2/biases/summaries/histogram"layer2_2/Wx_plus_b/pre_activationslayer2_2/activationscross_entropy_5
accuracy_5input_reshape_4/inputlayer1_3/weights/summaries/mean#layer1_3/weights/summaries/stddev_1layer1_3/weights/summaries/maxlayer1_3/weights/summaries/min$layer1_3/weights/summaries/histogramlayer1_3/biases/summaries/mean"layer1_3/biases/summaries/stddev_1layer1_3/biases/summaries/maxlayer1_3/biases/summaries/min#layer1_3/biases/summaries/histogram"layer1_3/Wx_plus_b/pre_activationslayer1_3/activations"dropout_3/dropout_keep_probabilitylayer2_3/weights/summaries/mean#layer2_3/weights/summaries/stddev_1layer2_3/weights/summaries/maxlayer2_3/weights/summaries/min$layer2_3/weights/summaries/histogramlayer2_3/biases/summaries/mean"layer2_3/biases/summaries/stddev_1layer2_3/biases/summaries/maxlayer2_3/biases/summaries/min#layer2_3/biases/summaries/histogram"layer2_3/Wx_plus_b/pre_activationslayer2_3/activationscross_entropy_7
accuracy_7input_reshape_5/inputlayer1_4/weights/summaries/mean#layer1_4/weights/summaries/stddev_1layer1_4/weights/summaries/maxlayer1_4/weights/summaries/min$layer1_4/weights/summaries/histogramlayer1_4/biases/summaries/mean"layer1_4/biases/summaries/stddev_1layer1_4/biases/summaries/maxlayer1_4/biases/summaries/min#layer1_4/biases/summaries/histogram"layer1_4/Wx_plus_b/pre_activationslayer1_4/activations"dropout_4/dropout_keep_probabilitylayer2_4/weights/summaries/mean#layer2_4/weights/summaries/stddev_1layer2_4/weights/summaries/maxlayer2_4/weights/summaries/min$layer2_4/weights/summaries/histogramlayer2_4/biases/summaries/mean"layer2_4/biases/summaries/stddev_1layer2_4/biases/summaries/maxlayer2_4/biases/summaries/min#layer2_4/biases/summaries/histogram"layer2_4/Wx_plus_b/pre_activationslayer2_4/activationscross_entropy_9
accuracy_9*
N*
_output_shapes
: "FSxT"     EL	ЪrQТажAJЧФ
Е
:
Add
x"T
y"T
z"T"
Ttype:
2	
ю
	ApplyAdam
var"T	
m"T	
v"T
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"T" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 

ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
8
Const
output"dtype"
valuetensor"
dtypetype
B
Equal
x"T
y"T
z
"
Ttype:
2	

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
4
Fill
dims

value"T
output"T"	
Ttype
,
Floor
x"T
y"T"
Ttype:
2
=
Greater
x"T
y"T
z
"
Ttype:
2	
V
HistogramSummary
tag
values"T
summary"
Ttype0:
2	
.
Identity

input"T
output"T"	
Ttype

ImageSummary
tag
tensor"T
summary"

max_imagesint(0"
Ttype0:
2"'
	bad_colortensorB:џ  џ
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2

Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
8
MergeSummary
inputs*N
summary"
Nint(0

Min

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
L
PreventGradient

input"T
output"T"	
Ttype"
messagestring 
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
D
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
P
ScalarSummary
tags
values"T
summary"
Ttype:
2	
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	

#SparseSoftmaxCrossEntropyWithLogits
features"T
labels"Tlabels	
loss"T
backprop"T"
Ttype:
2"
Tlabelstype0	:
2	
-
Sqrt
x"T
y"T"
Ttype:

2
1
Square
x"T
y"T"
Ttype:

2	
:
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	

TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring 
&
	ZerosLike
x"T
y"T"	
Ttype*1.5.02v1.5.0-0-g37aa430d84Ю
r
input/x-inputPlaceholder*
dtype0*
shape:џџџџџџџџџ*(
_output_shapes
:џџџџџџџџџ
h
input/y-inputPlaceholder*
dtype0	*
shape:џџџџџџџџџ*#
_output_shapes
:џџџџџџџџџ
t
input_reshape/Reshape/shapeConst*%
valueB"џџџџ         *
dtype0*
_output_shapes
:

input_reshape/ReshapeReshapeinput/x-inputinput_reshape/Reshape/shape*
T0*
Tshape0*/
_output_shapes
:џџџџџџџџџ
k
input_reshape/input/tagConst*$
valueB Binput_reshape/input*
dtype0*
_output_shapes
: 
Ї
input_reshape/inputImageSummaryinput_reshape/input/taginput_reshape/Reshape*

max_images
*
T0*
	bad_colorB:џ  џ*
_output_shapes
: 
t
input_1/x-inputPlaceholder*
dtype0*
shape:џџџџџџџџџ*(
_output_shapes
:џџџџџџџџџ
j
input_1/y-inputPlaceholder*
dtype0	*
shape:џџџџџџџџџ*#
_output_shapes
:џџџџџџџџџ
v
input_reshape_1/Reshape/shapeConst*%
valueB"џџџџ         *
dtype0*
_output_shapes
:

input_reshape_1/ReshapeReshapeinput_1/x-inputinput_reshape_1/Reshape/shape*
T0*
Tshape0*/
_output_shapes
:џџџџџџџџџ
o
input_reshape_1/input/tagConst*&
valueB Binput_reshape_1/input*
dtype0*
_output_shapes
: 
­
input_reshape_1/inputImageSummaryinput_reshape_1/input/taginput_reshape_1/Reshape*

max_images
*
T0*
	bad_colorB:џ  џ*
_output_shapes
: 
v
%layer1/weights/truncated_normal/shapeConst*
valueB"  є  *
dtype0*
_output_shapes
:
i
$layer1/weights/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
k
&layer1/weights/truncated_normal/stddevConst*
valueB
 *ЭЬЬ=*
dtype0*
_output_shapes
: 
К
/layer1/weights/truncated_normal/TruncatedNormalTruncatedNormal%layer1/weights/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0* 
_output_shapes
:
є
Ў
#layer1/weights/truncated_normal/mulMul/layer1/weights/truncated_normal/TruncatedNormal&layer1/weights/truncated_normal/stddev*
T0* 
_output_shapes
:
є

layer1/weights/truncated_normalAdd#layer1/weights/truncated_normal/mul$layer1/weights/truncated_normal/mean*
T0* 
_output_shapes
:
є

layer1/weights/Variable
VariableV2*
shape:
є*
dtype0*
	container *
shared_name * 
_output_shapes
:
є
т
layer1/weights/Variable/AssignAssignlayer1/weights/Variablelayer1/weights/truncated_normal*
T0*
validate_shape(*
use_locking(**
_class 
loc:@layer1/weights/Variable* 
_output_shapes
:
є

layer1/weights/Variable/readIdentitylayer1/weights/Variable*
T0**
_class 
loc:@layer1/weights/Variable* 
_output_shapes
:
є
_
layer1/weights/summaries/RankConst*
value	B :*
dtype0*
_output_shapes
: 
f
$layer1/weights/summaries/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
f
$layer1/weights/summaries/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
К
layer1/weights/summaries/rangeRange$layer1/weights/summaries/range/startlayer1/weights/summaries/Rank$layer1/weights/summaries/range/delta*

Tidx0*
_output_shapes
:
Ё
layer1/weights/summaries/MeanMeanlayer1/weights/Variable/readlayer1/weights/summaries/range*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

"layer1/weights/summaries/mean/tagsConst*.
value%B# Blayer1/weights/summaries/mean*
dtype0*
_output_shapes
: 

layer1/weights/summaries/meanScalarSummary"layer1/weights/summaries/mean/tagslayer1/weights/summaries/Mean*
T0*
_output_shapes
: 

#layer1/weights/summaries/stddev/subSublayer1/weights/Variable/readlayer1/weights/summaries/Mean*
T0* 
_output_shapes
:
є

&layer1/weights/summaries/stddev/SquareSquare#layer1/weights/summaries/stddev/sub*
T0* 
_output_shapes
:
є
v
%layer1/weights/summaries/stddev/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
Й
$layer1/weights/summaries/stddev/MeanMean&layer1/weights/summaries/stddev/Square%layer1/weights/summaries/stddev/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
s
$layer1/weights/summaries/stddev/SqrtSqrt$layer1/weights/summaries/stddev/Mean*
T0*
_output_shapes
: 

&layer1/weights/summaries/stddev_1/tagsConst*2
value)B' B!layer1/weights/summaries/stddev_1*
dtype0*
_output_shapes
: 
Ё
!layer1/weights/summaries/stddev_1ScalarSummary&layer1/weights/summaries/stddev_1/tags$layer1/weights/summaries/stddev/Sqrt*
T0*
_output_shapes
: 
a
layer1/weights/summaries/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
h
&layer1/weights/summaries/range_1/startConst*
value	B : *
dtype0*
_output_shapes
: 
h
&layer1/weights/summaries/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Т
 layer1/weights/summaries/range_1Range&layer1/weights/summaries/range_1/startlayer1/weights/summaries/Rank_1&layer1/weights/summaries/range_1/delta*

Tidx0*
_output_shapes
:
Ё
layer1/weights/summaries/MaxMaxlayer1/weights/Variable/read layer1/weights/summaries/range_1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
~
!layer1/weights/summaries/max/tagsConst*-
value$B" Blayer1/weights/summaries/max*
dtype0*
_output_shapes
: 

layer1/weights/summaries/maxScalarSummary!layer1/weights/summaries/max/tagslayer1/weights/summaries/Max*
T0*
_output_shapes
: 
a
layer1/weights/summaries/Rank_2Const*
value	B :*
dtype0*
_output_shapes
: 
h
&layer1/weights/summaries/range_2/startConst*
value	B : *
dtype0*
_output_shapes
: 
h
&layer1/weights/summaries/range_2/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Т
 layer1/weights/summaries/range_2Range&layer1/weights/summaries/range_2/startlayer1/weights/summaries/Rank_2&layer1/weights/summaries/range_2/delta*

Tidx0*
_output_shapes
:
Ё
layer1/weights/summaries/MinMinlayer1/weights/Variable/read layer1/weights/summaries/range_2*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
~
!layer1/weights/summaries/min/tagsConst*-
value$B" Blayer1/weights/summaries/min*
dtype0*
_output_shapes
: 

layer1/weights/summaries/minScalarSummary!layer1/weights/summaries/min/tagslayer1/weights/summaries/Min*
T0*
_output_shapes
: 

&layer1/weights/summaries/histogram/tagConst*3
value*B( B"layer1/weights/summaries/histogram*
dtype0*
_output_shapes
: 

"layer1/weights/summaries/histogramHistogramSummary&layer1/weights/summaries/histogram/taglayer1/weights/Variable/read*
T0*
_output_shapes
: 
b
layer1/biases/ConstConst*
valueBє*ЭЬЬ=*
dtype0*
_output_shapes	
:є

layer1/biases/Variable
VariableV2*
shape:є*
dtype0*
	container *
shared_name *
_output_shapes	
:є
Ю
layer1/biases/Variable/AssignAssignlayer1/biases/Variablelayer1/biases/Const*
T0*
validate_shape(*
use_locking(*)
_class
loc:@layer1/biases/Variable*
_output_shapes	
:є

layer1/biases/Variable/readIdentitylayer1/biases/Variable*
T0*)
_class
loc:@layer1/biases/Variable*
_output_shapes	
:є
^
layer1/biases/summaries/RankConst*
value	B :*
dtype0*
_output_shapes
: 
e
#layer1/biases/summaries/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
e
#layer1/biases/summaries/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ж
layer1/biases/summaries/rangeRange#layer1/biases/summaries/range/startlayer1/biases/summaries/Rank#layer1/biases/summaries/range/delta*

Tidx0*
_output_shapes
:

layer1/biases/summaries/MeanMeanlayer1/biases/Variable/readlayer1/biases/summaries/range*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
~
!layer1/biases/summaries/mean/tagsConst*-
value$B" Blayer1/biases/summaries/mean*
dtype0*
_output_shapes
: 

layer1/biases/summaries/meanScalarSummary!layer1/biases/summaries/mean/tagslayer1/biases/summaries/Mean*
T0*
_output_shapes
: 

"layer1/biases/summaries/stddev/subSublayer1/biases/Variable/readlayer1/biases/summaries/Mean*
T0*
_output_shapes	
:є
y
%layer1/biases/summaries/stddev/SquareSquare"layer1/biases/summaries/stddev/sub*
T0*
_output_shapes	
:є
n
$layer1/biases/summaries/stddev/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Ж
#layer1/biases/summaries/stddev/MeanMean%layer1/biases/summaries/stddev/Square$layer1/biases/summaries/stddev/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
q
#layer1/biases/summaries/stddev/SqrtSqrt#layer1/biases/summaries/stddev/Mean*
T0*
_output_shapes
: 

%layer1/biases/summaries/stddev_1/tagsConst*1
value(B& B layer1/biases/summaries/stddev_1*
dtype0*
_output_shapes
: 

 layer1/biases/summaries/stddev_1ScalarSummary%layer1/biases/summaries/stddev_1/tags#layer1/biases/summaries/stddev/Sqrt*
T0*
_output_shapes
: 
`
layer1/biases/summaries/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
g
%layer1/biases/summaries/range_1/startConst*
value	B : *
dtype0*
_output_shapes
: 
g
%layer1/biases/summaries/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
О
layer1/biases/summaries/range_1Range%layer1/biases/summaries/range_1/startlayer1/biases/summaries/Rank_1%layer1/biases/summaries/range_1/delta*

Tidx0*
_output_shapes
:

layer1/biases/summaries/MaxMaxlayer1/biases/Variable/readlayer1/biases/summaries/range_1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
|
 layer1/biases/summaries/max/tagsConst*,
value#B! Blayer1/biases/summaries/max*
dtype0*
_output_shapes
: 

layer1/biases/summaries/maxScalarSummary layer1/biases/summaries/max/tagslayer1/biases/summaries/Max*
T0*
_output_shapes
: 
`
layer1/biases/summaries/Rank_2Const*
value	B :*
dtype0*
_output_shapes
: 
g
%layer1/biases/summaries/range_2/startConst*
value	B : *
dtype0*
_output_shapes
: 
g
%layer1/biases/summaries/range_2/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
О
layer1/biases/summaries/range_2Range%layer1/biases/summaries/range_2/startlayer1/biases/summaries/Rank_2%layer1/biases/summaries/range_2/delta*

Tidx0*
_output_shapes
:

layer1/biases/summaries/MinMinlayer1/biases/Variable/readlayer1/biases/summaries/range_2*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
|
 layer1/biases/summaries/min/tagsConst*,
value#B! Blayer1/biases/summaries/min*
dtype0*
_output_shapes
: 

layer1/biases/summaries/minScalarSummary layer1/biases/summaries/min/tagslayer1/biases/summaries/Min*
T0*
_output_shapes
: 

%layer1/biases/summaries/histogram/tagConst*2
value)B' B!layer1/biases/summaries/histogram*
dtype0*
_output_shapes
: 

!layer1/biases/summaries/histogramHistogramSummary%layer1/biases/summaries/histogram/taglayer1/biases/Variable/read*
T0*
_output_shapes
: 
Љ
layer1/Wx_plus_b/MatMulMatMulinput_1/x-inputlayer1/weights/Variable/read*
transpose_a( *
transpose_b( *
T0*(
_output_shapes
:џџџџџџџџџє

layer1/Wx_plus_b/addAddlayer1/Wx_plus_b/MatMullayer1/biases/Variable/read*
T0*(
_output_shapes
:џџџџџџџџџє

$layer1/Wx_plus_b/pre_activations/tagConst*1
value(B& B layer1/Wx_plus_b/pre_activations*
dtype0*
_output_shapes
: 

 layer1/Wx_plus_b/pre_activationsHistogramSummary$layer1/Wx_plus_b/pre_activations/taglayer1/Wx_plus_b/add*
T0*
_output_shapes
: 
b
layer1/activationRelulayer1/Wx_plus_b/add*
T0*(
_output_shapes
:џџџџџџџџџє
i
layer1/activations/tagConst*#
valueB Blayer1/activations*
dtype0*
_output_shapes
: 
r
layer1/activationsHistogramSummarylayer1/activations/taglayer1/activation*
T0*
_output_shapes
: 
X
dropout/PlaceholderPlaceholder*
dtype0*
shape:*
_output_shapes
:

%dropout/dropout_keep_probability/tagsConst*1
value(B& B dropout/dropout_keep_probability*
dtype0*
_output_shapes
: 

 dropout/dropout_keep_probabilityScalarSummary%dropout/dropout_keep_probability/tagsdropout/Placeholder*
T0*
_output_shapes
: 
f
dropout/dropout/ShapeShapelayer1/activation*
T0*
out_type0*
_output_shapes
:
g
"dropout/dropout/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: 
g
"dropout/dropout/random_uniform/maxConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
­
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape*

seed *
seed2 *
dtype0*
T0*(
_output_shapes
:џџџџџџџџџє

"dropout/dropout/random_uniform/subSub"dropout/dropout/random_uniform/max"dropout/dropout/random_uniform/min*
T0*
_output_shapes
: 
Ў
"dropout/dropout/random_uniform/mulMul,dropout/dropout/random_uniform/RandomUniform"dropout/dropout/random_uniform/sub*
T0*(
_output_shapes
:џџџџџџџџџє
 
dropout/dropout/random_uniformAdd"dropout/dropout/random_uniform/mul"dropout/dropout/random_uniform/min*
T0*(
_output_shapes
:џџџџџџџџџє
r
dropout/dropout/addAdddropout/Placeholderdropout/dropout/random_uniform*
T0*
_output_shapes
:
V
dropout/dropout/FloorFloordropout/dropout/add*
T0*
_output_shapes
:
i
dropout/dropout/divRealDivlayer1/activationdropout/Placeholder*
T0*
_output_shapes
:
y
dropout/dropout/mulMuldropout/dropout/divdropout/dropout/Floor*
T0*(
_output_shapes
:џџџџџџџџџє
v
%layer2/weights/truncated_normal/shapeConst*
valueB"є  
   *
dtype0*
_output_shapes
:
i
$layer2/weights/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
k
&layer2/weights/truncated_normal/stddevConst*
valueB
 *ЭЬЬ=*
dtype0*
_output_shapes
: 
Й
/layer2/weights/truncated_normal/TruncatedNormalTruncatedNormal%layer2/weights/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*
_output_shapes
:	є

­
#layer2/weights/truncated_normal/mulMul/layer2/weights/truncated_normal/TruncatedNormal&layer2/weights/truncated_normal/stddev*
T0*
_output_shapes
:	є


layer2/weights/truncated_normalAdd#layer2/weights/truncated_normal/mul$layer2/weights/truncated_normal/mean*
T0*
_output_shapes
:	є


layer2/weights/Variable
VariableV2*
shape:	є
*
dtype0*
	container *
shared_name *
_output_shapes
:	є

с
layer2/weights/Variable/AssignAssignlayer2/weights/Variablelayer2/weights/truncated_normal*
T0*
validate_shape(*
use_locking(**
_class 
loc:@layer2/weights/Variable*
_output_shapes
:	є


layer2/weights/Variable/readIdentitylayer2/weights/Variable*
T0**
_class 
loc:@layer2/weights/Variable*
_output_shapes
:	є

_
layer2/weights/summaries/RankConst*
value	B :*
dtype0*
_output_shapes
: 
f
$layer2/weights/summaries/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
f
$layer2/weights/summaries/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
К
layer2/weights/summaries/rangeRange$layer2/weights/summaries/range/startlayer2/weights/summaries/Rank$layer2/weights/summaries/range/delta*

Tidx0*
_output_shapes
:
Ё
layer2/weights/summaries/MeanMeanlayer2/weights/Variable/readlayer2/weights/summaries/range*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

"layer2/weights/summaries/mean/tagsConst*.
value%B# Blayer2/weights/summaries/mean*
dtype0*
_output_shapes
: 

layer2/weights/summaries/meanScalarSummary"layer2/weights/summaries/mean/tagslayer2/weights/summaries/Mean*
T0*
_output_shapes
: 

#layer2/weights/summaries/stddev/subSublayer2/weights/Variable/readlayer2/weights/summaries/Mean*
T0*
_output_shapes
:	є


&layer2/weights/summaries/stddev/SquareSquare#layer2/weights/summaries/stddev/sub*
T0*
_output_shapes
:	є

v
%layer2/weights/summaries/stddev/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
Й
$layer2/weights/summaries/stddev/MeanMean&layer2/weights/summaries/stddev/Square%layer2/weights/summaries/stddev/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
s
$layer2/weights/summaries/stddev/SqrtSqrt$layer2/weights/summaries/stddev/Mean*
T0*
_output_shapes
: 

&layer2/weights/summaries/stddev_1/tagsConst*2
value)B' B!layer2/weights/summaries/stddev_1*
dtype0*
_output_shapes
: 
Ё
!layer2/weights/summaries/stddev_1ScalarSummary&layer2/weights/summaries/stddev_1/tags$layer2/weights/summaries/stddev/Sqrt*
T0*
_output_shapes
: 
a
layer2/weights/summaries/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
h
&layer2/weights/summaries/range_1/startConst*
value	B : *
dtype0*
_output_shapes
: 
h
&layer2/weights/summaries/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Т
 layer2/weights/summaries/range_1Range&layer2/weights/summaries/range_1/startlayer2/weights/summaries/Rank_1&layer2/weights/summaries/range_1/delta*

Tidx0*
_output_shapes
:
Ё
layer2/weights/summaries/MaxMaxlayer2/weights/Variable/read layer2/weights/summaries/range_1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
~
!layer2/weights/summaries/max/tagsConst*-
value$B" Blayer2/weights/summaries/max*
dtype0*
_output_shapes
: 

layer2/weights/summaries/maxScalarSummary!layer2/weights/summaries/max/tagslayer2/weights/summaries/Max*
T0*
_output_shapes
: 
a
layer2/weights/summaries/Rank_2Const*
value	B :*
dtype0*
_output_shapes
: 
h
&layer2/weights/summaries/range_2/startConst*
value	B : *
dtype0*
_output_shapes
: 
h
&layer2/weights/summaries/range_2/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Т
 layer2/weights/summaries/range_2Range&layer2/weights/summaries/range_2/startlayer2/weights/summaries/Rank_2&layer2/weights/summaries/range_2/delta*

Tidx0*
_output_shapes
:
Ё
layer2/weights/summaries/MinMinlayer2/weights/Variable/read layer2/weights/summaries/range_2*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
~
!layer2/weights/summaries/min/tagsConst*-
value$B" Blayer2/weights/summaries/min*
dtype0*
_output_shapes
: 

layer2/weights/summaries/minScalarSummary!layer2/weights/summaries/min/tagslayer2/weights/summaries/Min*
T0*
_output_shapes
: 

&layer2/weights/summaries/histogram/tagConst*3
value*B( B"layer2/weights/summaries/histogram*
dtype0*
_output_shapes
: 

"layer2/weights/summaries/histogramHistogramSummary&layer2/weights/summaries/histogram/taglayer2/weights/Variable/read*
T0*
_output_shapes
: 
`
layer2/biases/ConstConst*
valueB
*ЭЬЬ=*
dtype0*
_output_shapes
:


layer2/biases/Variable
VariableV2*
shape:
*
dtype0*
	container *
shared_name *
_output_shapes
:

Э
layer2/biases/Variable/AssignAssignlayer2/biases/Variablelayer2/biases/Const*
T0*
validate_shape(*
use_locking(*)
_class
loc:@layer2/biases/Variable*
_output_shapes
:


layer2/biases/Variable/readIdentitylayer2/biases/Variable*
T0*)
_class
loc:@layer2/biases/Variable*
_output_shapes
:

^
layer2/biases/summaries/RankConst*
value	B :*
dtype0*
_output_shapes
: 
e
#layer2/biases/summaries/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
e
#layer2/biases/summaries/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ж
layer2/biases/summaries/rangeRange#layer2/biases/summaries/range/startlayer2/biases/summaries/Rank#layer2/biases/summaries/range/delta*

Tidx0*
_output_shapes
:

layer2/biases/summaries/MeanMeanlayer2/biases/Variable/readlayer2/biases/summaries/range*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
~
!layer2/biases/summaries/mean/tagsConst*-
value$B" Blayer2/biases/summaries/mean*
dtype0*
_output_shapes
: 

layer2/biases/summaries/meanScalarSummary!layer2/biases/summaries/mean/tagslayer2/biases/summaries/Mean*
T0*
_output_shapes
: 

"layer2/biases/summaries/stddev/subSublayer2/biases/Variable/readlayer2/biases/summaries/Mean*
T0*
_output_shapes
:

x
%layer2/biases/summaries/stddev/SquareSquare"layer2/biases/summaries/stddev/sub*
T0*
_output_shapes
:

n
$layer2/biases/summaries/stddev/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Ж
#layer2/biases/summaries/stddev/MeanMean%layer2/biases/summaries/stddev/Square$layer2/biases/summaries/stddev/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
q
#layer2/biases/summaries/stddev/SqrtSqrt#layer2/biases/summaries/stddev/Mean*
T0*
_output_shapes
: 

%layer2/biases/summaries/stddev_1/tagsConst*1
value(B& B layer2/biases/summaries/stddev_1*
dtype0*
_output_shapes
: 

 layer2/biases/summaries/stddev_1ScalarSummary%layer2/biases/summaries/stddev_1/tags#layer2/biases/summaries/stddev/Sqrt*
T0*
_output_shapes
: 
`
layer2/biases/summaries/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
g
%layer2/biases/summaries/range_1/startConst*
value	B : *
dtype0*
_output_shapes
: 
g
%layer2/biases/summaries/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
О
layer2/biases/summaries/range_1Range%layer2/biases/summaries/range_1/startlayer2/biases/summaries/Rank_1%layer2/biases/summaries/range_1/delta*

Tidx0*
_output_shapes
:

layer2/biases/summaries/MaxMaxlayer2/biases/Variable/readlayer2/biases/summaries/range_1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
|
 layer2/biases/summaries/max/tagsConst*,
value#B! Blayer2/biases/summaries/max*
dtype0*
_output_shapes
: 

layer2/biases/summaries/maxScalarSummary layer2/biases/summaries/max/tagslayer2/biases/summaries/Max*
T0*
_output_shapes
: 
`
layer2/biases/summaries/Rank_2Const*
value	B :*
dtype0*
_output_shapes
: 
g
%layer2/biases/summaries/range_2/startConst*
value	B : *
dtype0*
_output_shapes
: 
g
%layer2/biases/summaries/range_2/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
О
layer2/biases/summaries/range_2Range%layer2/biases/summaries/range_2/startlayer2/biases/summaries/Rank_2%layer2/biases/summaries/range_2/delta*

Tidx0*
_output_shapes
:

layer2/biases/summaries/MinMinlayer2/biases/Variable/readlayer2/biases/summaries/range_2*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
|
 layer2/biases/summaries/min/tagsConst*,
value#B! Blayer2/biases/summaries/min*
dtype0*
_output_shapes
: 

layer2/biases/summaries/minScalarSummary layer2/biases/summaries/min/tagslayer2/biases/summaries/Min*
T0*
_output_shapes
: 

%layer2/biases/summaries/histogram/tagConst*2
value)B' B!layer2/biases/summaries/histogram*
dtype0*
_output_shapes
: 

!layer2/biases/summaries/histogramHistogramSummary%layer2/biases/summaries/histogram/taglayer2/biases/Variable/read*
T0*
_output_shapes
: 
Ќ
layer2/Wx_plus_b/MatMulMatMuldropout/dropout/mullayer2/weights/Variable/read*
transpose_a( *
transpose_b( *
T0*'
_output_shapes
:џџџџџџџџџ


layer2/Wx_plus_b/addAddlayer2/Wx_plus_b/MatMullayer2/biases/Variable/read*
T0*'
_output_shapes
:џџџџџџџџџ


$layer2/Wx_plus_b/pre_activations/tagConst*1
value(B& B layer2/Wx_plus_b/pre_activations*
dtype0*
_output_shapes
: 

 layer2/Wx_plus_b/pre_activationsHistogramSummary$layer2/Wx_plus_b/pre_activations/taglayer2/Wx_plus_b/add*
T0*
_output_shapes
: 
e
layer2/activationIdentitylayer2/Wx_plus_b/add*
T0*'
_output_shapes
:џџџџџџџџџ

i
layer2/activations/tagConst*#
valueB Blayer2/activations*
dtype0*
_output_shapes
: 
r
layer2/activationsHistogramSummarylayer2/activations/taglayer2/activation*
T0*
_output_shapes
: 

;cross_entropy/total/sparse_softmax_cross_entropy_loss/ConstConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

Dcross_entropy/total/sparse_softmax_cross_entropy_loss/xentropy/ShapeShapeinput_1/y-input*
T0	*
out_type0*
_output_shapes
:
т
Gcross_entropy/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy#SparseSoftmaxCrossEntropyWithLogitslayer2/activationinput_1/y-input*
T0*
Tlabels0	*6
_output_shapes$
":џџџџџџџџџ:џџџџџџџџџ


Xcross_entropy/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/weights/shapeConst*
valueB *
dtype0*
_output_shapes
: 

Wcross_entropy/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/weights/rankConst*
value	B : *
dtype0*
_output_shapes
: 
о
Wcross_entropy/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/values/shapeShapeGcross_entropy/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy*
T0*
out_type0*
_output_shapes
:

Vcross_entropy/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
n
fcross_entropy/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_successNoOp
н
9cross_entropy/total/sparse_softmax_cross_entropy_loss/MulMulGcross_entropy/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy;cross_entropy/total/sparse_softmax_cross_entropy_loss/Constg^cross_entropy/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
T0*#
_output_shapes
:џџџџџџџџџ
№
=cross_entropy/total/sparse_softmax_cross_entropy_loss/Const_1Constg^cross_entropy/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB: *
dtype0*
_output_shapes
:
ј
9cross_entropy/total/sparse_softmax_cross_entropy_loss/SumSum9cross_entropy/total/sparse_softmax_cross_entropy_loss/Mul=cross_entropy/total/sparse_softmax_cross_entropy_loss/Const_1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
ї
Icross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/Equal/yConstg^cross_entropy/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
љ
Gcross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/EqualEqual;cross_entropy/total/sparse_softmax_cross_entropy_loss/ConstIcross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/Equal/y*
T0*
_output_shapes
: 
њ
Lcross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/zeros_likeConstg^cross_entropy/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
§
Qcross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/ones_like/ShapeConstg^cross_entropy/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
џ
Qcross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/ones_like/ConstConstg^cross_entropy/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 

Kcross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/ones_likeFillQcross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/ones_like/ShapeQcross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/ones_like/Const*
T0*
_output_shapes
: 
з
Hcross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/SelectSelectGcross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/EqualLcross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/zeros_likeKcross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/ones_like*
T0*
_output_shapes
: 
Ђ
vcross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/shapeConstg^cross_entropy/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
 
ucross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/rankConstg^cross_entropy/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
value	B : *
dtype0*
_output_shapes
: 
х
ucross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/shapeShapeGcross_entropy/total/sparse_softmax_cross_entropy_loss/xentropy/xentropyg^cross_entropy/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
T0*
out_type0*
_output_shapes
:

tcross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/rankConstg^cross_entropy/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
value	B :*
dtype0*
_output_shapes
: 
і
cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOpg^cross_entropy/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success
л
ccross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/ShapeShapeGcross_entropy/total/sparse_softmax_cross_entropy_loss/xentropy/xentropyg^cross_entropy/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success^cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
T0*
out_type0*
_output_shapes
:

ccross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/ConstConstg^cross_entropy/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success^cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 
н
]cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_likeFillccross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/Shapeccross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/Const*
T0*#
_output_shapes
:џџџџџџџџџ
Б
Scross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weightsMulHcross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/Select]cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like*
T0*#
_output_shapes
:џџџџџџџџџ
њ
Gcross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/ConstConstg^cross_entropy/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB: *
dtype0*
_output_shapes
:
Є
Across_entropy/total/sparse_softmax_cross_entropy_loss/num_presentSumScross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weightsGcross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
щ
=cross_entropy/total/sparse_softmax_cross_entropy_loss/Const_2Constg^cross_entropy/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
њ
;cross_entropy/total/sparse_softmax_cross_entropy_loss/Sum_1Sum9cross_entropy/total/sparse_softmax_cross_entropy_loss/Sum=cross_entropy/total/sparse_softmax_cross_entropy_loss/Const_2*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
э
?cross_entropy/total/sparse_softmax_cross_entropy_loss/Greater/yConstg^cross_entropy/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
э
=cross_entropy/total/sparse_softmax_cross_entropy_loss/GreaterGreaterAcross_entropy/total/sparse_softmax_cross_entropy_loss/num_present?cross_entropy/total/sparse_softmax_cross_entropy_loss/Greater/y*
T0*
_output_shapes
: 
ы
=cross_entropy/total/sparse_softmax_cross_entropy_loss/Equal/yConstg^cross_entropy/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
ч
;cross_entropy/total/sparse_softmax_cross_entropy_loss/EqualEqualAcross_entropy/total/sparse_softmax_cross_entropy_loss/num_present=cross_entropy/total/sparse_softmax_cross_entropy_loss/Equal/y*
T0*
_output_shapes
: 
ё
Ecross_entropy/total/sparse_softmax_cross_entropy_loss/ones_like/ShapeConstg^cross_entropy/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
ѓ
Ecross_entropy/total/sparse_softmax_cross_entropy_loss/ones_like/ConstConstg^cross_entropy/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 
і
?cross_entropy/total/sparse_softmax_cross_entropy_loss/ones_likeFillEcross_entropy/total/sparse_softmax_cross_entropy_loss/ones_like/ShapeEcross_entropy/total/sparse_softmax_cross_entropy_loss/ones_like/Const*
T0*
_output_shapes
: 
Ј
<cross_entropy/total/sparse_softmax_cross_entropy_loss/SelectSelect;cross_entropy/total/sparse_softmax_cross_entropy_loss/Equal?cross_entropy/total/sparse_softmax_cross_entropy_loss/ones_likeAcross_entropy/total/sparse_softmax_cross_entropy_loss/num_present*
T0*
_output_shapes
: 
р
9cross_entropy/total/sparse_softmax_cross_entropy_loss/divRealDiv;cross_entropy/total/sparse_softmax_cross_entropy_loss/Sum_1<cross_entropy/total/sparse_softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 
ю
@cross_entropy/total/sparse_softmax_cross_entropy_loss/zeros_likeConstg^cross_entropy/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
Ђ
;cross_entropy/total/sparse_softmax_cross_entropy_loss/valueSelect=cross_entropy/total/sparse_softmax_cross_entropy_loss/Greater9cross_entropy/total/sparse_softmax_cross_entropy_loss/div@cross_entropy/total/sparse_softmax_cross_entropy_loss/zeros_like*
T0*
_output_shapes
: 
d
cross_entropy_1/tagsConst* 
valueB Bcross_entropy_1*
dtype0*
_output_shapes
: 

cross_entropy_1ScalarSummarycross_entropy_1/tags;cross_entropy/total/sparse_softmax_cross_entropy_loss/value*
T0*
_output_shapes
: 
X
train/gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
^
train/gradients/grad_ys_0Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 
o
train/gradients/FillFilltrain/gradients/Shapetrain/gradients/grad_ys_0*
T0*
_output_shapes
: 
 
[train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/value_grad/zeros_likeConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Д
Wtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/value_grad/SelectSelect=cross_entropy/total/sparse_softmax_cross_entropy_loss/Greatertrain/gradients/Fill[train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/value_grad/zeros_like*
T0*
_output_shapes
: 
Ж
Ytrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/value_grad/Select_1Select=cross_entropy/total/sparse_softmax_cross_entropy_loss/Greater[train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/value_grad/zeros_liketrain/gradients/Fill*
T0*
_output_shapes
: 

atrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/value_grad/tuple/group_depsNoOpX^train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/value_grad/SelectZ^train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/value_grad/Select_1
П
itrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/value_grad/tuple/control_dependencyIdentityWtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/value_grad/Selectb^train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/value_grad/tuple/group_deps*
T0*j
_class`
^\loc:@train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/value_grad/Select*
_output_shapes
: 
Х
ktrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/value_grad/tuple/control_dependency_1IdentityYtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/value_grad/Select_1b^train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/value_grad/tuple/group_deps*
T0*l
_classb
`^loc:@train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/value_grad/Select_1*
_output_shapes
: 

Ttrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 

Vtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
ш
dtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/BroadcastGradientArgsBroadcastGradientArgsTtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/ShapeVtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Ћ
Vtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/RealDivRealDivitrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/value_grad/tuple/control_dependency<cross_entropy/total/sparse_softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 
з
Rtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/SumSumVtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/RealDivdtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
К
Vtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/ReshapeReshapeRtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/SumTtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
З
Rtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/NegNeg;cross_entropy/total/sparse_softmax_cross_entropy_loss/Sum_1*
T0*
_output_shapes
: 

Xtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/RealDiv_1RealDivRtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/Neg<cross_entropy/total/sparse_softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 

Xtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/RealDiv_2RealDivXtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/RealDiv_1<cross_entropy/total/sparse_softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 
П
Rtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/mulMulitrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/value_grad/tuple/control_dependencyXtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/RealDiv_2*
T0*
_output_shapes
: 
з
Ttrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/Sum_1SumRtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/mulftrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
Р
Xtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/Reshape_1ReshapeTtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/Sum_1Vtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 

_train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/group_depsNoOpW^train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/ReshapeY^train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/Reshape_1
Й
gtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/control_dependencyIdentityVtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/Reshape`^train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/group_deps*
T0*i
_class_
][loc:@train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/Reshape*
_output_shapes
: 
П
itrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/control_dependency_1IdentityXtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/Reshape_1`^train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/group_deps*
T0*k
_classa
_]loc:@train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/Reshape_1*
_output_shapes
: 
Ё
^train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/Reshape/shapeConst*
valueB *
dtype0*
_output_shapes
: 
л
Xtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/ReshapeReshapegtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/control_dependency^train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
: 
Ђ
_train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/Tile/multiplesConst*
valueB *
dtype0*
_output_shapes
: 
Ы
Utrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/TileTileXtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/Reshape_train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/Tile/multiples*
T0*

Tmultiples0*
_output_shapes
: 
Ё
\train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Select_grad/zeros_likeConst*
valueB
 *    *
dtype0*
_output_shapes
: 

Xtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Select_grad/SelectSelect;cross_entropy/total/sparse_softmax_cross_entropy_loss/Equalitrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/control_dependency_1\train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Select_grad/zeros_like*
T0*
_output_shapes
: 

Ztrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Select_grad/Select_1Select;cross_entropy/total/sparse_softmax_cross_entropy_loss/Equal\train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Select_grad/zeros_likeitrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/control_dependency_1*
T0*
_output_shapes
: 
Ђ
btrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Select_grad/tuple/group_depsNoOpY^train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Select_grad/Select[^train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Select_grad/Select_1
У
jtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Select_grad/tuple/control_dependencyIdentityXtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Select_grad/Selectc^train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Select_grad/tuple/group_deps*
T0*k
_classa
_]loc:@train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Select_grad/Select*
_output_shapes
: 
Щ
ltrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Select_grad/tuple/control_dependency_1IdentityZtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Select_grad/Select_1c^train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Select_grad/tuple/group_deps*
T0*m
_classc
a_loc:@train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Select_grad/Select_1*
_output_shapes
: 
І
\train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Sum_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
Щ
Vtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Sum_grad/ReshapeReshapeUtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/Tile\train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Sum_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
Э
Ttrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Sum_grad/ShapeShape9cross_entropy/total/sparse_softmax_cross_entropy_loss/Mul*
T0*
out_type0*
_output_shapes
:
Щ
Strain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Sum_grad/TileTileVtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Sum_grad/ReshapeTtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Sum_grad/Shape*
T0*

Tmultiples0*#
_output_shapes
:џџџџџџџџџ
л
Ttrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Mul_grad/ShapeShapeGcross_entropy/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy*
T0*
out_type0*
_output_shapes
:

Vtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Mul_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
ш
dtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgsBroadcastGradientArgsTtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Mul_grad/ShapeVtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Mul_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

Rtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Mul_grad/mulMulStrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Sum_grad/Tile;cross_entropy/total/sparse_softmax_cross_entropy_loss/Const*
T0*#
_output_shapes
:џџџџџџџџџ
г
Rtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Mul_grad/SumSumRtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Mul_grad/muldtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
Ч
Vtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Mul_grad/ReshapeReshapeRtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Mul_grad/SumTtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Mul_grad/Shape*
T0*
Tshape0*#
_output_shapes
:џџџџџџџџџ
Ї
Ttrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Mul_grad/mul_1MulGcross_entropy/total/sparse_softmax_cross_entropy_loss/xentropy/xentropyStrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Sum_grad/Tile*
T0*#
_output_shapes
:џџџџџџџџџ
й
Ttrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Mul_grad/Sum_1SumTtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Mul_grad/mul_1ftrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
Р
Xtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape_1ReshapeTtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Mul_grad/Sum_1Vtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Mul_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 

_train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/group_depsNoOpW^train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Mul_grad/ReshapeY^train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape_1
Ц
gtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/control_dependencyIdentityVtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape`^train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/group_deps*
T0*i
_class_
][loc:@train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape*#
_output_shapes
:џџџџџџџџџ
П
itrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/control_dependency_1IdentityXtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape_1`^train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/group_deps*
T0*k
_classa
_]loc:@train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape_1*
_output_shapes
: 
Ў
dtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
№
^train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present_grad/ReshapeReshapeltrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Select_grad/tuple/control_dependency_1dtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
я
\train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present_grad/ShapeShapeScross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights*
T0*
out_type0*
_output_shapes
:
с
[train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present_grad/TileTile^train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present_grad/Reshape\train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present_grad/Shape*
T0*

Tmultiples0*#
_output_shapes
:џџџџџџџџџ
Б
ntrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 

ptrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Shape_1Shape]cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like*
T0*
out_type0*
_output_shapes
:
Ж
~train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/BroadcastGradientArgsBroadcastGradientArgsntrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Shapeptrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
н
ltrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/mulMul[train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present_grad/Tile]cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like*
T0*#
_output_shapes
:џџџџџџџџџ
Ё
ltrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/SumSumltrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/mul~train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:

ptrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/ReshapeReshapeltrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Sumntrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
Ъ
ntrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/mul_1MulHcross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/Select[train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present_grad/Tile*
T0*#
_output_shapes
:џџџџџџџџџ
Ј
ntrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Sum_1Sumntrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/mul_1train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:

rtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape_1Reshapentrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Sum_1ptrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:џџџџџџџџџ
щ
ytrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/group_depsNoOpq^train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshapes^train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape_1
Ѓ
train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/control_dependencyIdentityptrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshapez^train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/group_deps*
T0*
_classy
wuloc:@train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape*
_output_shapes
: 
Ж
train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/control_dependency_1Identityrtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape_1z^train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/group_deps*
T0*
_class{
ywloc:@train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape_1*#
_output_shapes
:џџџџџџџџџ
Т
xtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Л
vtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like_grad/SumSumtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/control_dependency_1xtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like_grad/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
Є
train/gradients/zeros_like	ZerosLikeIcross_entropy/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy:1*
T0*'
_output_shapes
:џџџџџџџџџ

Г
ltrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/PreventGradientPreventGradientIcross_entropy/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy:1*
T0*Д
messageЈЅCurrently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*'
_output_shapes
:џџџџџџџџџ

Ж
ktrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/ExpandDims/dimConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

gtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/ExpandDims
ExpandDimsgtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/control_dependencyktrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/ExpandDims/dim*
T0*

Tdim0*'
_output_shapes
:џџџџџџџџџ
№
`train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/mulMulgtrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/ExpandDimsltrain/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/PreventGradient*
T0*'
_output_shapes
:џџџџџџџџџ


/train/gradients/layer2/Wx_plus_b/add_grad/ShapeShapelayer2/Wx_plus_b/MatMul*
T0*
out_type0*
_output_shapes
:
{
1train/gradients/layer2/Wx_plus_b/add_grad/Shape_1Const*
valueB:
*
dtype0*
_output_shapes
:
љ
?train/gradients/layer2/Wx_plus_b/add_grad/BroadcastGradientArgsBroadcastGradientArgs/train/gradients/layer2/Wx_plus_b/add_grad/Shape1train/gradients/layer2/Wx_plus_b/add_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

-train/gradients/layer2/Wx_plus_b/add_grad/SumSum`train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/mul?train/gradients/layer2/Wx_plus_b/add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
м
1train/gradients/layer2/Wx_plus_b/add_grad/ReshapeReshape-train/gradients/layer2/Wx_plus_b/add_grad/Sum/train/gradients/layer2/Wx_plus_b/add_grad/Shape*
T0*
Tshape0*'
_output_shapes
:џџџџџџџџџ


/train/gradients/layer2/Wx_plus_b/add_grad/Sum_1Sum`train/gradients/cross_entropy/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/mulAtrain/gradients/layer2/Wx_plus_b/add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
е
3train/gradients/layer2/Wx_plus_b/add_grad/Reshape_1Reshape/train/gradients/layer2/Wx_plus_b/add_grad/Sum_11train/gradients/layer2/Wx_plus_b/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:

Ќ
:train/gradients/layer2/Wx_plus_b/add_grad/tuple/group_depsNoOp2^train/gradients/layer2/Wx_plus_b/add_grad/Reshape4^train/gradients/layer2/Wx_plus_b/add_grad/Reshape_1
Ж
Btrain/gradients/layer2/Wx_plus_b/add_grad/tuple/control_dependencyIdentity1train/gradients/layer2/Wx_plus_b/add_grad/Reshape;^train/gradients/layer2/Wx_plus_b/add_grad/tuple/group_deps*
T0*D
_class:
86loc:@train/gradients/layer2/Wx_plus_b/add_grad/Reshape*'
_output_shapes
:џџџџџџџџџ

Џ
Dtrain/gradients/layer2/Wx_plus_b/add_grad/tuple/control_dependency_1Identity3train/gradients/layer2/Wx_plus_b/add_grad/Reshape_1;^train/gradients/layer2/Wx_plus_b/add_grad/tuple/group_deps*
T0*F
_class<
:8loc:@train/gradients/layer2/Wx_plus_b/add_grad/Reshape_1*
_output_shapes
:

ј
3train/gradients/layer2/Wx_plus_b/MatMul_grad/MatMulMatMulBtrain/gradients/layer2/Wx_plus_b/add_grad/tuple/control_dependencylayer2/weights/Variable/read*
transpose_a( *
transpose_b(*
T0*(
_output_shapes
:џџџџџџџџџє
ш
5train/gradients/layer2/Wx_plus_b/MatMul_grad/MatMul_1MatMuldropout/dropout/mulBtrain/gradients/layer2/Wx_plus_b/add_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0*
_output_shapes
:	є

Г
=train/gradients/layer2/Wx_plus_b/MatMul_grad/tuple/group_depsNoOp4^train/gradients/layer2/Wx_plus_b/MatMul_grad/MatMul6^train/gradients/layer2/Wx_plus_b/MatMul_grad/MatMul_1
С
Etrain/gradients/layer2/Wx_plus_b/MatMul_grad/tuple/control_dependencyIdentity3train/gradients/layer2/Wx_plus_b/MatMul_grad/MatMul>^train/gradients/layer2/Wx_plus_b/MatMul_grad/tuple/group_deps*
T0*F
_class<
:8loc:@train/gradients/layer2/Wx_plus_b/MatMul_grad/MatMul*(
_output_shapes
:џџџџџџџџџє
О
Gtrain/gradients/layer2/Wx_plus_b/MatMul_grad/tuple/control_dependency_1Identity5train/gradients/layer2/Wx_plus_b/MatMul_grad/MatMul_1>^train/gradients/layer2/Wx_plus_b/MatMul_grad/tuple/group_deps*
T0*H
_class>
<:loc:@train/gradients/layer2/Wx_plus_b/MatMul_grad/MatMul_1*
_output_shapes
:	є


.train/gradients/dropout/dropout/mul_grad/ShapeShapedropout/dropout/div*
T0*
out_type0*#
_output_shapes
:џџџџџџџџџ

0train/gradients/dropout/dropout/mul_grad/Shape_1Shapedropout/dropout/Floor*
T0*
out_type0*#
_output_shapes
:џџџџџџџџџ
і
>train/gradients/dropout/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs.train/gradients/dropout/dropout/mul_grad/Shape0train/gradients/dropout/dropout/mul_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Д
,train/gradients/dropout/dropout/mul_grad/mulMulEtrain/gradients/layer2/Wx_plus_b/MatMul_grad/tuple/control_dependencydropout/dropout/Floor*
T0*
_output_shapes
:
с
,train/gradients/dropout/dropout/mul_grad/SumSum,train/gradients/dropout/dropout/mul_grad/mul>train/gradients/dropout/dropout/mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
Ъ
0train/gradients/dropout/dropout/mul_grad/ReshapeReshape,train/gradients/dropout/dropout/mul_grad/Sum.train/gradients/dropout/dropout/mul_grad/Shape*
T0*
Tshape0*
_output_shapes
:
Д
.train/gradients/dropout/dropout/mul_grad/mul_1Muldropout/dropout/divEtrain/gradients/layer2/Wx_plus_b/MatMul_grad/tuple/control_dependency*
T0*
_output_shapes
:
ч
.train/gradients/dropout/dropout/mul_grad/Sum_1Sum.train/gradients/dropout/dropout/mul_grad/mul_1@train/gradients/dropout/dropout/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
а
2train/gradients/dropout/dropout/mul_grad/Reshape_1Reshape.train/gradients/dropout/dropout/mul_grad/Sum_10train/gradients/dropout/dropout/mul_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
Љ
9train/gradients/dropout/dropout/mul_grad/tuple/group_depsNoOp1^train/gradients/dropout/dropout/mul_grad/Reshape3^train/gradients/dropout/dropout/mul_grad/Reshape_1
Ѓ
Atrain/gradients/dropout/dropout/mul_grad/tuple/control_dependencyIdentity0train/gradients/dropout/dropout/mul_grad/Reshape:^train/gradients/dropout/dropout/mul_grad/tuple/group_deps*
T0*C
_class9
75loc:@train/gradients/dropout/dropout/mul_grad/Reshape*
_output_shapes
:
Љ
Ctrain/gradients/dropout/dropout/mul_grad/tuple/control_dependency_1Identity2train/gradients/dropout/dropout/mul_grad/Reshape_1:^train/gradients/dropout/dropout/mul_grad/tuple/group_deps*
T0*E
_class;
97loc:@train/gradients/dropout/dropout/mul_grad/Reshape_1*
_output_shapes
:

.train/gradients/dropout/dropout/div_grad/ShapeShapelayer1/activation*
T0*
out_type0*
_output_shapes
:

0train/gradients/dropout/dropout/div_grad/Shape_1Shapedropout/Placeholder*
T0*
out_type0*#
_output_shapes
:џџџџџџџџџ
і
>train/gradients/dropout/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs.train/gradients/dropout/dropout/div_grad/Shape0train/gradients/dropout/dropout/div_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Ж
0train/gradients/dropout/dropout/div_grad/RealDivRealDivAtrain/gradients/dropout/dropout/mul_grad/tuple/control_dependencydropout/Placeholder*
T0*
_output_shapes
:
х
,train/gradients/dropout/dropout/div_grad/SumSum0train/gradients/dropout/dropout/div_grad/RealDiv>train/gradients/dropout/dropout/div_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
к
0train/gradients/dropout/dropout/div_grad/ReshapeReshape,train/gradients/dropout/dropout/div_grad/Sum.train/gradients/dropout/dropout/div_grad/Shape*
T0*
Tshape0*(
_output_shapes
:џџџџџџџџџє
y
,train/gradients/dropout/dropout/div_grad/NegNeglayer1/activation*
T0*(
_output_shapes
:џџџџџџџџџє
Ѓ
2train/gradients/dropout/dropout/div_grad/RealDiv_1RealDiv,train/gradients/dropout/dropout/div_grad/Negdropout/Placeholder*
T0*
_output_shapes
:
Љ
2train/gradients/dropout/dropout/div_grad/RealDiv_2RealDiv2train/gradients/dropout/dropout/div_grad/RealDiv_1dropout/Placeholder*
T0*
_output_shapes
:
Э
,train/gradients/dropout/dropout/div_grad/mulMulAtrain/gradients/dropout/dropout/mul_grad/tuple/control_dependency2train/gradients/dropout/dropout/div_grad/RealDiv_2*
T0*
_output_shapes
:
х
.train/gradients/dropout/dropout/div_grad/Sum_1Sum,train/gradients/dropout/dropout/div_grad/mul@train/gradients/dropout/dropout/div_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
а
2train/gradients/dropout/dropout/div_grad/Reshape_1Reshape.train/gradients/dropout/dropout/div_grad/Sum_10train/gradients/dropout/dropout/div_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
Љ
9train/gradients/dropout/dropout/div_grad/tuple/group_depsNoOp1^train/gradients/dropout/dropout/div_grad/Reshape3^train/gradients/dropout/dropout/div_grad/Reshape_1
Г
Atrain/gradients/dropout/dropout/div_grad/tuple/control_dependencyIdentity0train/gradients/dropout/dropout/div_grad/Reshape:^train/gradients/dropout/dropout/div_grad/tuple/group_deps*
T0*C
_class9
75loc:@train/gradients/dropout/dropout/div_grad/Reshape*(
_output_shapes
:џџџџџџџџџє
Љ
Ctrain/gradients/dropout/dropout/div_grad/tuple/control_dependency_1Identity2train/gradients/dropout/dropout/div_grad/Reshape_1:^train/gradients/dropout/dropout/div_grad/tuple/group_deps*
T0*E
_class;
97loc:@train/gradients/dropout/dropout/div_grad/Reshape_1*
_output_shapes
:
Ф
/train/gradients/layer1/activation_grad/ReluGradReluGradAtrain/gradients/dropout/dropout/div_grad/tuple/control_dependencylayer1/activation*
T0*(
_output_shapes
:џџџџџџџџџє

/train/gradients/layer1/Wx_plus_b/add_grad/ShapeShapelayer1/Wx_plus_b/MatMul*
T0*
out_type0*
_output_shapes
:
|
1train/gradients/layer1/Wx_plus_b/add_grad/Shape_1Const*
valueB:є*
dtype0*
_output_shapes
:
љ
?train/gradients/layer1/Wx_plus_b/add_grad/BroadcastGradientArgsBroadcastGradientArgs/train/gradients/layer1/Wx_plus_b/add_grad/Shape1train/gradients/layer1/Wx_plus_b/add_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
ц
-train/gradients/layer1/Wx_plus_b/add_grad/SumSum/train/gradients/layer1/activation_grad/ReluGrad?train/gradients/layer1/Wx_plus_b/add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
н
1train/gradients/layer1/Wx_plus_b/add_grad/ReshapeReshape-train/gradients/layer1/Wx_plus_b/add_grad/Sum/train/gradients/layer1/Wx_plus_b/add_grad/Shape*
T0*
Tshape0*(
_output_shapes
:џџџџџџџџџє
ъ
/train/gradients/layer1/Wx_plus_b/add_grad/Sum_1Sum/train/gradients/layer1/activation_grad/ReluGradAtrain/gradients/layer1/Wx_plus_b/add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
ж
3train/gradients/layer1/Wx_plus_b/add_grad/Reshape_1Reshape/train/gradients/layer1/Wx_plus_b/add_grad/Sum_11train/gradients/layer1/Wx_plus_b/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes	
:є
Ќ
:train/gradients/layer1/Wx_plus_b/add_grad/tuple/group_depsNoOp2^train/gradients/layer1/Wx_plus_b/add_grad/Reshape4^train/gradients/layer1/Wx_plus_b/add_grad/Reshape_1
З
Btrain/gradients/layer1/Wx_plus_b/add_grad/tuple/control_dependencyIdentity1train/gradients/layer1/Wx_plus_b/add_grad/Reshape;^train/gradients/layer1/Wx_plus_b/add_grad/tuple/group_deps*
T0*D
_class:
86loc:@train/gradients/layer1/Wx_plus_b/add_grad/Reshape*(
_output_shapes
:џџџџџџџџџє
А
Dtrain/gradients/layer1/Wx_plus_b/add_grad/tuple/control_dependency_1Identity3train/gradients/layer1/Wx_plus_b/add_grad/Reshape_1;^train/gradients/layer1/Wx_plus_b/add_grad/tuple/group_deps*
T0*F
_class<
:8loc:@train/gradients/layer1/Wx_plus_b/add_grad/Reshape_1*
_output_shapes	
:є
ј
3train/gradients/layer1/Wx_plus_b/MatMul_grad/MatMulMatMulBtrain/gradients/layer1/Wx_plus_b/add_grad/tuple/control_dependencylayer1/weights/Variable/read*
transpose_a( *
transpose_b(*
T0*(
_output_shapes
:џџџџџџџџџ
х
5train/gradients/layer1/Wx_plus_b/MatMul_grad/MatMul_1MatMulinput_1/x-inputBtrain/gradients/layer1/Wx_plus_b/add_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0* 
_output_shapes
:
є
Г
=train/gradients/layer1/Wx_plus_b/MatMul_grad/tuple/group_depsNoOp4^train/gradients/layer1/Wx_plus_b/MatMul_grad/MatMul6^train/gradients/layer1/Wx_plus_b/MatMul_grad/MatMul_1
С
Etrain/gradients/layer1/Wx_plus_b/MatMul_grad/tuple/control_dependencyIdentity3train/gradients/layer1/Wx_plus_b/MatMul_grad/MatMul>^train/gradients/layer1/Wx_plus_b/MatMul_grad/tuple/group_deps*
T0*F
_class<
:8loc:@train/gradients/layer1/Wx_plus_b/MatMul_grad/MatMul*(
_output_shapes
:џџџџџџџџџ
П
Gtrain/gradients/layer1/Wx_plus_b/MatMul_grad/tuple/control_dependency_1Identity5train/gradients/layer1/Wx_plus_b/MatMul_grad/MatMul_1>^train/gradients/layer1/Wx_plus_b/MatMul_grad/tuple/group_deps*
T0*H
_class>
<:loc:@train/gradients/layer1/Wx_plus_b/MatMul_grad/MatMul_1* 
_output_shapes
:
є

train/beta1_power/initial_valueConst*
valueB
 *fff?*
dtype0*)
_class
loc:@layer1/biases/Variable*
_output_shapes
: 
 
train/beta1_power
VariableV2*
shape: *
dtype0*
	container *
shared_name *)
_class
loc:@layer1/biases/Variable*
_output_shapes
: 
Ы
train/beta1_power/AssignAssigntrain/beta1_powertrain/beta1_power/initial_value*
T0*
validate_shape(*
use_locking(*)
_class
loc:@layer1/biases/Variable*
_output_shapes
: 

train/beta1_power/readIdentitytrain/beta1_power*
T0*)
_class
loc:@layer1/biases/Variable*
_output_shapes
: 

train/beta2_power/initial_valueConst*
valueB
 *wО?*
dtype0*)
_class
loc:@layer1/biases/Variable*
_output_shapes
: 
 
train/beta2_power
VariableV2*
shape: *
dtype0*
	container *
shared_name *)
_class
loc:@layer1/biases/Variable*
_output_shapes
: 
Ы
train/beta2_power/AssignAssigntrain/beta2_powertrain/beta2_power/initial_value*
T0*
validate_shape(*
use_locking(*)
_class
loc:@layer1/biases/Variable*
_output_shapes
: 

train/beta2_power/readIdentitytrain/beta2_power*
T0*)
_class
loc:@layer1/biases/Variable*
_output_shapes
: 
Г
.layer1/weights/Variable/Adam/Initializer/zerosConst*
valueB
є*    *
dtype0**
_class 
loc:@layer1/weights/Variable* 
_output_shapes
:
є
Р
layer1/weights/Variable/Adam
VariableV2*
shape:
є*
dtype0*
	container *
shared_name **
_class 
loc:@layer1/weights/Variable* 
_output_shapes
:
є
ћ
#layer1/weights/Variable/Adam/AssignAssignlayer1/weights/Variable/Adam.layer1/weights/Variable/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(**
_class 
loc:@layer1/weights/Variable* 
_output_shapes
:
є
Ђ
!layer1/weights/Variable/Adam/readIdentitylayer1/weights/Variable/Adam*
T0**
_class 
loc:@layer1/weights/Variable* 
_output_shapes
:
є
Е
0layer1/weights/Variable/Adam_1/Initializer/zerosConst*
valueB
є*    *
dtype0**
_class 
loc:@layer1/weights/Variable* 
_output_shapes
:
є
Т
layer1/weights/Variable/Adam_1
VariableV2*
shape:
є*
dtype0*
	container *
shared_name **
_class 
loc:@layer1/weights/Variable* 
_output_shapes
:
є

%layer1/weights/Variable/Adam_1/AssignAssignlayer1/weights/Variable/Adam_10layer1/weights/Variable/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(**
_class 
loc:@layer1/weights/Variable* 
_output_shapes
:
є
І
#layer1/weights/Variable/Adam_1/readIdentitylayer1/weights/Variable/Adam_1*
T0**
_class 
loc:@layer1/weights/Variable* 
_output_shapes
:
є
Ї
-layer1/biases/Variable/Adam/Initializer/zerosConst*
valueBє*    *
dtype0*)
_class
loc:@layer1/biases/Variable*
_output_shapes	
:є
Д
layer1/biases/Variable/Adam
VariableV2*
shape:є*
dtype0*
	container *
shared_name *)
_class
loc:@layer1/biases/Variable*
_output_shapes	
:є
ђ
"layer1/biases/Variable/Adam/AssignAssignlayer1/biases/Variable/Adam-layer1/biases/Variable/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*)
_class
loc:@layer1/biases/Variable*
_output_shapes	
:є

 layer1/biases/Variable/Adam/readIdentitylayer1/biases/Variable/Adam*
T0*)
_class
loc:@layer1/biases/Variable*
_output_shapes	
:є
Љ
/layer1/biases/Variable/Adam_1/Initializer/zerosConst*
valueBє*    *
dtype0*)
_class
loc:@layer1/biases/Variable*
_output_shapes	
:є
Ж
layer1/biases/Variable/Adam_1
VariableV2*
shape:є*
dtype0*
	container *
shared_name *)
_class
loc:@layer1/biases/Variable*
_output_shapes	
:є
ј
$layer1/biases/Variable/Adam_1/AssignAssignlayer1/biases/Variable/Adam_1/layer1/biases/Variable/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*)
_class
loc:@layer1/biases/Variable*
_output_shapes	
:є

"layer1/biases/Variable/Adam_1/readIdentitylayer1/biases/Variable/Adam_1*
T0*)
_class
loc:@layer1/biases/Variable*
_output_shapes	
:є
Б
.layer2/weights/Variable/Adam/Initializer/zerosConst*
valueB	є
*    *
dtype0**
_class 
loc:@layer2/weights/Variable*
_output_shapes
:	є

О
layer2/weights/Variable/Adam
VariableV2*
shape:	є
*
dtype0*
	container *
shared_name **
_class 
loc:@layer2/weights/Variable*
_output_shapes
:	є

њ
#layer2/weights/Variable/Adam/AssignAssignlayer2/weights/Variable/Adam.layer2/weights/Variable/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(**
_class 
loc:@layer2/weights/Variable*
_output_shapes
:	є

Ё
!layer2/weights/Variable/Adam/readIdentitylayer2/weights/Variable/Adam*
T0**
_class 
loc:@layer2/weights/Variable*
_output_shapes
:	є

Г
0layer2/weights/Variable/Adam_1/Initializer/zerosConst*
valueB	є
*    *
dtype0**
_class 
loc:@layer2/weights/Variable*
_output_shapes
:	є

Р
layer2/weights/Variable/Adam_1
VariableV2*
shape:	є
*
dtype0*
	container *
shared_name **
_class 
loc:@layer2/weights/Variable*
_output_shapes
:	є


%layer2/weights/Variable/Adam_1/AssignAssignlayer2/weights/Variable/Adam_10layer2/weights/Variable/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(**
_class 
loc:@layer2/weights/Variable*
_output_shapes
:	є

Ѕ
#layer2/weights/Variable/Adam_1/readIdentitylayer2/weights/Variable/Adam_1*
T0**
_class 
loc:@layer2/weights/Variable*
_output_shapes
:	є

Ѕ
-layer2/biases/Variable/Adam/Initializer/zerosConst*
valueB
*    *
dtype0*)
_class
loc:@layer2/biases/Variable*
_output_shapes
:

В
layer2/biases/Variable/Adam
VariableV2*
shape:
*
dtype0*
	container *
shared_name *)
_class
loc:@layer2/biases/Variable*
_output_shapes
:

ё
"layer2/biases/Variable/Adam/AssignAssignlayer2/biases/Variable/Adam-layer2/biases/Variable/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*)
_class
loc:@layer2/biases/Variable*
_output_shapes
:


 layer2/biases/Variable/Adam/readIdentitylayer2/biases/Variable/Adam*
T0*)
_class
loc:@layer2/biases/Variable*
_output_shapes
:

Ї
/layer2/biases/Variable/Adam_1/Initializer/zerosConst*
valueB
*    *
dtype0*)
_class
loc:@layer2/biases/Variable*
_output_shapes
:

Д
layer2/biases/Variable/Adam_1
VariableV2*
shape:
*
dtype0*
	container *
shared_name *)
_class
loc:@layer2/biases/Variable*
_output_shapes
:

ї
$layer2/biases/Variable/Adam_1/AssignAssignlayer2/biases/Variable/Adam_1/layer2/biases/Variable/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*)
_class
loc:@layer2/biases/Variable*
_output_shapes
:


"layer2/biases/Variable/Adam_1/readIdentitylayer2/biases/Variable/Adam_1*
T0*)
_class
loc:@layer2/biases/Variable*
_output_shapes
:

]
train/Adam/learning_rateConst*
valueB
 *o:*
dtype0*
_output_shapes
: 
U
train/Adam/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
U
train/Adam/beta2Const*
valueB
 *wО?*
dtype0*
_output_shapes
: 
W
train/Adam/epsilonConst*
valueB
 *wЬ+2*
dtype0*
_output_shapes
: 
р
3train/Adam/update_layer1/weights/Variable/ApplyAdam	ApplyAdamlayer1/weights/Variablelayer1/weights/Variable/Adamlayer1/weights/Variable/Adam_1train/beta1_power/readtrain/beta2_power/readtrain/Adam/learning_ratetrain/Adam/beta1train/Adam/beta2train/Adam/epsilonGtrain/gradients/layer1/Wx_plus_b/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( **
_class 
loc:@layer1/weights/Variable* 
_output_shapes
:
є
г
2train/Adam/update_layer1/biases/Variable/ApplyAdam	ApplyAdamlayer1/biases/Variablelayer1/biases/Variable/Adamlayer1/biases/Variable/Adam_1train/beta1_power/readtrain/beta2_power/readtrain/Adam/learning_ratetrain/Adam/beta1train/Adam/beta2train/Adam/epsilonDtrain/gradients/layer1/Wx_plus_b/add_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *)
_class
loc:@layer1/biases/Variable*
_output_shapes	
:є
п
3train/Adam/update_layer2/weights/Variable/ApplyAdam	ApplyAdamlayer2/weights/Variablelayer2/weights/Variable/Adamlayer2/weights/Variable/Adam_1train/beta1_power/readtrain/beta2_power/readtrain/Adam/learning_ratetrain/Adam/beta1train/Adam/beta2train/Adam/epsilonGtrain/gradients/layer2/Wx_plus_b/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( **
_class 
loc:@layer2/weights/Variable*
_output_shapes
:	є

в
2train/Adam/update_layer2/biases/Variable/ApplyAdam	ApplyAdamlayer2/biases/Variablelayer2/biases/Variable/Adamlayer2/biases/Variable/Adam_1train/beta1_power/readtrain/beta2_power/readtrain/Adam/learning_ratetrain/Adam/beta1train/Adam/beta2train/Adam/epsilonDtrain/gradients/layer2/Wx_plus_b/add_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *)
_class
loc:@layer2/biases/Variable*
_output_shapes
:

с
train/Adam/mulMultrain/beta1_power/readtrain/Adam/beta14^train/Adam/update_layer1/weights/Variable/ApplyAdam3^train/Adam/update_layer1/biases/Variable/ApplyAdam4^train/Adam/update_layer2/weights/Variable/ApplyAdam3^train/Adam/update_layer2/biases/Variable/ApplyAdam*
T0*)
_class
loc:@layer1/biases/Variable*
_output_shapes
: 
Г
train/Adam/AssignAssigntrain/beta1_powertrain/Adam/mul*
T0*
validate_shape(*
use_locking( *)
_class
loc:@layer1/biases/Variable*
_output_shapes
: 
у
train/Adam/mul_1Multrain/beta2_power/readtrain/Adam/beta24^train/Adam/update_layer1/weights/Variable/ApplyAdam3^train/Adam/update_layer1/biases/Variable/ApplyAdam4^train/Adam/update_layer2/weights/Variable/ApplyAdam3^train/Adam/update_layer2/biases/Variable/ApplyAdam*
T0*)
_class
loc:@layer1/biases/Variable*
_output_shapes
: 
З
train/Adam/Assign_1Assigntrain/beta2_powertrain/Adam/mul_1*
T0*
validate_shape(*
use_locking( *)
_class
loc:@layer1/biases/Variable*
_output_shapes
: 


train/AdamNoOp4^train/Adam/update_layer1/weights/Variable/ApplyAdam3^train/Adam/update_layer1/biases/Variable/ApplyAdam4^train/Adam/update_layer2/weights/Variable/ApplyAdam3^train/Adam/update_layer2/biases/Variable/ApplyAdam^train/Adam/Assign^train/Adam/Assign_1
n
,accuracy/correct_prediction/ArgMax/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
К
"accuracy/correct_prediction/ArgMaxArgMaxlayer2/activation,accuracy/correct_prediction/ArgMax/dimension*
T0*

Tidx0*
output_type0	*#
_output_shapes
:џџџџџџџџџ

!accuracy/correct_prediction/EqualEqual"accuracy/correct_prediction/ArgMaxinput_1/y-input*
T0	*#
_output_shapes
:џџџџџџџџџ
~
accuracy/accuracy/CastCast!accuracy/correct_prediction/Equal*

SrcT0
*

DstT0*#
_output_shapes
:џџџџџџџџџ
a
accuracy/accuracy/ConstConst*
valueB: *
dtype0*
_output_shapes
:

accuracy/accuracy/MeanMeanaccuracy/accuracy/Castaccuracy/accuracy/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
Z
accuracy_1/tagsConst*
valueB B
accuracy_1*
dtype0*
_output_shapes
: 
e

accuracy_1ScalarSummaryaccuracy_1/tagsaccuracy/accuracy/Mean*
T0*
_output_shapes
: 

Merge/MergeSummaryMergeSummaryinput_reshape/inputinput_reshape_1/inputlayer1/weights/summaries/mean!layer1/weights/summaries/stddev_1layer1/weights/summaries/maxlayer1/weights/summaries/min"layer1/weights/summaries/histogramlayer1/biases/summaries/mean layer1/biases/summaries/stddev_1layer1/biases/summaries/maxlayer1/biases/summaries/min!layer1/biases/summaries/histogram layer1/Wx_plus_b/pre_activationslayer1/activations dropout/dropout_keep_probabilitylayer2/weights/summaries/mean!layer2/weights/summaries/stddev_1layer2/weights/summaries/maxlayer2/weights/summaries/min"layer2/weights/summaries/histogramlayer2/biases/summaries/mean layer2/biases/summaries/stddev_1layer2/biases/summaries/maxlayer2/biases/summaries/min!layer2/biases/summaries/histogram layer2/Wx_plus_b/pre_activationslayer2/activationscross_entropy_1
accuracy_1*
N*
_output_shapes
: 
t
input_2/x-inputPlaceholder*
dtype0*
shape:џџџџџџџџџ*(
_output_shapes
:џџџџџџџџџ
j
input_2/y-inputPlaceholder*
dtype0	*
shape:џџџџџџџџџ*#
_output_shapes
:џџџџџџџџџ
v
input_reshape_2/Reshape/shapeConst*%
valueB"џџџџ         *
dtype0*
_output_shapes
:

input_reshape_2/ReshapeReshapeinput_2/x-inputinput_reshape_2/Reshape/shape*
T0*
Tshape0*/
_output_shapes
:џџџџџџџџџ
o
input_reshape_2/input/tagConst*&
valueB Binput_reshape_2/input*
dtype0*
_output_shapes
: 
­
input_reshape_2/inputImageSummaryinput_reshape_2/input/taginput_reshape_2/Reshape*

max_images
*
T0*
	bad_colorB:џ  џ*
_output_shapes
: 
x
'layer1_1/weights/truncated_normal/shapeConst*
valueB"  є  *
dtype0*
_output_shapes
:
k
&layer1_1/weights/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
m
(layer1_1/weights/truncated_normal/stddevConst*
valueB
 *ЭЬЬ=*
dtype0*
_output_shapes
: 
О
1layer1_1/weights/truncated_normal/TruncatedNormalTruncatedNormal'layer1_1/weights/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0* 
_output_shapes
:
є
Д
%layer1_1/weights/truncated_normal/mulMul1layer1_1/weights/truncated_normal/TruncatedNormal(layer1_1/weights/truncated_normal/stddev*
T0* 
_output_shapes
:
є
Ђ
!layer1_1/weights/truncated_normalAdd%layer1_1/weights/truncated_normal/mul&layer1_1/weights/truncated_normal/mean*
T0* 
_output_shapes
:
є

layer1_1/weights/Variable
VariableV2*
shape:
є*
dtype0*
	container *
shared_name * 
_output_shapes
:
є
ъ
 layer1_1/weights/Variable/AssignAssignlayer1_1/weights/Variable!layer1_1/weights/truncated_normal*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@layer1_1/weights/Variable* 
_output_shapes
:
є

layer1_1/weights/Variable/readIdentitylayer1_1/weights/Variable*
T0*,
_class"
 loc:@layer1_1/weights/Variable* 
_output_shapes
:
є
a
layer1_1/weights/summaries/RankConst*
value	B :*
dtype0*
_output_shapes
: 
h
&layer1_1/weights/summaries/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
h
&layer1_1/weights/summaries/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Т
 layer1_1/weights/summaries/rangeRange&layer1_1/weights/summaries/range/startlayer1_1/weights/summaries/Rank&layer1_1/weights/summaries/range/delta*

Tidx0*
_output_shapes
:
Ї
layer1_1/weights/summaries/MeanMeanlayer1_1/weights/Variable/read layer1_1/weights/summaries/range*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

$layer1_1/weights/summaries/mean/tagsConst*0
value'B% Blayer1_1/weights/summaries/mean*
dtype0*
_output_shapes
: 

layer1_1/weights/summaries/meanScalarSummary$layer1_1/weights/summaries/mean/tagslayer1_1/weights/summaries/Mean*
T0*
_output_shapes
: 

%layer1_1/weights/summaries/stddev/subSublayer1_1/weights/Variable/readlayer1_1/weights/summaries/Mean*
T0* 
_output_shapes
:
є

(layer1_1/weights/summaries/stddev/SquareSquare%layer1_1/weights/summaries/stddev/sub*
T0* 
_output_shapes
:
є
x
'layer1_1/weights/summaries/stddev/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
П
&layer1_1/weights/summaries/stddev/MeanMean(layer1_1/weights/summaries/stddev/Square'layer1_1/weights/summaries/stddev/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
w
&layer1_1/weights/summaries/stddev/SqrtSqrt&layer1_1/weights/summaries/stddev/Mean*
T0*
_output_shapes
: 

(layer1_1/weights/summaries/stddev_1/tagsConst*4
value+B) B#layer1_1/weights/summaries/stddev_1*
dtype0*
_output_shapes
: 
Ї
#layer1_1/weights/summaries/stddev_1ScalarSummary(layer1_1/weights/summaries/stddev_1/tags&layer1_1/weights/summaries/stddev/Sqrt*
T0*
_output_shapes
: 
c
!layer1_1/weights/summaries/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
j
(layer1_1/weights/summaries/range_1/startConst*
value	B : *
dtype0*
_output_shapes
: 
j
(layer1_1/weights/summaries/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ъ
"layer1_1/weights/summaries/range_1Range(layer1_1/weights/summaries/range_1/start!layer1_1/weights/summaries/Rank_1(layer1_1/weights/summaries/range_1/delta*

Tidx0*
_output_shapes
:
Ї
layer1_1/weights/summaries/MaxMaxlayer1_1/weights/Variable/read"layer1_1/weights/summaries/range_1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

#layer1_1/weights/summaries/max/tagsConst*/
value&B$ Blayer1_1/weights/summaries/max*
dtype0*
_output_shapes
: 

layer1_1/weights/summaries/maxScalarSummary#layer1_1/weights/summaries/max/tagslayer1_1/weights/summaries/Max*
T0*
_output_shapes
: 
c
!layer1_1/weights/summaries/Rank_2Const*
value	B :*
dtype0*
_output_shapes
: 
j
(layer1_1/weights/summaries/range_2/startConst*
value	B : *
dtype0*
_output_shapes
: 
j
(layer1_1/weights/summaries/range_2/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ъ
"layer1_1/weights/summaries/range_2Range(layer1_1/weights/summaries/range_2/start!layer1_1/weights/summaries/Rank_2(layer1_1/weights/summaries/range_2/delta*

Tidx0*
_output_shapes
:
Ї
layer1_1/weights/summaries/MinMinlayer1_1/weights/Variable/read"layer1_1/weights/summaries/range_2*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

#layer1_1/weights/summaries/min/tagsConst*/
value&B$ Blayer1_1/weights/summaries/min*
dtype0*
_output_shapes
: 

layer1_1/weights/summaries/minScalarSummary#layer1_1/weights/summaries/min/tagslayer1_1/weights/summaries/Min*
T0*
_output_shapes
: 

(layer1_1/weights/summaries/histogram/tagConst*5
value,B* B$layer1_1/weights/summaries/histogram*
dtype0*
_output_shapes
: 
Ѓ
$layer1_1/weights/summaries/histogramHistogramSummary(layer1_1/weights/summaries/histogram/taglayer1_1/weights/Variable/read*
T0*
_output_shapes
: 
d
layer1_1/biases/ConstConst*
valueBє*ЭЬЬ=*
dtype0*
_output_shapes	
:є

layer1_1/biases/Variable
VariableV2*
shape:є*
dtype0*
	container *
shared_name *
_output_shapes	
:є
ж
layer1_1/biases/Variable/AssignAssignlayer1_1/biases/Variablelayer1_1/biases/Const*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@layer1_1/biases/Variable*
_output_shapes	
:є

layer1_1/biases/Variable/readIdentitylayer1_1/biases/Variable*
T0*+
_class!
loc:@layer1_1/biases/Variable*
_output_shapes	
:є
`
layer1_1/biases/summaries/RankConst*
value	B :*
dtype0*
_output_shapes
: 
g
%layer1_1/biases/summaries/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
g
%layer1_1/biases/summaries/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
О
layer1_1/biases/summaries/rangeRange%layer1_1/biases/summaries/range/startlayer1_1/biases/summaries/Rank%layer1_1/biases/summaries/range/delta*

Tidx0*
_output_shapes
:
Є
layer1_1/biases/summaries/MeanMeanlayer1_1/biases/Variable/readlayer1_1/biases/summaries/range*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

#layer1_1/biases/summaries/mean/tagsConst*/
value&B$ Blayer1_1/biases/summaries/mean*
dtype0*
_output_shapes
: 

layer1_1/biases/summaries/meanScalarSummary#layer1_1/biases/summaries/mean/tagslayer1_1/biases/summaries/Mean*
T0*
_output_shapes
: 

$layer1_1/biases/summaries/stddev/subSublayer1_1/biases/Variable/readlayer1_1/biases/summaries/Mean*
T0*
_output_shapes	
:є
}
'layer1_1/biases/summaries/stddev/SquareSquare$layer1_1/biases/summaries/stddev/sub*
T0*
_output_shapes	
:є
p
&layer1_1/biases/summaries/stddev/ConstConst*
valueB: *
dtype0*
_output_shapes
:
М
%layer1_1/biases/summaries/stddev/MeanMean'layer1_1/biases/summaries/stddev/Square&layer1_1/biases/summaries/stddev/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
u
%layer1_1/biases/summaries/stddev/SqrtSqrt%layer1_1/biases/summaries/stddev/Mean*
T0*
_output_shapes
: 

'layer1_1/biases/summaries/stddev_1/tagsConst*3
value*B( B"layer1_1/biases/summaries/stddev_1*
dtype0*
_output_shapes
: 
Є
"layer1_1/biases/summaries/stddev_1ScalarSummary'layer1_1/biases/summaries/stddev_1/tags%layer1_1/biases/summaries/stddev/Sqrt*
T0*
_output_shapes
: 
b
 layer1_1/biases/summaries/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
i
'layer1_1/biases/summaries/range_1/startConst*
value	B : *
dtype0*
_output_shapes
: 
i
'layer1_1/biases/summaries/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ц
!layer1_1/biases/summaries/range_1Range'layer1_1/biases/summaries/range_1/start layer1_1/biases/summaries/Rank_1'layer1_1/biases/summaries/range_1/delta*

Tidx0*
_output_shapes
:
Є
layer1_1/biases/summaries/MaxMaxlayer1_1/biases/Variable/read!layer1_1/biases/summaries/range_1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

"layer1_1/biases/summaries/max/tagsConst*.
value%B# Blayer1_1/biases/summaries/max*
dtype0*
_output_shapes
: 

layer1_1/biases/summaries/maxScalarSummary"layer1_1/biases/summaries/max/tagslayer1_1/biases/summaries/Max*
T0*
_output_shapes
: 
b
 layer1_1/biases/summaries/Rank_2Const*
value	B :*
dtype0*
_output_shapes
: 
i
'layer1_1/biases/summaries/range_2/startConst*
value	B : *
dtype0*
_output_shapes
: 
i
'layer1_1/biases/summaries/range_2/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ц
!layer1_1/biases/summaries/range_2Range'layer1_1/biases/summaries/range_2/start layer1_1/biases/summaries/Rank_2'layer1_1/biases/summaries/range_2/delta*

Tidx0*
_output_shapes
:
Є
layer1_1/biases/summaries/MinMinlayer1_1/biases/Variable/read!layer1_1/biases/summaries/range_2*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

"layer1_1/biases/summaries/min/tagsConst*.
value%B# Blayer1_1/biases/summaries/min*
dtype0*
_output_shapes
: 

layer1_1/biases/summaries/minScalarSummary"layer1_1/biases/summaries/min/tagslayer1_1/biases/summaries/Min*
T0*
_output_shapes
: 

'layer1_1/biases/summaries/histogram/tagConst*4
value+B) B#layer1_1/biases/summaries/histogram*
dtype0*
_output_shapes
: 
 
#layer1_1/biases/summaries/histogramHistogramSummary'layer1_1/biases/summaries/histogram/taglayer1_1/biases/Variable/read*
T0*
_output_shapes
: 
­
layer1_1/Wx_plus_b/MatMulMatMulinput_2/x-inputlayer1_1/weights/Variable/read*
transpose_a( *
transpose_b( *
T0*(
_output_shapes
:џџџџџџџџџє

layer1_1/Wx_plus_b/addAddlayer1_1/Wx_plus_b/MatMullayer1_1/biases/Variable/read*
T0*(
_output_shapes
:џџџџџџџџџє

&layer1_1/Wx_plus_b/pre_activations/tagConst*3
value*B( B"layer1_1/Wx_plus_b/pre_activations*
dtype0*
_output_shapes
: 

"layer1_1/Wx_plus_b/pre_activationsHistogramSummary&layer1_1/Wx_plus_b/pre_activations/taglayer1_1/Wx_plus_b/add*
T0*
_output_shapes
: 
f
layer1_1/activationRelulayer1_1/Wx_plus_b/add*
T0*(
_output_shapes
:џџџџџџџџџє
m
layer1_1/activations/tagConst*%
valueB Blayer1_1/activations*
dtype0*
_output_shapes
: 
x
layer1_1/activationsHistogramSummarylayer1_1/activations/taglayer1_1/activation*
T0*
_output_shapes
: 
Z
dropout_1/PlaceholderPlaceholder*
dtype0*
shape:*
_output_shapes
:

'dropout_1/dropout_keep_probability/tagsConst*3
value*B( B"dropout_1/dropout_keep_probability*
dtype0*
_output_shapes
: 

"dropout_1/dropout_keep_probabilityScalarSummary'dropout_1/dropout_keep_probability/tagsdropout_1/Placeholder*
T0*
_output_shapes
: 
j
dropout_1/dropout/ShapeShapelayer1_1/activation*
T0*
out_type0*
_output_shapes
:
i
$dropout_1/dropout/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: 
i
$dropout_1/dropout/random_uniform/maxConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Б
.dropout_1/dropout/random_uniform/RandomUniformRandomUniformdropout_1/dropout/Shape*

seed *
seed2 *
dtype0*
T0*(
_output_shapes
:џџџџџџџџџє

$dropout_1/dropout/random_uniform/subSub$dropout_1/dropout/random_uniform/max$dropout_1/dropout/random_uniform/min*
T0*
_output_shapes
: 
Д
$dropout_1/dropout/random_uniform/mulMul.dropout_1/dropout/random_uniform/RandomUniform$dropout_1/dropout/random_uniform/sub*
T0*(
_output_shapes
:џџџџџџџџџє
І
 dropout_1/dropout/random_uniformAdd$dropout_1/dropout/random_uniform/mul$dropout_1/dropout/random_uniform/min*
T0*(
_output_shapes
:џџџџџџџџџє
x
dropout_1/dropout/addAdddropout_1/Placeholder dropout_1/dropout/random_uniform*
T0*
_output_shapes
:
Z
dropout_1/dropout/FloorFloordropout_1/dropout/add*
T0*
_output_shapes
:
o
dropout_1/dropout/divRealDivlayer1_1/activationdropout_1/Placeholder*
T0*
_output_shapes
:

dropout_1/dropout/mulMuldropout_1/dropout/divdropout_1/dropout/Floor*
T0*(
_output_shapes
:џџџџџџџџџє
x
'layer2_1/weights/truncated_normal/shapeConst*
valueB"є  
   *
dtype0*
_output_shapes
:
k
&layer2_1/weights/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
m
(layer2_1/weights/truncated_normal/stddevConst*
valueB
 *ЭЬЬ=*
dtype0*
_output_shapes
: 
Н
1layer2_1/weights/truncated_normal/TruncatedNormalTruncatedNormal'layer2_1/weights/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*
_output_shapes
:	є

Г
%layer2_1/weights/truncated_normal/mulMul1layer2_1/weights/truncated_normal/TruncatedNormal(layer2_1/weights/truncated_normal/stddev*
T0*
_output_shapes
:	є

Ё
!layer2_1/weights/truncated_normalAdd%layer2_1/weights/truncated_normal/mul&layer2_1/weights/truncated_normal/mean*
T0*
_output_shapes
:	є


layer2_1/weights/Variable
VariableV2*
shape:	є
*
dtype0*
	container *
shared_name *
_output_shapes
:	є

щ
 layer2_1/weights/Variable/AssignAssignlayer2_1/weights/Variable!layer2_1/weights/truncated_normal*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@layer2_1/weights/Variable*
_output_shapes
:	є


layer2_1/weights/Variable/readIdentitylayer2_1/weights/Variable*
T0*,
_class"
 loc:@layer2_1/weights/Variable*
_output_shapes
:	є

a
layer2_1/weights/summaries/RankConst*
value	B :*
dtype0*
_output_shapes
: 
h
&layer2_1/weights/summaries/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
h
&layer2_1/weights/summaries/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Т
 layer2_1/weights/summaries/rangeRange&layer2_1/weights/summaries/range/startlayer2_1/weights/summaries/Rank&layer2_1/weights/summaries/range/delta*

Tidx0*
_output_shapes
:
Ї
layer2_1/weights/summaries/MeanMeanlayer2_1/weights/Variable/read layer2_1/weights/summaries/range*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

$layer2_1/weights/summaries/mean/tagsConst*0
value'B% Blayer2_1/weights/summaries/mean*
dtype0*
_output_shapes
: 

layer2_1/weights/summaries/meanScalarSummary$layer2_1/weights/summaries/mean/tagslayer2_1/weights/summaries/Mean*
T0*
_output_shapes
: 

%layer2_1/weights/summaries/stddev/subSublayer2_1/weights/Variable/readlayer2_1/weights/summaries/Mean*
T0*
_output_shapes
:	є


(layer2_1/weights/summaries/stddev/SquareSquare%layer2_1/weights/summaries/stddev/sub*
T0*
_output_shapes
:	є

x
'layer2_1/weights/summaries/stddev/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
П
&layer2_1/weights/summaries/stddev/MeanMean(layer2_1/weights/summaries/stddev/Square'layer2_1/weights/summaries/stddev/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
w
&layer2_1/weights/summaries/stddev/SqrtSqrt&layer2_1/weights/summaries/stddev/Mean*
T0*
_output_shapes
: 

(layer2_1/weights/summaries/stddev_1/tagsConst*4
value+B) B#layer2_1/weights/summaries/stddev_1*
dtype0*
_output_shapes
: 
Ї
#layer2_1/weights/summaries/stddev_1ScalarSummary(layer2_1/weights/summaries/stddev_1/tags&layer2_1/weights/summaries/stddev/Sqrt*
T0*
_output_shapes
: 
c
!layer2_1/weights/summaries/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
j
(layer2_1/weights/summaries/range_1/startConst*
value	B : *
dtype0*
_output_shapes
: 
j
(layer2_1/weights/summaries/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ъ
"layer2_1/weights/summaries/range_1Range(layer2_1/weights/summaries/range_1/start!layer2_1/weights/summaries/Rank_1(layer2_1/weights/summaries/range_1/delta*

Tidx0*
_output_shapes
:
Ї
layer2_1/weights/summaries/MaxMaxlayer2_1/weights/Variable/read"layer2_1/weights/summaries/range_1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

#layer2_1/weights/summaries/max/tagsConst*/
value&B$ Blayer2_1/weights/summaries/max*
dtype0*
_output_shapes
: 

layer2_1/weights/summaries/maxScalarSummary#layer2_1/weights/summaries/max/tagslayer2_1/weights/summaries/Max*
T0*
_output_shapes
: 
c
!layer2_1/weights/summaries/Rank_2Const*
value	B :*
dtype0*
_output_shapes
: 
j
(layer2_1/weights/summaries/range_2/startConst*
value	B : *
dtype0*
_output_shapes
: 
j
(layer2_1/weights/summaries/range_2/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ъ
"layer2_1/weights/summaries/range_2Range(layer2_1/weights/summaries/range_2/start!layer2_1/weights/summaries/Rank_2(layer2_1/weights/summaries/range_2/delta*

Tidx0*
_output_shapes
:
Ї
layer2_1/weights/summaries/MinMinlayer2_1/weights/Variable/read"layer2_1/weights/summaries/range_2*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

#layer2_1/weights/summaries/min/tagsConst*/
value&B$ Blayer2_1/weights/summaries/min*
dtype0*
_output_shapes
: 

layer2_1/weights/summaries/minScalarSummary#layer2_1/weights/summaries/min/tagslayer2_1/weights/summaries/Min*
T0*
_output_shapes
: 

(layer2_1/weights/summaries/histogram/tagConst*5
value,B* B$layer2_1/weights/summaries/histogram*
dtype0*
_output_shapes
: 
Ѓ
$layer2_1/weights/summaries/histogramHistogramSummary(layer2_1/weights/summaries/histogram/taglayer2_1/weights/Variable/read*
T0*
_output_shapes
: 
b
layer2_1/biases/ConstConst*
valueB
*ЭЬЬ=*
dtype0*
_output_shapes
:


layer2_1/biases/Variable
VariableV2*
shape:
*
dtype0*
	container *
shared_name *
_output_shapes
:

е
layer2_1/biases/Variable/AssignAssignlayer2_1/biases/Variablelayer2_1/biases/Const*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@layer2_1/biases/Variable*
_output_shapes
:


layer2_1/biases/Variable/readIdentitylayer2_1/biases/Variable*
T0*+
_class!
loc:@layer2_1/biases/Variable*
_output_shapes
:

`
layer2_1/biases/summaries/RankConst*
value	B :*
dtype0*
_output_shapes
: 
g
%layer2_1/biases/summaries/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
g
%layer2_1/biases/summaries/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
О
layer2_1/biases/summaries/rangeRange%layer2_1/biases/summaries/range/startlayer2_1/biases/summaries/Rank%layer2_1/biases/summaries/range/delta*

Tidx0*
_output_shapes
:
Є
layer2_1/biases/summaries/MeanMeanlayer2_1/biases/Variable/readlayer2_1/biases/summaries/range*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

#layer2_1/biases/summaries/mean/tagsConst*/
value&B$ Blayer2_1/biases/summaries/mean*
dtype0*
_output_shapes
: 

layer2_1/biases/summaries/meanScalarSummary#layer2_1/biases/summaries/mean/tagslayer2_1/biases/summaries/Mean*
T0*
_output_shapes
: 

$layer2_1/biases/summaries/stddev/subSublayer2_1/biases/Variable/readlayer2_1/biases/summaries/Mean*
T0*
_output_shapes
:

|
'layer2_1/biases/summaries/stddev/SquareSquare$layer2_1/biases/summaries/stddev/sub*
T0*
_output_shapes
:

p
&layer2_1/biases/summaries/stddev/ConstConst*
valueB: *
dtype0*
_output_shapes
:
М
%layer2_1/biases/summaries/stddev/MeanMean'layer2_1/biases/summaries/stddev/Square&layer2_1/biases/summaries/stddev/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
u
%layer2_1/biases/summaries/stddev/SqrtSqrt%layer2_1/biases/summaries/stddev/Mean*
T0*
_output_shapes
: 

'layer2_1/biases/summaries/stddev_1/tagsConst*3
value*B( B"layer2_1/biases/summaries/stddev_1*
dtype0*
_output_shapes
: 
Є
"layer2_1/biases/summaries/stddev_1ScalarSummary'layer2_1/biases/summaries/stddev_1/tags%layer2_1/biases/summaries/stddev/Sqrt*
T0*
_output_shapes
: 
b
 layer2_1/biases/summaries/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
i
'layer2_1/biases/summaries/range_1/startConst*
value	B : *
dtype0*
_output_shapes
: 
i
'layer2_1/biases/summaries/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ц
!layer2_1/biases/summaries/range_1Range'layer2_1/biases/summaries/range_1/start layer2_1/biases/summaries/Rank_1'layer2_1/biases/summaries/range_1/delta*

Tidx0*
_output_shapes
:
Є
layer2_1/biases/summaries/MaxMaxlayer2_1/biases/Variable/read!layer2_1/biases/summaries/range_1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

"layer2_1/biases/summaries/max/tagsConst*.
value%B# Blayer2_1/biases/summaries/max*
dtype0*
_output_shapes
: 

layer2_1/biases/summaries/maxScalarSummary"layer2_1/biases/summaries/max/tagslayer2_1/biases/summaries/Max*
T0*
_output_shapes
: 
b
 layer2_1/biases/summaries/Rank_2Const*
value	B :*
dtype0*
_output_shapes
: 
i
'layer2_1/biases/summaries/range_2/startConst*
value	B : *
dtype0*
_output_shapes
: 
i
'layer2_1/biases/summaries/range_2/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ц
!layer2_1/biases/summaries/range_2Range'layer2_1/biases/summaries/range_2/start layer2_1/biases/summaries/Rank_2'layer2_1/biases/summaries/range_2/delta*

Tidx0*
_output_shapes
:
Є
layer2_1/biases/summaries/MinMinlayer2_1/biases/Variable/read!layer2_1/biases/summaries/range_2*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

"layer2_1/biases/summaries/min/tagsConst*.
value%B# Blayer2_1/biases/summaries/min*
dtype0*
_output_shapes
: 

layer2_1/biases/summaries/minScalarSummary"layer2_1/biases/summaries/min/tagslayer2_1/biases/summaries/Min*
T0*
_output_shapes
: 

'layer2_1/biases/summaries/histogram/tagConst*4
value+B) B#layer2_1/biases/summaries/histogram*
dtype0*
_output_shapes
: 
 
#layer2_1/biases/summaries/histogramHistogramSummary'layer2_1/biases/summaries/histogram/taglayer2_1/biases/Variable/read*
T0*
_output_shapes
: 
В
layer2_1/Wx_plus_b/MatMulMatMuldropout_1/dropout/mullayer2_1/weights/Variable/read*
transpose_a( *
transpose_b( *
T0*'
_output_shapes
:џџџџџџџџџ


layer2_1/Wx_plus_b/addAddlayer2_1/Wx_plus_b/MatMullayer2_1/biases/Variable/read*
T0*'
_output_shapes
:џџџџџџџџџ


&layer2_1/Wx_plus_b/pre_activations/tagConst*3
value*B( B"layer2_1/Wx_plus_b/pre_activations*
dtype0*
_output_shapes
: 

"layer2_1/Wx_plus_b/pre_activationsHistogramSummary&layer2_1/Wx_plus_b/pre_activations/taglayer2_1/Wx_plus_b/add*
T0*
_output_shapes
: 
i
layer2_1/activationIdentitylayer2_1/Wx_plus_b/add*
T0*'
_output_shapes
:џџџџџџџџџ

m
layer2_1/activations/tagConst*%
valueB Blayer2_1/activations*
dtype0*
_output_shapes
: 
x
layer2_1/activationsHistogramSummarylayer2_1/activations/taglayer2_1/activation*
T0*
_output_shapes
: 

=cross_entropy_2/total/sparse_softmax_cross_entropy_loss/ConstConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

Fcross_entropy_2/total/sparse_softmax_cross_entropy_loss/xentropy/ShapeShapeinput_2/y-input*
T0	*
out_type0*
_output_shapes
:
ц
Icross_entropy_2/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy#SparseSoftmaxCrossEntropyWithLogitslayer2_1/activationinput_2/y-input*
T0*
Tlabels0	*6
_output_shapes$
":џџџџџџџџџ:џџџџџџџџџ


Zcross_entropy_2/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/weights/shapeConst*
valueB *
dtype0*
_output_shapes
: 

Ycross_entropy_2/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/weights/rankConst*
value	B : *
dtype0*
_output_shapes
: 
т
Ycross_entropy_2/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/values/shapeShapeIcross_entropy_2/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy*
T0*
out_type0*
_output_shapes
:

Xcross_entropy_2/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
p
hcross_entropy_2/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_successNoOp
х
;cross_entropy_2/total/sparse_softmax_cross_entropy_loss/MulMulIcross_entropy_2/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy=cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Consti^cross_entropy_2/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
T0*#
_output_shapes
:џџџџџџџџџ
є
?cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Const_1Consti^cross_entropy_2/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB: *
dtype0*
_output_shapes
:
ў
;cross_entropy_2/total/sparse_softmax_cross_entropy_loss/SumSum;cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Mul?cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Const_1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
ћ
Kcross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/Equal/yConsti^cross_entropy_2/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
џ
Icross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/EqualEqual=cross_entropy_2/total/sparse_softmax_cross_entropy_loss/ConstKcross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/Equal/y*
T0*
_output_shapes
: 
ў
Ncross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/zeros_likeConsti^cross_entropy_2/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 

Scross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/ones_like/ShapeConsti^cross_entropy_2/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 

Scross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/ones_like/ConstConsti^cross_entropy_2/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 
 
Mcross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/ones_likeFillScross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/ones_like/ShapeScross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/ones_like/Const*
T0*
_output_shapes
: 
п
Jcross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/SelectSelectIcross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/EqualNcross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/zeros_likeMcross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/ones_like*
T0*
_output_shapes
: 
І
xcross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/shapeConsti^cross_entropy_2/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
Є
wcross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/rankConsti^cross_entropy_2/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
value	B : *
dtype0*
_output_shapes
: 
ы
wcross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/shapeShapeIcross_entropy_2/total/sparse_softmax_cross_entropy_loss/xentropy/xentropyi^cross_entropy_2/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
T0*
out_type0*
_output_shapes
:
Ѓ
vcross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/rankConsti^cross_entropy_2/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
value	B :*
dtype0*
_output_shapes
: 
њ
cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOpi^cross_entropy_2/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success
у
ecross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/ShapeShapeIcross_entropy_2/total/sparse_softmax_cross_entropy_loss/xentropy/xentropyi^cross_entropy_2/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success^cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
T0*
out_type0*
_output_shapes
:

ecross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/ConstConsti^cross_entropy_2/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success^cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 
у
_cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_likeFillecross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/Shapeecross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/Const*
T0*#
_output_shapes
:џџџџџџџџџ
З
Ucross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weightsMulJcross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/Select_cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like*
T0*#
_output_shapes
:џџџџџџџџџ
ў
Icross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/ConstConsti^cross_entropy_2/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB: *
dtype0*
_output_shapes
:
Њ
Ccross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_presentSumUcross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weightsIcross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
э
?cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Const_2Consti^cross_entropy_2/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 

=cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Sum_1Sum;cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Sum?cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Const_2*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
ё
Across_entropy_2/total/sparse_softmax_cross_entropy_loss/Greater/yConsti^cross_entropy_2/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
ѓ
?cross_entropy_2/total/sparse_softmax_cross_entropy_loss/GreaterGreaterCcross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_presentAcross_entropy_2/total/sparse_softmax_cross_entropy_loss/Greater/y*
T0*
_output_shapes
: 
я
?cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Equal/yConsti^cross_entropy_2/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
э
=cross_entropy_2/total/sparse_softmax_cross_entropy_loss/EqualEqualCcross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present?cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Equal/y*
T0*
_output_shapes
: 
ѕ
Gcross_entropy_2/total/sparse_softmax_cross_entropy_loss/ones_like/ShapeConsti^cross_entropy_2/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
ї
Gcross_entropy_2/total/sparse_softmax_cross_entropy_loss/ones_like/ConstConsti^cross_entropy_2/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ќ
Across_entropy_2/total/sparse_softmax_cross_entropy_loss/ones_likeFillGcross_entropy_2/total/sparse_softmax_cross_entropy_loss/ones_like/ShapeGcross_entropy_2/total/sparse_softmax_cross_entropy_loss/ones_like/Const*
T0*
_output_shapes
: 
А
>cross_entropy_2/total/sparse_softmax_cross_entropy_loss/SelectSelect=cross_entropy_2/total/sparse_softmax_cross_entropy_loss/EqualAcross_entropy_2/total/sparse_softmax_cross_entropy_loss/ones_likeCcross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present*
T0*
_output_shapes
: 
ц
;cross_entropy_2/total/sparse_softmax_cross_entropy_loss/divRealDiv=cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Sum_1>cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 
ђ
Bcross_entropy_2/total/sparse_softmax_cross_entropy_loss/zeros_likeConsti^cross_entropy_2/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
Њ
=cross_entropy_2/total/sparse_softmax_cross_entropy_loss/valueSelect?cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Greater;cross_entropy_2/total/sparse_softmax_cross_entropy_loss/divBcross_entropy_2/total/sparse_softmax_cross_entropy_loss/zeros_like*
T0*
_output_shapes
: 
d
cross_entropy_3/tagsConst* 
valueB Bcross_entropy_3*
dtype0*
_output_shapes
: 

cross_entropy_3ScalarSummarycross_entropy_3/tags=cross_entropy_2/total/sparse_softmax_cross_entropy_loss/value*
T0*
_output_shapes
: 
Z
train_1/gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
`
train_1/gradients/grad_ys_0Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
train_1/gradients/FillFilltrain_1/gradients/Shapetrain_1/gradients/grad_ys_0*
T0*
_output_shapes
: 
Є
_train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/value_grad/zeros_likeConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Р
[train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/value_grad/SelectSelect?cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Greatertrain_1/gradients/Fill_train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/value_grad/zeros_like*
T0*
_output_shapes
: 
Т
]train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/value_grad/Select_1Select?cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Greater_train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/value_grad/zeros_liketrain_1/gradients/Fill*
T0*
_output_shapes
: 
Ћ
etrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/value_grad/tuple/group_depsNoOp\^train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/value_grad/Select^^train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/value_grad/Select_1
Я
mtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/value_grad/tuple/control_dependencyIdentity[train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/value_grad/Selectf^train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/value_grad/tuple/group_deps*
T0*n
_classd
b`loc:@train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/value_grad/Select*
_output_shapes
: 
е
otrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/value_grad/tuple/control_dependency_1Identity]train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/value_grad/Select_1f^train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/value_grad/tuple/group_deps*
T0*p
_classf
dbloc:@train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/value_grad/Select_1*
_output_shapes
: 

Xtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 

Ztrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
є
htrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/BroadcastGradientArgsBroadcastGradientArgsXtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/ShapeZtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Е
Ztrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/RealDivRealDivmtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/value_grad/tuple/control_dependency>cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 
у
Vtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/SumSumZtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/RealDivhtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
Ц
Ztrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/ReshapeReshapeVtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/SumXtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
Н
Vtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/NegNeg=cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Sum_1*
T0*
_output_shapes
: 
 
\train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/RealDiv_1RealDivVtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/Neg>cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 
І
\train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/RealDiv_2RealDiv\train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/RealDiv_1>cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 
Ы
Vtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/mulMulmtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/value_grad/tuple/control_dependency\train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/RealDiv_2*
T0*
_output_shapes
: 
у
Xtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/Sum_1SumVtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/muljtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
Ь
\train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/Reshape_1ReshapeXtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/Sum_1Ztrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
Ї
ctrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/group_depsNoOp[^train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/Reshape]^train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/Reshape_1
Щ
ktrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/control_dependencyIdentityZtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/Reshaped^train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/group_deps*
T0*m
_classc
a_loc:@train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/Reshape*
_output_shapes
: 
Я
mtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/control_dependency_1Identity\train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/Reshape_1d^train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/group_deps*
T0*o
_classe
caloc:@train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/Reshape_1*
_output_shapes
: 
Ѕ
btrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/Reshape/shapeConst*
valueB *
dtype0*
_output_shapes
: 
ч
\train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/ReshapeReshapektrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/control_dependencybtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
: 
І
ctrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/Tile/multiplesConst*
valueB *
dtype0*
_output_shapes
: 
з
Ytrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/TileTile\train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/Reshapectrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/Tile/multiples*
T0*

Tmultiples0*
_output_shapes
: 
Ѕ
`train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Select_grad/zeros_likeConst*
valueB
 *    *
dtype0*
_output_shapes
: 

\train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Select_grad/SelectSelect=cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Equalmtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/control_dependency_1`train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Select_grad/zeros_like*
T0*
_output_shapes
: 

^train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Select_grad/Select_1Select=cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Equal`train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Select_grad/zeros_likemtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/control_dependency_1*
T0*
_output_shapes
: 
Ў
ftrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Select_grad/tuple/group_depsNoOp]^train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Select_grad/Select_^train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Select_grad/Select_1
г
ntrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Select_grad/tuple/control_dependencyIdentity\train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Select_grad/Selectg^train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Select_grad/tuple/group_deps*
T0*o
_classe
caloc:@train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Select_grad/Select*
_output_shapes
: 
й
ptrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Select_grad/tuple/control_dependency_1Identity^train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Select_grad/Select_1g^train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Select_grad/tuple/group_deps*
T0*q
_classg
ecloc:@train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Select_grad/Select_1*
_output_shapes
: 
Њ
`train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Sum_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
е
Ztrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Sum_grad/ReshapeReshapeYtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/Tile`train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Sum_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
г
Xtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Sum_grad/ShapeShape;cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Mul*
T0*
out_type0*
_output_shapes
:
е
Wtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Sum_grad/TileTileZtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Sum_grad/ReshapeXtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Sum_grad/Shape*
T0*

Tmultiples0*#
_output_shapes
:џџџџџџџџџ
с
Xtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Mul_grad/ShapeShapeIcross_entropy_2/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy*
T0*
out_type0*
_output_shapes
:

Ztrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Mul_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
є
htrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgsBroadcastGradientArgsXtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Mul_grad/ShapeZtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Mul_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Ѓ
Vtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Mul_grad/mulMulWtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Sum_grad/Tile=cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Const*
T0*#
_output_shapes
:џџџџџџџџџ
п
Vtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Mul_grad/SumSumVtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Mul_grad/mulhtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
г
Ztrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Mul_grad/ReshapeReshapeVtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Mul_grad/SumXtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Mul_grad/Shape*
T0*
Tshape0*#
_output_shapes
:џџџџџџџџџ
Б
Xtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Mul_grad/mul_1MulIcross_entropy_2/total/sparse_softmax_cross_entropy_loss/xentropy/xentropyWtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Sum_grad/Tile*
T0*#
_output_shapes
:џџџџџџџџџ
х
Xtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Mul_grad/Sum_1SumXtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Mul_grad/mul_1jtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
Ь
\train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape_1ReshapeXtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Mul_grad/Sum_1Ztrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Mul_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
Ї
ctrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/group_depsNoOp[^train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape]^train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape_1
ж
ktrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/control_dependencyIdentityZtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Mul_grad/Reshaped^train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/group_deps*
T0*m
_classc
a_loc:@train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape*#
_output_shapes
:џџџџџџџџџ
Я
mtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/control_dependency_1Identity\train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape_1d^train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/group_deps*
T0*o
_classe
caloc:@train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape_1*
_output_shapes
: 
В
htrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
ќ
btrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present_grad/ReshapeReshapeptrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Select_grad/tuple/control_dependency_1htrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
ѕ
`train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present_grad/ShapeShapeUcross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights*
T0*
out_type0*
_output_shapes
:
э
_train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present_grad/TileTilebtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present_grad/Reshape`train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present_grad/Shape*
T0*

Tmultiples0*#
_output_shapes
:џџџџџџџџџ
Е
rtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 

ttrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Shape_1Shape_cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like*
T0*
out_type0*
_output_shapes
:
У
train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/BroadcastGradientArgsBroadcastGradientArgsrtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Shapettrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
ч
ptrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/mulMul_train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present_grad/Tile_cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like*
T0*#
_output_shapes
:џџџџџџџџџ
Ў
ptrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/SumSumptrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/multrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:

ttrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/ReshapeReshapeptrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Sumrtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
д
rtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/mul_1MulJcross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/Select_train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present_grad/Tile*
T0*#
_output_shapes
:џџџџџџџџџ
Д
rtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Sum_1Sumrtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/mul_1train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
Ї
vtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape_1Reshapertrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Sum_1ttrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:џџџџџџџџџ
ѕ
}train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/group_depsNoOpu^train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshapew^train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape_1
Г
train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/control_dependencyIdentityttrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape~^train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/group_deps*
T0*
_class}
{yloc:@train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape*
_output_shapes
: 
Ц
train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/control_dependency_1Identityvtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape_1~^train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/group_deps*
T0*
_class
}{loc:@train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape_1*#
_output_shapes
:џџџџџџџџџ
Ц
|train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Ч
ztrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like_grad/SumSumtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/control_dependency_1|train_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like_grad/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
Ј
train_1/gradients/zeros_like	ZerosLikeKcross_entropy_2/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy:1*
T0*'
_output_shapes
:џџџџџџџџџ

Й
ptrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/PreventGradientPreventGradientKcross_entropy_2/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy:1*
T0*Д
messageЈЅCurrently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*'
_output_shapes
:џџџџџџџџџ

К
otrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/ExpandDims/dimConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

ktrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/ExpandDims
ExpandDimsktrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/control_dependencyotrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/ExpandDims/dim*
T0*

Tdim0*'
_output_shapes
:џџџџџџџџџ
ќ
dtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/mulMulktrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/ExpandDimsptrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/PreventGradient*
T0*'
_output_shapes
:џџџџџџџџџ


3train_1/gradients/layer2_1/Wx_plus_b/add_grad/ShapeShapelayer2_1/Wx_plus_b/MatMul*
T0*
out_type0*
_output_shapes
:

5train_1/gradients/layer2_1/Wx_plus_b/add_grad/Shape_1Const*
valueB:
*
dtype0*
_output_shapes
:

Ctrain_1/gradients/layer2_1/Wx_plus_b/add_grad/BroadcastGradientArgsBroadcastGradientArgs3train_1/gradients/layer2_1/Wx_plus_b/add_grad/Shape5train_1/gradients/layer2_1/Wx_plus_b/add_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Ѓ
1train_1/gradients/layer2_1/Wx_plus_b/add_grad/SumSumdtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/mulCtrain_1/gradients/layer2_1/Wx_plus_b/add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
ш
5train_1/gradients/layer2_1/Wx_plus_b/add_grad/ReshapeReshape1train_1/gradients/layer2_1/Wx_plus_b/add_grad/Sum3train_1/gradients/layer2_1/Wx_plus_b/add_grad/Shape*
T0*
Tshape0*'
_output_shapes
:џџџџџџџџџ

Ї
3train_1/gradients/layer2_1/Wx_plus_b/add_grad/Sum_1Sumdtrain_1/gradients/cross_entropy_2/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/mulEtrain_1/gradients/layer2_1/Wx_plus_b/add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
с
7train_1/gradients/layer2_1/Wx_plus_b/add_grad/Reshape_1Reshape3train_1/gradients/layer2_1/Wx_plus_b/add_grad/Sum_15train_1/gradients/layer2_1/Wx_plus_b/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:

И
>train_1/gradients/layer2_1/Wx_plus_b/add_grad/tuple/group_depsNoOp6^train_1/gradients/layer2_1/Wx_plus_b/add_grad/Reshape8^train_1/gradients/layer2_1/Wx_plus_b/add_grad/Reshape_1
Ц
Ftrain_1/gradients/layer2_1/Wx_plus_b/add_grad/tuple/control_dependencyIdentity5train_1/gradients/layer2_1/Wx_plus_b/add_grad/Reshape?^train_1/gradients/layer2_1/Wx_plus_b/add_grad/tuple/group_deps*
T0*H
_class>
<:loc:@train_1/gradients/layer2_1/Wx_plus_b/add_grad/Reshape*'
_output_shapes
:џџџџџџџџџ

П
Htrain_1/gradients/layer2_1/Wx_plus_b/add_grad/tuple/control_dependency_1Identity7train_1/gradients/layer2_1/Wx_plus_b/add_grad/Reshape_1?^train_1/gradients/layer2_1/Wx_plus_b/add_grad/tuple/group_deps*
T0*J
_class@
><loc:@train_1/gradients/layer2_1/Wx_plus_b/add_grad/Reshape_1*
_output_shapes
:


7train_1/gradients/layer2_1/Wx_plus_b/MatMul_grad/MatMulMatMulFtrain_1/gradients/layer2_1/Wx_plus_b/add_grad/tuple/control_dependencylayer2_1/weights/Variable/read*
transpose_a( *
transpose_b(*
T0*(
_output_shapes
:џџџџџџџџџє
ђ
9train_1/gradients/layer2_1/Wx_plus_b/MatMul_grad/MatMul_1MatMuldropout_1/dropout/mulFtrain_1/gradients/layer2_1/Wx_plus_b/add_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0*
_output_shapes
:	є

П
Atrain_1/gradients/layer2_1/Wx_plus_b/MatMul_grad/tuple/group_depsNoOp8^train_1/gradients/layer2_1/Wx_plus_b/MatMul_grad/MatMul:^train_1/gradients/layer2_1/Wx_plus_b/MatMul_grad/MatMul_1
б
Itrain_1/gradients/layer2_1/Wx_plus_b/MatMul_grad/tuple/control_dependencyIdentity7train_1/gradients/layer2_1/Wx_plus_b/MatMul_grad/MatMulB^train_1/gradients/layer2_1/Wx_plus_b/MatMul_grad/tuple/group_deps*
T0*J
_class@
><loc:@train_1/gradients/layer2_1/Wx_plus_b/MatMul_grad/MatMul*(
_output_shapes
:џџџџџџџџџє
Ю
Ktrain_1/gradients/layer2_1/Wx_plus_b/MatMul_grad/tuple/control_dependency_1Identity9train_1/gradients/layer2_1/Wx_plus_b/MatMul_grad/MatMul_1B^train_1/gradients/layer2_1/Wx_plus_b/MatMul_grad/tuple/group_deps*
T0*L
_classB
@>loc:@train_1/gradients/layer2_1/Wx_plus_b/MatMul_grad/MatMul_1*
_output_shapes
:	є


2train_1/gradients/dropout_1/dropout/mul_grad/ShapeShapedropout_1/dropout/div*
T0*
out_type0*#
_output_shapes
:џџџџџџџџџ

4train_1/gradients/dropout_1/dropout/mul_grad/Shape_1Shapedropout_1/dropout/Floor*
T0*
out_type0*#
_output_shapes
:џџџџџџџџџ

Btrain_1/gradients/dropout_1/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs2train_1/gradients/dropout_1/dropout/mul_grad/Shape4train_1/gradients/dropout_1/dropout/mul_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
О
0train_1/gradients/dropout_1/dropout/mul_grad/mulMulItrain_1/gradients/layer2_1/Wx_plus_b/MatMul_grad/tuple/control_dependencydropout_1/dropout/Floor*
T0*
_output_shapes
:
э
0train_1/gradients/dropout_1/dropout/mul_grad/SumSum0train_1/gradients/dropout_1/dropout/mul_grad/mulBtrain_1/gradients/dropout_1/dropout/mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
ж
4train_1/gradients/dropout_1/dropout/mul_grad/ReshapeReshape0train_1/gradients/dropout_1/dropout/mul_grad/Sum2train_1/gradients/dropout_1/dropout/mul_grad/Shape*
T0*
Tshape0*
_output_shapes
:
О
2train_1/gradients/dropout_1/dropout/mul_grad/mul_1Muldropout_1/dropout/divItrain_1/gradients/layer2_1/Wx_plus_b/MatMul_grad/tuple/control_dependency*
T0*
_output_shapes
:
ѓ
2train_1/gradients/dropout_1/dropout/mul_grad/Sum_1Sum2train_1/gradients/dropout_1/dropout/mul_grad/mul_1Dtrain_1/gradients/dropout_1/dropout/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
м
6train_1/gradients/dropout_1/dropout/mul_grad/Reshape_1Reshape2train_1/gradients/dropout_1/dropout/mul_grad/Sum_14train_1/gradients/dropout_1/dropout/mul_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
Е
=train_1/gradients/dropout_1/dropout/mul_grad/tuple/group_depsNoOp5^train_1/gradients/dropout_1/dropout/mul_grad/Reshape7^train_1/gradients/dropout_1/dropout/mul_grad/Reshape_1
Г
Etrain_1/gradients/dropout_1/dropout/mul_grad/tuple/control_dependencyIdentity4train_1/gradients/dropout_1/dropout/mul_grad/Reshape>^train_1/gradients/dropout_1/dropout/mul_grad/tuple/group_deps*
T0*G
_class=
;9loc:@train_1/gradients/dropout_1/dropout/mul_grad/Reshape*
_output_shapes
:
Й
Gtrain_1/gradients/dropout_1/dropout/mul_grad/tuple/control_dependency_1Identity6train_1/gradients/dropout_1/dropout/mul_grad/Reshape_1>^train_1/gradients/dropout_1/dropout/mul_grad/tuple/group_deps*
T0*I
_class?
=;loc:@train_1/gradients/dropout_1/dropout/mul_grad/Reshape_1*
_output_shapes
:

2train_1/gradients/dropout_1/dropout/div_grad/ShapeShapelayer1_1/activation*
T0*
out_type0*
_output_shapes
:

4train_1/gradients/dropout_1/dropout/div_grad/Shape_1Shapedropout_1/Placeholder*
T0*
out_type0*#
_output_shapes
:џџџџџџџџџ

Btrain_1/gradients/dropout_1/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs2train_1/gradients/dropout_1/dropout/div_grad/Shape4train_1/gradients/dropout_1/dropout/div_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Р
4train_1/gradients/dropout_1/dropout/div_grad/RealDivRealDivEtrain_1/gradients/dropout_1/dropout/mul_grad/tuple/control_dependencydropout_1/Placeholder*
T0*
_output_shapes
:
ё
0train_1/gradients/dropout_1/dropout/div_grad/SumSum4train_1/gradients/dropout_1/dropout/div_grad/RealDivBtrain_1/gradients/dropout_1/dropout/div_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
ц
4train_1/gradients/dropout_1/dropout/div_grad/ReshapeReshape0train_1/gradients/dropout_1/dropout/div_grad/Sum2train_1/gradients/dropout_1/dropout/div_grad/Shape*
T0*
Tshape0*(
_output_shapes
:џџџџџџџџџє

0train_1/gradients/dropout_1/dropout/div_grad/NegNeglayer1_1/activation*
T0*(
_output_shapes
:џџџџџџџџџє
­
6train_1/gradients/dropout_1/dropout/div_grad/RealDiv_1RealDiv0train_1/gradients/dropout_1/dropout/div_grad/Negdropout_1/Placeholder*
T0*
_output_shapes
:
Г
6train_1/gradients/dropout_1/dropout/div_grad/RealDiv_2RealDiv6train_1/gradients/dropout_1/dropout/div_grad/RealDiv_1dropout_1/Placeholder*
T0*
_output_shapes
:
й
0train_1/gradients/dropout_1/dropout/div_grad/mulMulEtrain_1/gradients/dropout_1/dropout/mul_grad/tuple/control_dependency6train_1/gradients/dropout_1/dropout/div_grad/RealDiv_2*
T0*
_output_shapes
:
ё
2train_1/gradients/dropout_1/dropout/div_grad/Sum_1Sum0train_1/gradients/dropout_1/dropout/div_grad/mulDtrain_1/gradients/dropout_1/dropout/div_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
м
6train_1/gradients/dropout_1/dropout/div_grad/Reshape_1Reshape2train_1/gradients/dropout_1/dropout/div_grad/Sum_14train_1/gradients/dropout_1/dropout/div_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
Е
=train_1/gradients/dropout_1/dropout/div_grad/tuple/group_depsNoOp5^train_1/gradients/dropout_1/dropout/div_grad/Reshape7^train_1/gradients/dropout_1/dropout/div_grad/Reshape_1
У
Etrain_1/gradients/dropout_1/dropout/div_grad/tuple/control_dependencyIdentity4train_1/gradients/dropout_1/dropout/div_grad/Reshape>^train_1/gradients/dropout_1/dropout/div_grad/tuple/group_deps*
T0*G
_class=
;9loc:@train_1/gradients/dropout_1/dropout/div_grad/Reshape*(
_output_shapes
:џџџџџџџџџє
Й
Gtrain_1/gradients/dropout_1/dropout/div_grad/tuple/control_dependency_1Identity6train_1/gradients/dropout_1/dropout/div_grad/Reshape_1>^train_1/gradients/dropout_1/dropout/div_grad/tuple/group_deps*
T0*I
_class?
=;loc:@train_1/gradients/dropout_1/dropout/div_grad/Reshape_1*
_output_shapes
:
Ю
3train_1/gradients/layer1_1/activation_grad/ReluGradReluGradEtrain_1/gradients/dropout_1/dropout/div_grad/tuple/control_dependencylayer1_1/activation*
T0*(
_output_shapes
:џџџџџџџџџє

3train_1/gradients/layer1_1/Wx_plus_b/add_grad/ShapeShapelayer1_1/Wx_plus_b/MatMul*
T0*
out_type0*
_output_shapes
:

5train_1/gradients/layer1_1/Wx_plus_b/add_grad/Shape_1Const*
valueB:є*
dtype0*
_output_shapes
:

Ctrain_1/gradients/layer1_1/Wx_plus_b/add_grad/BroadcastGradientArgsBroadcastGradientArgs3train_1/gradients/layer1_1/Wx_plus_b/add_grad/Shape5train_1/gradients/layer1_1/Wx_plus_b/add_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
ђ
1train_1/gradients/layer1_1/Wx_plus_b/add_grad/SumSum3train_1/gradients/layer1_1/activation_grad/ReluGradCtrain_1/gradients/layer1_1/Wx_plus_b/add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
щ
5train_1/gradients/layer1_1/Wx_plus_b/add_grad/ReshapeReshape1train_1/gradients/layer1_1/Wx_plus_b/add_grad/Sum3train_1/gradients/layer1_1/Wx_plus_b/add_grad/Shape*
T0*
Tshape0*(
_output_shapes
:џџџџџџџџџє
і
3train_1/gradients/layer1_1/Wx_plus_b/add_grad/Sum_1Sum3train_1/gradients/layer1_1/activation_grad/ReluGradEtrain_1/gradients/layer1_1/Wx_plus_b/add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
т
7train_1/gradients/layer1_1/Wx_plus_b/add_grad/Reshape_1Reshape3train_1/gradients/layer1_1/Wx_plus_b/add_grad/Sum_15train_1/gradients/layer1_1/Wx_plus_b/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes	
:є
И
>train_1/gradients/layer1_1/Wx_plus_b/add_grad/tuple/group_depsNoOp6^train_1/gradients/layer1_1/Wx_plus_b/add_grad/Reshape8^train_1/gradients/layer1_1/Wx_plus_b/add_grad/Reshape_1
Ч
Ftrain_1/gradients/layer1_1/Wx_plus_b/add_grad/tuple/control_dependencyIdentity5train_1/gradients/layer1_1/Wx_plus_b/add_grad/Reshape?^train_1/gradients/layer1_1/Wx_plus_b/add_grad/tuple/group_deps*
T0*H
_class>
<:loc:@train_1/gradients/layer1_1/Wx_plus_b/add_grad/Reshape*(
_output_shapes
:џџџџџџџџџє
Р
Htrain_1/gradients/layer1_1/Wx_plus_b/add_grad/tuple/control_dependency_1Identity7train_1/gradients/layer1_1/Wx_plus_b/add_grad/Reshape_1?^train_1/gradients/layer1_1/Wx_plus_b/add_grad/tuple/group_deps*
T0*J
_class@
><loc:@train_1/gradients/layer1_1/Wx_plus_b/add_grad/Reshape_1*
_output_shapes	
:є

7train_1/gradients/layer1_1/Wx_plus_b/MatMul_grad/MatMulMatMulFtrain_1/gradients/layer1_1/Wx_plus_b/add_grad/tuple/control_dependencylayer1_1/weights/Variable/read*
transpose_a( *
transpose_b(*
T0*(
_output_shapes
:џџџџџџџџџ
э
9train_1/gradients/layer1_1/Wx_plus_b/MatMul_grad/MatMul_1MatMulinput_2/x-inputFtrain_1/gradients/layer1_1/Wx_plus_b/add_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0* 
_output_shapes
:
є
П
Atrain_1/gradients/layer1_1/Wx_plus_b/MatMul_grad/tuple/group_depsNoOp8^train_1/gradients/layer1_1/Wx_plus_b/MatMul_grad/MatMul:^train_1/gradients/layer1_1/Wx_plus_b/MatMul_grad/MatMul_1
б
Itrain_1/gradients/layer1_1/Wx_plus_b/MatMul_grad/tuple/control_dependencyIdentity7train_1/gradients/layer1_1/Wx_plus_b/MatMul_grad/MatMulB^train_1/gradients/layer1_1/Wx_plus_b/MatMul_grad/tuple/group_deps*
T0*J
_class@
><loc:@train_1/gradients/layer1_1/Wx_plus_b/MatMul_grad/MatMul*(
_output_shapes
:џџџџџџџџџ
Я
Ktrain_1/gradients/layer1_1/Wx_plus_b/MatMul_grad/tuple/control_dependency_1Identity9train_1/gradients/layer1_1/Wx_plus_b/MatMul_grad/MatMul_1B^train_1/gradients/layer1_1/Wx_plus_b/MatMul_grad/tuple/group_deps*
T0*L
_classB
@>loc:@train_1/gradients/layer1_1/Wx_plus_b/MatMul_grad/MatMul_1* 
_output_shapes
:
є

!train_1/beta1_power/initial_valueConst*
valueB
 *fff?*
dtype0*+
_class!
loc:@layer1_1/biases/Variable*
_output_shapes
: 
Є
train_1/beta1_power
VariableV2*
shape: *
dtype0*
	container *
shared_name *+
_class!
loc:@layer1_1/biases/Variable*
_output_shapes
: 
г
train_1/beta1_power/AssignAssigntrain_1/beta1_power!train_1/beta1_power/initial_value*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@layer1_1/biases/Variable*
_output_shapes
: 

train_1/beta1_power/readIdentitytrain_1/beta1_power*
T0*+
_class!
loc:@layer1_1/biases/Variable*
_output_shapes
: 

!train_1/beta2_power/initial_valueConst*
valueB
 *wО?*
dtype0*+
_class!
loc:@layer1_1/biases/Variable*
_output_shapes
: 
Є
train_1/beta2_power
VariableV2*
shape: *
dtype0*
	container *
shared_name *+
_class!
loc:@layer1_1/biases/Variable*
_output_shapes
: 
г
train_1/beta2_power/AssignAssigntrain_1/beta2_power!train_1/beta2_power/initial_value*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@layer1_1/biases/Variable*
_output_shapes
: 

train_1/beta2_power/readIdentitytrain_1/beta2_power*
T0*+
_class!
loc:@layer1_1/biases/Variable*
_output_shapes
: 
З
0layer1_1/weights/Variable/Adam/Initializer/zerosConst*
valueB
є*    *
dtype0*,
_class"
 loc:@layer1_1/weights/Variable* 
_output_shapes
:
є
Ф
layer1_1/weights/Variable/Adam
VariableV2*
shape:
є*
dtype0*
	container *
shared_name *,
_class"
 loc:@layer1_1/weights/Variable* 
_output_shapes
:
є

%layer1_1/weights/Variable/Adam/AssignAssignlayer1_1/weights/Variable/Adam0layer1_1/weights/Variable/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@layer1_1/weights/Variable* 
_output_shapes
:
є
Ј
#layer1_1/weights/Variable/Adam/readIdentitylayer1_1/weights/Variable/Adam*
T0*,
_class"
 loc:@layer1_1/weights/Variable* 
_output_shapes
:
є
Й
2layer1_1/weights/Variable/Adam_1/Initializer/zerosConst*
valueB
є*    *
dtype0*,
_class"
 loc:@layer1_1/weights/Variable* 
_output_shapes
:
є
Ц
 layer1_1/weights/Variable/Adam_1
VariableV2*
shape:
є*
dtype0*
	container *
shared_name *,
_class"
 loc:@layer1_1/weights/Variable* 
_output_shapes
:
є

'layer1_1/weights/Variable/Adam_1/AssignAssign layer1_1/weights/Variable/Adam_12layer1_1/weights/Variable/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@layer1_1/weights/Variable* 
_output_shapes
:
є
Ќ
%layer1_1/weights/Variable/Adam_1/readIdentity layer1_1/weights/Variable/Adam_1*
T0*,
_class"
 loc:@layer1_1/weights/Variable* 
_output_shapes
:
є
Ћ
/layer1_1/biases/Variable/Adam/Initializer/zerosConst*
valueBє*    *
dtype0*+
_class!
loc:@layer1_1/biases/Variable*
_output_shapes	
:є
И
layer1_1/biases/Variable/Adam
VariableV2*
shape:є*
dtype0*
	container *
shared_name *+
_class!
loc:@layer1_1/biases/Variable*
_output_shapes	
:є
њ
$layer1_1/biases/Variable/Adam/AssignAssignlayer1_1/biases/Variable/Adam/layer1_1/biases/Variable/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@layer1_1/biases/Variable*
_output_shapes	
:є
 
"layer1_1/biases/Variable/Adam/readIdentitylayer1_1/biases/Variable/Adam*
T0*+
_class!
loc:@layer1_1/biases/Variable*
_output_shapes	
:є
­
1layer1_1/biases/Variable/Adam_1/Initializer/zerosConst*
valueBє*    *
dtype0*+
_class!
loc:@layer1_1/biases/Variable*
_output_shapes	
:є
К
layer1_1/biases/Variable/Adam_1
VariableV2*
shape:є*
dtype0*
	container *
shared_name *+
_class!
loc:@layer1_1/biases/Variable*
_output_shapes	
:є

&layer1_1/biases/Variable/Adam_1/AssignAssignlayer1_1/biases/Variable/Adam_11layer1_1/biases/Variable/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@layer1_1/biases/Variable*
_output_shapes	
:є
Є
$layer1_1/biases/Variable/Adam_1/readIdentitylayer1_1/biases/Variable/Adam_1*
T0*+
_class!
loc:@layer1_1/biases/Variable*
_output_shapes	
:є
Е
0layer2_1/weights/Variable/Adam/Initializer/zerosConst*
valueB	є
*    *
dtype0*,
_class"
 loc:@layer2_1/weights/Variable*
_output_shapes
:	є

Т
layer2_1/weights/Variable/Adam
VariableV2*
shape:	є
*
dtype0*
	container *
shared_name *,
_class"
 loc:@layer2_1/weights/Variable*
_output_shapes
:	є


%layer2_1/weights/Variable/Adam/AssignAssignlayer2_1/weights/Variable/Adam0layer2_1/weights/Variable/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@layer2_1/weights/Variable*
_output_shapes
:	є

Ї
#layer2_1/weights/Variable/Adam/readIdentitylayer2_1/weights/Variable/Adam*
T0*,
_class"
 loc:@layer2_1/weights/Variable*
_output_shapes
:	є

З
2layer2_1/weights/Variable/Adam_1/Initializer/zerosConst*
valueB	є
*    *
dtype0*,
_class"
 loc:@layer2_1/weights/Variable*
_output_shapes
:	є

Ф
 layer2_1/weights/Variable/Adam_1
VariableV2*
shape:	є
*
dtype0*
	container *
shared_name *,
_class"
 loc:@layer2_1/weights/Variable*
_output_shapes
:	є


'layer2_1/weights/Variable/Adam_1/AssignAssign layer2_1/weights/Variable/Adam_12layer2_1/weights/Variable/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@layer2_1/weights/Variable*
_output_shapes
:	є

Ћ
%layer2_1/weights/Variable/Adam_1/readIdentity layer2_1/weights/Variable/Adam_1*
T0*,
_class"
 loc:@layer2_1/weights/Variable*
_output_shapes
:	є

Љ
/layer2_1/biases/Variable/Adam/Initializer/zerosConst*
valueB
*    *
dtype0*+
_class!
loc:@layer2_1/biases/Variable*
_output_shapes
:

Ж
layer2_1/biases/Variable/Adam
VariableV2*
shape:
*
dtype0*
	container *
shared_name *+
_class!
loc:@layer2_1/biases/Variable*
_output_shapes
:

љ
$layer2_1/biases/Variable/Adam/AssignAssignlayer2_1/biases/Variable/Adam/layer2_1/biases/Variable/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@layer2_1/biases/Variable*
_output_shapes
:


"layer2_1/biases/Variable/Adam/readIdentitylayer2_1/biases/Variable/Adam*
T0*+
_class!
loc:@layer2_1/biases/Variable*
_output_shapes
:

Ћ
1layer2_1/biases/Variable/Adam_1/Initializer/zerosConst*
valueB
*    *
dtype0*+
_class!
loc:@layer2_1/biases/Variable*
_output_shapes
:

И
layer2_1/biases/Variable/Adam_1
VariableV2*
shape:
*
dtype0*
	container *
shared_name *+
_class!
loc:@layer2_1/biases/Variable*
_output_shapes
:

џ
&layer2_1/biases/Variable/Adam_1/AssignAssignlayer2_1/biases/Variable/Adam_11layer2_1/biases/Variable/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@layer2_1/biases/Variable*
_output_shapes
:

Ѓ
$layer2_1/biases/Variable/Adam_1/readIdentitylayer2_1/biases/Variable/Adam_1*
T0*+
_class!
loc:@layer2_1/biases/Variable*
_output_shapes
:

_
train_1/Adam/learning_rateConst*
valueB
 *o:*
dtype0*
_output_shapes
: 
W
train_1/Adam/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
W
train_1/Adam/beta2Const*
valueB
 *wО?*
dtype0*
_output_shapes
: 
Y
train_1/Adam/epsilonConst*
valueB
 *wЬ+2*
dtype0*
_output_shapes
: 
ќ
7train_1/Adam/update_layer1_1/weights/Variable/ApplyAdam	ApplyAdamlayer1_1/weights/Variablelayer1_1/weights/Variable/Adam layer1_1/weights/Variable/Adam_1train_1/beta1_power/readtrain_1/beta2_power/readtrain_1/Adam/learning_ratetrain_1/Adam/beta1train_1/Adam/beta2train_1/Adam/epsilonKtrain_1/gradients/layer1_1/Wx_plus_b/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *,
_class"
 loc:@layer1_1/weights/Variable* 
_output_shapes
:
є
я
6train_1/Adam/update_layer1_1/biases/Variable/ApplyAdam	ApplyAdamlayer1_1/biases/Variablelayer1_1/biases/Variable/Adamlayer1_1/biases/Variable/Adam_1train_1/beta1_power/readtrain_1/beta2_power/readtrain_1/Adam/learning_ratetrain_1/Adam/beta1train_1/Adam/beta2train_1/Adam/epsilonHtrain_1/gradients/layer1_1/Wx_plus_b/add_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *+
_class!
loc:@layer1_1/biases/Variable*
_output_shapes	
:є
ћ
7train_1/Adam/update_layer2_1/weights/Variable/ApplyAdam	ApplyAdamlayer2_1/weights/Variablelayer2_1/weights/Variable/Adam layer2_1/weights/Variable/Adam_1train_1/beta1_power/readtrain_1/beta2_power/readtrain_1/Adam/learning_ratetrain_1/Adam/beta1train_1/Adam/beta2train_1/Adam/epsilonKtrain_1/gradients/layer2_1/Wx_plus_b/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *,
_class"
 loc:@layer2_1/weights/Variable*
_output_shapes
:	є

ю
6train_1/Adam/update_layer2_1/biases/Variable/ApplyAdam	ApplyAdamlayer2_1/biases/Variablelayer2_1/biases/Variable/Adamlayer2_1/biases/Variable/Adam_1train_1/beta1_power/readtrain_1/beta2_power/readtrain_1/Adam/learning_ratetrain_1/Adam/beta1train_1/Adam/beta2train_1/Adam/epsilonHtrain_1/gradients/layer2_1/Wx_plus_b/add_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *+
_class!
loc:@layer2_1/biases/Variable*
_output_shapes
:

љ
train_1/Adam/mulMultrain_1/beta1_power/readtrain_1/Adam/beta18^train_1/Adam/update_layer1_1/weights/Variable/ApplyAdam7^train_1/Adam/update_layer1_1/biases/Variable/ApplyAdam8^train_1/Adam/update_layer2_1/weights/Variable/ApplyAdam7^train_1/Adam/update_layer2_1/biases/Variable/ApplyAdam*
T0*+
_class!
loc:@layer1_1/biases/Variable*
_output_shapes
: 
Л
train_1/Adam/AssignAssigntrain_1/beta1_powertrain_1/Adam/mul*
T0*
validate_shape(*
use_locking( *+
_class!
loc:@layer1_1/biases/Variable*
_output_shapes
: 
ћ
train_1/Adam/mul_1Multrain_1/beta2_power/readtrain_1/Adam/beta28^train_1/Adam/update_layer1_1/weights/Variable/ApplyAdam7^train_1/Adam/update_layer1_1/biases/Variable/ApplyAdam8^train_1/Adam/update_layer2_1/weights/Variable/ApplyAdam7^train_1/Adam/update_layer2_1/biases/Variable/ApplyAdam*
T0*+
_class!
loc:@layer1_1/biases/Variable*
_output_shapes
: 
П
train_1/Adam/Assign_1Assigntrain_1/beta2_powertrain_1/Adam/mul_1*
T0*
validate_shape(*
use_locking( *+
_class!
loc:@layer1_1/biases/Variable*
_output_shapes
: 
Ј
train_1/AdamNoOp8^train_1/Adam/update_layer1_1/weights/Variable/ApplyAdam7^train_1/Adam/update_layer1_1/biases/Variable/ApplyAdam8^train_1/Adam/update_layer2_1/weights/Variable/ApplyAdam7^train_1/Adam/update_layer2_1/biases/Variable/ApplyAdam^train_1/Adam/Assign^train_1/Adam/Assign_1
p
.accuracy_2/correct_prediction/ArgMax/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
Р
$accuracy_2/correct_prediction/ArgMaxArgMaxlayer2_1/activation.accuracy_2/correct_prediction/ArgMax/dimension*
T0*

Tidx0*
output_type0	*#
_output_shapes
:џџџџџџџџџ

#accuracy_2/correct_prediction/EqualEqual$accuracy_2/correct_prediction/ArgMaxinput_2/y-input*
T0	*#
_output_shapes
:џџџџџџџџџ

accuracy_2/accuracy/CastCast#accuracy_2/correct_prediction/Equal*

SrcT0
*

DstT0*#
_output_shapes
:џџџџџџџџџ
c
accuracy_2/accuracy/ConstConst*
valueB: *
dtype0*
_output_shapes
:

accuracy_2/accuracy/MeanMeanaccuracy_2/accuracy/Castaccuracy_2/accuracy/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
Z
accuracy_3/tagsConst*
valueB B
accuracy_3*
dtype0*
_output_shapes
: 
g

accuracy_3ScalarSummaryaccuracy_3/tagsaccuracy_2/accuracy/Mean*
T0*
_output_shapes
: 

Merge_1/MergeSummaryMergeSummaryinput_reshape/inputinput_reshape_1/inputlayer1/weights/summaries/mean!layer1/weights/summaries/stddev_1layer1/weights/summaries/maxlayer1/weights/summaries/min"layer1/weights/summaries/histogramlayer1/biases/summaries/mean layer1/biases/summaries/stddev_1layer1/biases/summaries/maxlayer1/biases/summaries/min!layer1/biases/summaries/histogram layer1/Wx_plus_b/pre_activationslayer1/activations dropout/dropout_keep_probabilitylayer2/weights/summaries/mean!layer2/weights/summaries/stddev_1layer2/weights/summaries/maxlayer2/weights/summaries/min"layer2/weights/summaries/histogramlayer2/biases/summaries/mean layer2/biases/summaries/stddev_1layer2/biases/summaries/maxlayer2/biases/summaries/min!layer2/biases/summaries/histogram layer2/Wx_plus_b/pre_activationslayer2/activationscross_entropy_1
accuracy_1input_reshape_2/inputlayer1_1/weights/summaries/mean#layer1_1/weights/summaries/stddev_1layer1_1/weights/summaries/maxlayer1_1/weights/summaries/min$layer1_1/weights/summaries/histogramlayer1_1/biases/summaries/mean"layer1_1/biases/summaries/stddev_1layer1_1/biases/summaries/maxlayer1_1/biases/summaries/min#layer1_1/biases/summaries/histogram"layer1_1/Wx_plus_b/pre_activationslayer1_1/activations"dropout_1/dropout_keep_probabilitylayer2_1/weights/summaries/mean#layer2_1/weights/summaries/stddev_1layer2_1/weights/summaries/maxlayer2_1/weights/summaries/min$layer2_1/weights/summaries/histogramlayer2_1/biases/summaries/mean"layer2_1/biases/summaries/stddev_1layer2_1/biases/summaries/maxlayer2_1/biases/summaries/min#layer2_1/biases/summaries/histogram"layer2_1/Wx_plus_b/pre_activationslayer2_1/activationscross_entropy_3
accuracy_3*
N9*
_output_shapes
: 
t
input_3/x-inputPlaceholder*
dtype0*
shape:џџџџџџџџџ*(
_output_shapes
:џџџџџџџџџ
j
input_3/y-inputPlaceholder*
dtype0	*
shape:џџџџџџџџџ*#
_output_shapes
:џџџџџџџџџ
v
input_reshape_3/Reshape/shapeConst*%
valueB"џџџџ         *
dtype0*
_output_shapes
:

input_reshape_3/ReshapeReshapeinput_3/x-inputinput_reshape_3/Reshape/shape*
T0*
Tshape0*/
_output_shapes
:џџџџџџџџџ
o
input_reshape_3/input/tagConst*&
valueB Binput_reshape_3/input*
dtype0*
_output_shapes
: 
­
input_reshape_3/inputImageSummaryinput_reshape_3/input/taginput_reshape_3/Reshape*

max_images
*
T0*
	bad_colorB:џ  џ*
_output_shapes
: 
x
'layer1_2/weights/truncated_normal/shapeConst*
valueB"  є  *
dtype0*
_output_shapes
:
k
&layer1_2/weights/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
m
(layer1_2/weights/truncated_normal/stddevConst*
valueB
 *ЭЬЬ=*
dtype0*
_output_shapes
: 
О
1layer1_2/weights/truncated_normal/TruncatedNormalTruncatedNormal'layer1_2/weights/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0* 
_output_shapes
:
є
Д
%layer1_2/weights/truncated_normal/mulMul1layer1_2/weights/truncated_normal/TruncatedNormal(layer1_2/weights/truncated_normal/stddev*
T0* 
_output_shapes
:
є
Ђ
!layer1_2/weights/truncated_normalAdd%layer1_2/weights/truncated_normal/mul&layer1_2/weights/truncated_normal/mean*
T0* 
_output_shapes
:
є

layer1_2/weights/Variable
VariableV2*
shape:
є*
dtype0*
	container *
shared_name * 
_output_shapes
:
є
ъ
 layer1_2/weights/Variable/AssignAssignlayer1_2/weights/Variable!layer1_2/weights/truncated_normal*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@layer1_2/weights/Variable* 
_output_shapes
:
є

layer1_2/weights/Variable/readIdentitylayer1_2/weights/Variable*
T0*,
_class"
 loc:@layer1_2/weights/Variable* 
_output_shapes
:
є
a
layer1_2/weights/summaries/RankConst*
value	B :*
dtype0*
_output_shapes
: 
h
&layer1_2/weights/summaries/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
h
&layer1_2/weights/summaries/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Т
 layer1_2/weights/summaries/rangeRange&layer1_2/weights/summaries/range/startlayer1_2/weights/summaries/Rank&layer1_2/weights/summaries/range/delta*

Tidx0*
_output_shapes
:
Ї
layer1_2/weights/summaries/MeanMeanlayer1_2/weights/Variable/read layer1_2/weights/summaries/range*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

$layer1_2/weights/summaries/mean/tagsConst*0
value'B% Blayer1_2/weights/summaries/mean*
dtype0*
_output_shapes
: 

layer1_2/weights/summaries/meanScalarSummary$layer1_2/weights/summaries/mean/tagslayer1_2/weights/summaries/Mean*
T0*
_output_shapes
: 

%layer1_2/weights/summaries/stddev/subSublayer1_2/weights/Variable/readlayer1_2/weights/summaries/Mean*
T0* 
_output_shapes
:
є

(layer1_2/weights/summaries/stddev/SquareSquare%layer1_2/weights/summaries/stddev/sub*
T0* 
_output_shapes
:
є
x
'layer1_2/weights/summaries/stddev/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
П
&layer1_2/weights/summaries/stddev/MeanMean(layer1_2/weights/summaries/stddev/Square'layer1_2/weights/summaries/stddev/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
w
&layer1_2/weights/summaries/stddev/SqrtSqrt&layer1_2/weights/summaries/stddev/Mean*
T0*
_output_shapes
: 

(layer1_2/weights/summaries/stddev_1/tagsConst*4
value+B) B#layer1_2/weights/summaries/stddev_1*
dtype0*
_output_shapes
: 
Ї
#layer1_2/weights/summaries/stddev_1ScalarSummary(layer1_2/weights/summaries/stddev_1/tags&layer1_2/weights/summaries/stddev/Sqrt*
T0*
_output_shapes
: 
c
!layer1_2/weights/summaries/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
j
(layer1_2/weights/summaries/range_1/startConst*
value	B : *
dtype0*
_output_shapes
: 
j
(layer1_2/weights/summaries/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ъ
"layer1_2/weights/summaries/range_1Range(layer1_2/weights/summaries/range_1/start!layer1_2/weights/summaries/Rank_1(layer1_2/weights/summaries/range_1/delta*

Tidx0*
_output_shapes
:
Ї
layer1_2/weights/summaries/MaxMaxlayer1_2/weights/Variable/read"layer1_2/weights/summaries/range_1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

#layer1_2/weights/summaries/max/tagsConst*/
value&B$ Blayer1_2/weights/summaries/max*
dtype0*
_output_shapes
: 

layer1_2/weights/summaries/maxScalarSummary#layer1_2/weights/summaries/max/tagslayer1_2/weights/summaries/Max*
T0*
_output_shapes
: 
c
!layer1_2/weights/summaries/Rank_2Const*
value	B :*
dtype0*
_output_shapes
: 
j
(layer1_2/weights/summaries/range_2/startConst*
value	B : *
dtype0*
_output_shapes
: 
j
(layer1_2/weights/summaries/range_2/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ъ
"layer1_2/weights/summaries/range_2Range(layer1_2/weights/summaries/range_2/start!layer1_2/weights/summaries/Rank_2(layer1_2/weights/summaries/range_2/delta*

Tidx0*
_output_shapes
:
Ї
layer1_2/weights/summaries/MinMinlayer1_2/weights/Variable/read"layer1_2/weights/summaries/range_2*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

#layer1_2/weights/summaries/min/tagsConst*/
value&B$ Blayer1_2/weights/summaries/min*
dtype0*
_output_shapes
: 

layer1_2/weights/summaries/minScalarSummary#layer1_2/weights/summaries/min/tagslayer1_2/weights/summaries/Min*
T0*
_output_shapes
: 

(layer1_2/weights/summaries/histogram/tagConst*5
value,B* B$layer1_2/weights/summaries/histogram*
dtype0*
_output_shapes
: 
Ѓ
$layer1_2/weights/summaries/histogramHistogramSummary(layer1_2/weights/summaries/histogram/taglayer1_2/weights/Variable/read*
T0*
_output_shapes
: 
d
layer1_2/biases/ConstConst*
valueBє*ЭЬЬ=*
dtype0*
_output_shapes	
:є

layer1_2/biases/Variable
VariableV2*
shape:є*
dtype0*
	container *
shared_name *
_output_shapes	
:є
ж
layer1_2/biases/Variable/AssignAssignlayer1_2/biases/Variablelayer1_2/biases/Const*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@layer1_2/biases/Variable*
_output_shapes	
:є

layer1_2/biases/Variable/readIdentitylayer1_2/biases/Variable*
T0*+
_class!
loc:@layer1_2/biases/Variable*
_output_shapes	
:є
`
layer1_2/biases/summaries/RankConst*
value	B :*
dtype0*
_output_shapes
: 
g
%layer1_2/biases/summaries/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
g
%layer1_2/biases/summaries/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
О
layer1_2/biases/summaries/rangeRange%layer1_2/biases/summaries/range/startlayer1_2/biases/summaries/Rank%layer1_2/biases/summaries/range/delta*

Tidx0*
_output_shapes
:
Є
layer1_2/biases/summaries/MeanMeanlayer1_2/biases/Variable/readlayer1_2/biases/summaries/range*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

#layer1_2/biases/summaries/mean/tagsConst*/
value&B$ Blayer1_2/biases/summaries/mean*
dtype0*
_output_shapes
: 

layer1_2/biases/summaries/meanScalarSummary#layer1_2/biases/summaries/mean/tagslayer1_2/biases/summaries/Mean*
T0*
_output_shapes
: 

$layer1_2/biases/summaries/stddev/subSublayer1_2/biases/Variable/readlayer1_2/biases/summaries/Mean*
T0*
_output_shapes	
:є
}
'layer1_2/biases/summaries/stddev/SquareSquare$layer1_2/biases/summaries/stddev/sub*
T0*
_output_shapes	
:є
p
&layer1_2/biases/summaries/stddev/ConstConst*
valueB: *
dtype0*
_output_shapes
:
М
%layer1_2/biases/summaries/stddev/MeanMean'layer1_2/biases/summaries/stddev/Square&layer1_2/biases/summaries/stddev/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
u
%layer1_2/biases/summaries/stddev/SqrtSqrt%layer1_2/biases/summaries/stddev/Mean*
T0*
_output_shapes
: 

'layer1_2/biases/summaries/stddev_1/tagsConst*3
value*B( B"layer1_2/biases/summaries/stddev_1*
dtype0*
_output_shapes
: 
Є
"layer1_2/biases/summaries/stddev_1ScalarSummary'layer1_2/biases/summaries/stddev_1/tags%layer1_2/biases/summaries/stddev/Sqrt*
T0*
_output_shapes
: 
b
 layer1_2/biases/summaries/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
i
'layer1_2/biases/summaries/range_1/startConst*
value	B : *
dtype0*
_output_shapes
: 
i
'layer1_2/biases/summaries/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ц
!layer1_2/biases/summaries/range_1Range'layer1_2/biases/summaries/range_1/start layer1_2/biases/summaries/Rank_1'layer1_2/biases/summaries/range_1/delta*

Tidx0*
_output_shapes
:
Є
layer1_2/biases/summaries/MaxMaxlayer1_2/biases/Variable/read!layer1_2/biases/summaries/range_1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

"layer1_2/biases/summaries/max/tagsConst*.
value%B# Blayer1_2/biases/summaries/max*
dtype0*
_output_shapes
: 

layer1_2/biases/summaries/maxScalarSummary"layer1_2/biases/summaries/max/tagslayer1_2/biases/summaries/Max*
T0*
_output_shapes
: 
b
 layer1_2/biases/summaries/Rank_2Const*
value	B :*
dtype0*
_output_shapes
: 
i
'layer1_2/biases/summaries/range_2/startConst*
value	B : *
dtype0*
_output_shapes
: 
i
'layer1_2/biases/summaries/range_2/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ц
!layer1_2/biases/summaries/range_2Range'layer1_2/biases/summaries/range_2/start layer1_2/biases/summaries/Rank_2'layer1_2/biases/summaries/range_2/delta*

Tidx0*
_output_shapes
:
Є
layer1_2/biases/summaries/MinMinlayer1_2/biases/Variable/read!layer1_2/biases/summaries/range_2*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

"layer1_2/biases/summaries/min/tagsConst*.
value%B# Blayer1_2/biases/summaries/min*
dtype0*
_output_shapes
: 

layer1_2/biases/summaries/minScalarSummary"layer1_2/biases/summaries/min/tagslayer1_2/biases/summaries/Min*
T0*
_output_shapes
: 

'layer1_2/biases/summaries/histogram/tagConst*4
value+B) B#layer1_2/biases/summaries/histogram*
dtype0*
_output_shapes
: 
 
#layer1_2/biases/summaries/histogramHistogramSummary'layer1_2/biases/summaries/histogram/taglayer1_2/biases/Variable/read*
T0*
_output_shapes
: 
­
layer1_2/Wx_plus_b/MatMulMatMulinput_3/x-inputlayer1_2/weights/Variable/read*
transpose_a( *
transpose_b( *
T0*(
_output_shapes
:џџџџџџџџџє

layer1_2/Wx_plus_b/addAddlayer1_2/Wx_plus_b/MatMullayer1_2/biases/Variable/read*
T0*(
_output_shapes
:џџџџџџџџџє

&layer1_2/Wx_plus_b/pre_activations/tagConst*3
value*B( B"layer1_2/Wx_plus_b/pre_activations*
dtype0*
_output_shapes
: 

"layer1_2/Wx_plus_b/pre_activationsHistogramSummary&layer1_2/Wx_plus_b/pre_activations/taglayer1_2/Wx_plus_b/add*
T0*
_output_shapes
: 
f
layer1_2/activationRelulayer1_2/Wx_plus_b/add*
T0*(
_output_shapes
:џџџџџџџџџє
m
layer1_2/activations/tagConst*%
valueB Blayer1_2/activations*
dtype0*
_output_shapes
: 
x
layer1_2/activationsHistogramSummarylayer1_2/activations/taglayer1_2/activation*
T0*
_output_shapes
: 
Z
dropout_2/PlaceholderPlaceholder*
dtype0*
shape:*
_output_shapes
:

'dropout_2/dropout_keep_probability/tagsConst*3
value*B( B"dropout_2/dropout_keep_probability*
dtype0*
_output_shapes
: 

"dropout_2/dropout_keep_probabilityScalarSummary'dropout_2/dropout_keep_probability/tagsdropout_2/Placeholder*
T0*
_output_shapes
: 
j
dropout_2/dropout/ShapeShapelayer1_2/activation*
T0*
out_type0*
_output_shapes
:
i
$dropout_2/dropout/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: 
i
$dropout_2/dropout/random_uniform/maxConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Б
.dropout_2/dropout/random_uniform/RandomUniformRandomUniformdropout_2/dropout/Shape*

seed *
seed2 *
dtype0*
T0*(
_output_shapes
:џџџџџџџџџє

$dropout_2/dropout/random_uniform/subSub$dropout_2/dropout/random_uniform/max$dropout_2/dropout/random_uniform/min*
T0*
_output_shapes
: 
Д
$dropout_2/dropout/random_uniform/mulMul.dropout_2/dropout/random_uniform/RandomUniform$dropout_2/dropout/random_uniform/sub*
T0*(
_output_shapes
:џџџџџџџџџє
І
 dropout_2/dropout/random_uniformAdd$dropout_2/dropout/random_uniform/mul$dropout_2/dropout/random_uniform/min*
T0*(
_output_shapes
:џџџџџџџџџє
x
dropout_2/dropout/addAdddropout_2/Placeholder dropout_2/dropout/random_uniform*
T0*
_output_shapes
:
Z
dropout_2/dropout/FloorFloordropout_2/dropout/add*
T0*
_output_shapes
:
o
dropout_2/dropout/divRealDivlayer1_2/activationdropout_2/Placeholder*
T0*
_output_shapes
:

dropout_2/dropout/mulMuldropout_2/dropout/divdropout_2/dropout/Floor*
T0*(
_output_shapes
:џџџџџџџџџє
x
'layer2_2/weights/truncated_normal/shapeConst*
valueB"є  
   *
dtype0*
_output_shapes
:
k
&layer2_2/weights/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
m
(layer2_2/weights/truncated_normal/stddevConst*
valueB
 *ЭЬЬ=*
dtype0*
_output_shapes
: 
Н
1layer2_2/weights/truncated_normal/TruncatedNormalTruncatedNormal'layer2_2/weights/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*
_output_shapes
:	є

Г
%layer2_2/weights/truncated_normal/mulMul1layer2_2/weights/truncated_normal/TruncatedNormal(layer2_2/weights/truncated_normal/stddev*
T0*
_output_shapes
:	є

Ё
!layer2_2/weights/truncated_normalAdd%layer2_2/weights/truncated_normal/mul&layer2_2/weights/truncated_normal/mean*
T0*
_output_shapes
:	є


layer2_2/weights/Variable
VariableV2*
shape:	є
*
dtype0*
	container *
shared_name *
_output_shapes
:	є

щ
 layer2_2/weights/Variable/AssignAssignlayer2_2/weights/Variable!layer2_2/weights/truncated_normal*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@layer2_2/weights/Variable*
_output_shapes
:	є


layer2_2/weights/Variable/readIdentitylayer2_2/weights/Variable*
T0*,
_class"
 loc:@layer2_2/weights/Variable*
_output_shapes
:	є

a
layer2_2/weights/summaries/RankConst*
value	B :*
dtype0*
_output_shapes
: 
h
&layer2_2/weights/summaries/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
h
&layer2_2/weights/summaries/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Т
 layer2_2/weights/summaries/rangeRange&layer2_2/weights/summaries/range/startlayer2_2/weights/summaries/Rank&layer2_2/weights/summaries/range/delta*

Tidx0*
_output_shapes
:
Ї
layer2_2/weights/summaries/MeanMeanlayer2_2/weights/Variable/read layer2_2/weights/summaries/range*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

$layer2_2/weights/summaries/mean/tagsConst*0
value'B% Blayer2_2/weights/summaries/mean*
dtype0*
_output_shapes
: 

layer2_2/weights/summaries/meanScalarSummary$layer2_2/weights/summaries/mean/tagslayer2_2/weights/summaries/Mean*
T0*
_output_shapes
: 

%layer2_2/weights/summaries/stddev/subSublayer2_2/weights/Variable/readlayer2_2/weights/summaries/Mean*
T0*
_output_shapes
:	є


(layer2_2/weights/summaries/stddev/SquareSquare%layer2_2/weights/summaries/stddev/sub*
T0*
_output_shapes
:	є

x
'layer2_2/weights/summaries/stddev/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
П
&layer2_2/weights/summaries/stddev/MeanMean(layer2_2/weights/summaries/stddev/Square'layer2_2/weights/summaries/stddev/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
w
&layer2_2/weights/summaries/stddev/SqrtSqrt&layer2_2/weights/summaries/stddev/Mean*
T0*
_output_shapes
: 

(layer2_2/weights/summaries/stddev_1/tagsConst*4
value+B) B#layer2_2/weights/summaries/stddev_1*
dtype0*
_output_shapes
: 
Ї
#layer2_2/weights/summaries/stddev_1ScalarSummary(layer2_2/weights/summaries/stddev_1/tags&layer2_2/weights/summaries/stddev/Sqrt*
T0*
_output_shapes
: 
c
!layer2_2/weights/summaries/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
j
(layer2_2/weights/summaries/range_1/startConst*
value	B : *
dtype0*
_output_shapes
: 
j
(layer2_2/weights/summaries/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ъ
"layer2_2/weights/summaries/range_1Range(layer2_2/weights/summaries/range_1/start!layer2_2/weights/summaries/Rank_1(layer2_2/weights/summaries/range_1/delta*

Tidx0*
_output_shapes
:
Ї
layer2_2/weights/summaries/MaxMaxlayer2_2/weights/Variable/read"layer2_2/weights/summaries/range_1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

#layer2_2/weights/summaries/max/tagsConst*/
value&B$ Blayer2_2/weights/summaries/max*
dtype0*
_output_shapes
: 

layer2_2/weights/summaries/maxScalarSummary#layer2_2/weights/summaries/max/tagslayer2_2/weights/summaries/Max*
T0*
_output_shapes
: 
c
!layer2_2/weights/summaries/Rank_2Const*
value	B :*
dtype0*
_output_shapes
: 
j
(layer2_2/weights/summaries/range_2/startConst*
value	B : *
dtype0*
_output_shapes
: 
j
(layer2_2/weights/summaries/range_2/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ъ
"layer2_2/weights/summaries/range_2Range(layer2_2/weights/summaries/range_2/start!layer2_2/weights/summaries/Rank_2(layer2_2/weights/summaries/range_2/delta*

Tidx0*
_output_shapes
:
Ї
layer2_2/weights/summaries/MinMinlayer2_2/weights/Variable/read"layer2_2/weights/summaries/range_2*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

#layer2_2/weights/summaries/min/tagsConst*/
value&B$ Blayer2_2/weights/summaries/min*
dtype0*
_output_shapes
: 

layer2_2/weights/summaries/minScalarSummary#layer2_2/weights/summaries/min/tagslayer2_2/weights/summaries/Min*
T0*
_output_shapes
: 

(layer2_2/weights/summaries/histogram/tagConst*5
value,B* B$layer2_2/weights/summaries/histogram*
dtype0*
_output_shapes
: 
Ѓ
$layer2_2/weights/summaries/histogramHistogramSummary(layer2_2/weights/summaries/histogram/taglayer2_2/weights/Variable/read*
T0*
_output_shapes
: 
b
layer2_2/biases/ConstConst*
valueB
*ЭЬЬ=*
dtype0*
_output_shapes
:


layer2_2/biases/Variable
VariableV2*
shape:
*
dtype0*
	container *
shared_name *
_output_shapes
:

е
layer2_2/biases/Variable/AssignAssignlayer2_2/biases/Variablelayer2_2/biases/Const*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@layer2_2/biases/Variable*
_output_shapes
:


layer2_2/biases/Variable/readIdentitylayer2_2/biases/Variable*
T0*+
_class!
loc:@layer2_2/biases/Variable*
_output_shapes
:

`
layer2_2/biases/summaries/RankConst*
value	B :*
dtype0*
_output_shapes
: 
g
%layer2_2/biases/summaries/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
g
%layer2_2/biases/summaries/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
О
layer2_2/biases/summaries/rangeRange%layer2_2/biases/summaries/range/startlayer2_2/biases/summaries/Rank%layer2_2/biases/summaries/range/delta*

Tidx0*
_output_shapes
:
Є
layer2_2/biases/summaries/MeanMeanlayer2_2/biases/Variable/readlayer2_2/biases/summaries/range*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

#layer2_2/biases/summaries/mean/tagsConst*/
value&B$ Blayer2_2/biases/summaries/mean*
dtype0*
_output_shapes
: 

layer2_2/biases/summaries/meanScalarSummary#layer2_2/biases/summaries/mean/tagslayer2_2/biases/summaries/Mean*
T0*
_output_shapes
: 

$layer2_2/biases/summaries/stddev/subSublayer2_2/biases/Variable/readlayer2_2/biases/summaries/Mean*
T0*
_output_shapes
:

|
'layer2_2/biases/summaries/stddev/SquareSquare$layer2_2/biases/summaries/stddev/sub*
T0*
_output_shapes
:

p
&layer2_2/biases/summaries/stddev/ConstConst*
valueB: *
dtype0*
_output_shapes
:
М
%layer2_2/biases/summaries/stddev/MeanMean'layer2_2/biases/summaries/stddev/Square&layer2_2/biases/summaries/stddev/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
u
%layer2_2/biases/summaries/stddev/SqrtSqrt%layer2_2/biases/summaries/stddev/Mean*
T0*
_output_shapes
: 

'layer2_2/biases/summaries/stddev_1/tagsConst*3
value*B( B"layer2_2/biases/summaries/stddev_1*
dtype0*
_output_shapes
: 
Є
"layer2_2/biases/summaries/stddev_1ScalarSummary'layer2_2/biases/summaries/stddev_1/tags%layer2_2/biases/summaries/stddev/Sqrt*
T0*
_output_shapes
: 
b
 layer2_2/biases/summaries/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
i
'layer2_2/biases/summaries/range_1/startConst*
value	B : *
dtype0*
_output_shapes
: 
i
'layer2_2/biases/summaries/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ц
!layer2_2/biases/summaries/range_1Range'layer2_2/biases/summaries/range_1/start layer2_2/biases/summaries/Rank_1'layer2_2/biases/summaries/range_1/delta*

Tidx0*
_output_shapes
:
Є
layer2_2/biases/summaries/MaxMaxlayer2_2/biases/Variable/read!layer2_2/biases/summaries/range_1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

"layer2_2/biases/summaries/max/tagsConst*.
value%B# Blayer2_2/biases/summaries/max*
dtype0*
_output_shapes
: 

layer2_2/biases/summaries/maxScalarSummary"layer2_2/biases/summaries/max/tagslayer2_2/biases/summaries/Max*
T0*
_output_shapes
: 
b
 layer2_2/biases/summaries/Rank_2Const*
value	B :*
dtype0*
_output_shapes
: 
i
'layer2_2/biases/summaries/range_2/startConst*
value	B : *
dtype0*
_output_shapes
: 
i
'layer2_2/biases/summaries/range_2/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ц
!layer2_2/biases/summaries/range_2Range'layer2_2/biases/summaries/range_2/start layer2_2/biases/summaries/Rank_2'layer2_2/biases/summaries/range_2/delta*

Tidx0*
_output_shapes
:
Є
layer2_2/biases/summaries/MinMinlayer2_2/biases/Variable/read!layer2_2/biases/summaries/range_2*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

"layer2_2/biases/summaries/min/tagsConst*.
value%B# Blayer2_2/biases/summaries/min*
dtype0*
_output_shapes
: 

layer2_2/biases/summaries/minScalarSummary"layer2_2/biases/summaries/min/tagslayer2_2/biases/summaries/Min*
T0*
_output_shapes
: 

'layer2_2/biases/summaries/histogram/tagConst*4
value+B) B#layer2_2/biases/summaries/histogram*
dtype0*
_output_shapes
: 
 
#layer2_2/biases/summaries/histogramHistogramSummary'layer2_2/biases/summaries/histogram/taglayer2_2/biases/Variable/read*
T0*
_output_shapes
: 
В
layer2_2/Wx_plus_b/MatMulMatMuldropout_2/dropout/mullayer2_2/weights/Variable/read*
transpose_a( *
transpose_b( *
T0*'
_output_shapes
:џџџџџџџџџ


layer2_2/Wx_plus_b/addAddlayer2_2/Wx_plus_b/MatMullayer2_2/biases/Variable/read*
T0*'
_output_shapes
:џџџџџџџџџ


&layer2_2/Wx_plus_b/pre_activations/tagConst*3
value*B( B"layer2_2/Wx_plus_b/pre_activations*
dtype0*
_output_shapes
: 

"layer2_2/Wx_plus_b/pre_activationsHistogramSummary&layer2_2/Wx_plus_b/pre_activations/taglayer2_2/Wx_plus_b/add*
T0*
_output_shapes
: 
i
layer2_2/activationIdentitylayer2_2/Wx_plus_b/add*
T0*'
_output_shapes
:џџџџџџџџџ

m
layer2_2/activations/tagConst*%
valueB Blayer2_2/activations*
dtype0*
_output_shapes
: 
x
layer2_2/activationsHistogramSummarylayer2_2/activations/taglayer2_2/activation*
T0*
_output_shapes
: 

=cross_entropy_4/total/sparse_softmax_cross_entropy_loss/ConstConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

Fcross_entropy_4/total/sparse_softmax_cross_entropy_loss/xentropy/ShapeShapeinput_3/y-input*
T0	*
out_type0*
_output_shapes
:
ц
Icross_entropy_4/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy#SparseSoftmaxCrossEntropyWithLogitslayer2_2/activationinput_3/y-input*
T0*
Tlabels0	*6
_output_shapes$
":џџџџџџџџџ:џџџџџџџџџ


Zcross_entropy_4/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/weights/shapeConst*
valueB *
dtype0*
_output_shapes
: 

Ycross_entropy_4/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/weights/rankConst*
value	B : *
dtype0*
_output_shapes
: 
т
Ycross_entropy_4/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/values/shapeShapeIcross_entropy_4/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy*
T0*
out_type0*
_output_shapes
:

Xcross_entropy_4/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
p
hcross_entropy_4/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_successNoOp
х
;cross_entropy_4/total/sparse_softmax_cross_entropy_loss/MulMulIcross_entropy_4/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy=cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Consti^cross_entropy_4/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
T0*#
_output_shapes
:џџџџџџџџџ
є
?cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Const_1Consti^cross_entropy_4/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB: *
dtype0*
_output_shapes
:
ў
;cross_entropy_4/total/sparse_softmax_cross_entropy_loss/SumSum;cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Mul?cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Const_1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
ћ
Kcross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/Equal/yConsti^cross_entropy_4/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
џ
Icross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/EqualEqual=cross_entropy_4/total/sparse_softmax_cross_entropy_loss/ConstKcross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/Equal/y*
T0*
_output_shapes
: 
ў
Ncross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/zeros_likeConsti^cross_entropy_4/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 

Scross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/ones_like/ShapeConsti^cross_entropy_4/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 

Scross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/ones_like/ConstConsti^cross_entropy_4/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 
 
Mcross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/ones_likeFillScross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/ones_like/ShapeScross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/ones_like/Const*
T0*
_output_shapes
: 
п
Jcross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/SelectSelectIcross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/EqualNcross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/zeros_likeMcross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/ones_like*
T0*
_output_shapes
: 
І
xcross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/shapeConsti^cross_entropy_4/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
Є
wcross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/rankConsti^cross_entropy_4/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
value	B : *
dtype0*
_output_shapes
: 
ы
wcross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/shapeShapeIcross_entropy_4/total/sparse_softmax_cross_entropy_loss/xentropy/xentropyi^cross_entropy_4/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
T0*
out_type0*
_output_shapes
:
Ѓ
vcross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/rankConsti^cross_entropy_4/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
value	B :*
dtype0*
_output_shapes
: 
њ
cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOpi^cross_entropy_4/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success
у
ecross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/ShapeShapeIcross_entropy_4/total/sparse_softmax_cross_entropy_loss/xentropy/xentropyi^cross_entropy_4/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success^cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
T0*
out_type0*
_output_shapes
:

ecross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/ConstConsti^cross_entropy_4/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success^cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 
у
_cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_likeFillecross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/Shapeecross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/Const*
T0*#
_output_shapes
:џџџџџџџџџ
З
Ucross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weightsMulJcross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/Select_cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like*
T0*#
_output_shapes
:џџџџџџџџџ
ў
Icross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/ConstConsti^cross_entropy_4/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB: *
dtype0*
_output_shapes
:
Њ
Ccross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_presentSumUcross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weightsIcross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
э
?cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Const_2Consti^cross_entropy_4/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 

=cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Sum_1Sum;cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Sum?cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Const_2*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
ё
Across_entropy_4/total/sparse_softmax_cross_entropy_loss/Greater/yConsti^cross_entropy_4/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
ѓ
?cross_entropy_4/total/sparse_softmax_cross_entropy_loss/GreaterGreaterCcross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_presentAcross_entropy_4/total/sparse_softmax_cross_entropy_loss/Greater/y*
T0*
_output_shapes
: 
я
?cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Equal/yConsti^cross_entropy_4/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
э
=cross_entropy_4/total/sparse_softmax_cross_entropy_loss/EqualEqualCcross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present?cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Equal/y*
T0*
_output_shapes
: 
ѕ
Gcross_entropy_4/total/sparse_softmax_cross_entropy_loss/ones_like/ShapeConsti^cross_entropy_4/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
ї
Gcross_entropy_4/total/sparse_softmax_cross_entropy_loss/ones_like/ConstConsti^cross_entropy_4/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ќ
Across_entropy_4/total/sparse_softmax_cross_entropy_loss/ones_likeFillGcross_entropy_4/total/sparse_softmax_cross_entropy_loss/ones_like/ShapeGcross_entropy_4/total/sparse_softmax_cross_entropy_loss/ones_like/Const*
T0*
_output_shapes
: 
А
>cross_entropy_4/total/sparse_softmax_cross_entropy_loss/SelectSelect=cross_entropy_4/total/sparse_softmax_cross_entropy_loss/EqualAcross_entropy_4/total/sparse_softmax_cross_entropy_loss/ones_likeCcross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present*
T0*
_output_shapes
: 
ц
;cross_entropy_4/total/sparse_softmax_cross_entropy_loss/divRealDiv=cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Sum_1>cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 
ђ
Bcross_entropy_4/total/sparse_softmax_cross_entropy_loss/zeros_likeConsti^cross_entropy_4/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
Њ
=cross_entropy_4/total/sparse_softmax_cross_entropy_loss/valueSelect?cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Greater;cross_entropy_4/total/sparse_softmax_cross_entropy_loss/divBcross_entropy_4/total/sparse_softmax_cross_entropy_loss/zeros_like*
T0*
_output_shapes
: 
d
cross_entropy_5/tagsConst* 
valueB Bcross_entropy_5*
dtype0*
_output_shapes
: 

cross_entropy_5ScalarSummarycross_entropy_5/tags=cross_entropy_4/total/sparse_softmax_cross_entropy_loss/value*
T0*
_output_shapes
: 
Z
train_2/gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
`
train_2/gradients/grad_ys_0Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
train_2/gradients/FillFilltrain_2/gradients/Shapetrain_2/gradients/grad_ys_0*
T0*
_output_shapes
: 
Є
_train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/value_grad/zeros_likeConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Р
[train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/value_grad/SelectSelect?cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Greatertrain_2/gradients/Fill_train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/value_grad/zeros_like*
T0*
_output_shapes
: 
Т
]train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/value_grad/Select_1Select?cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Greater_train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/value_grad/zeros_liketrain_2/gradients/Fill*
T0*
_output_shapes
: 
Ћ
etrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/value_grad/tuple/group_depsNoOp\^train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/value_grad/Select^^train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/value_grad/Select_1
Я
mtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/value_grad/tuple/control_dependencyIdentity[train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/value_grad/Selectf^train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/value_grad/tuple/group_deps*
T0*n
_classd
b`loc:@train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/value_grad/Select*
_output_shapes
: 
е
otrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/value_grad/tuple/control_dependency_1Identity]train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/value_grad/Select_1f^train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/value_grad/tuple/group_deps*
T0*p
_classf
dbloc:@train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/value_grad/Select_1*
_output_shapes
: 

Xtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 

Ztrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
є
htrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/BroadcastGradientArgsBroadcastGradientArgsXtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/ShapeZtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Е
Ztrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/RealDivRealDivmtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/value_grad/tuple/control_dependency>cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 
у
Vtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/SumSumZtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/RealDivhtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
Ц
Ztrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/ReshapeReshapeVtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/SumXtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
Н
Vtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/NegNeg=cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Sum_1*
T0*
_output_shapes
: 
 
\train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/RealDiv_1RealDivVtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/Neg>cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 
І
\train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/RealDiv_2RealDiv\train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/RealDiv_1>cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 
Ы
Vtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/mulMulmtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/value_grad/tuple/control_dependency\train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/RealDiv_2*
T0*
_output_shapes
: 
у
Xtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/Sum_1SumVtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/muljtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
Ь
\train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/Reshape_1ReshapeXtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/Sum_1Ztrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
Ї
ctrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/group_depsNoOp[^train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/Reshape]^train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/Reshape_1
Щ
ktrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/control_dependencyIdentityZtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/Reshaped^train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/group_deps*
T0*m
_classc
a_loc:@train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/Reshape*
_output_shapes
: 
Я
mtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/control_dependency_1Identity\train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/Reshape_1d^train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/group_deps*
T0*o
_classe
caloc:@train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/Reshape_1*
_output_shapes
: 
Ѕ
btrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/Reshape/shapeConst*
valueB *
dtype0*
_output_shapes
: 
ч
\train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/ReshapeReshapektrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/control_dependencybtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
: 
І
ctrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/Tile/multiplesConst*
valueB *
dtype0*
_output_shapes
: 
з
Ytrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/TileTile\train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/Reshapectrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/Tile/multiples*
T0*

Tmultiples0*
_output_shapes
: 
Ѕ
`train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Select_grad/zeros_likeConst*
valueB
 *    *
dtype0*
_output_shapes
: 

\train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Select_grad/SelectSelect=cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Equalmtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/control_dependency_1`train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Select_grad/zeros_like*
T0*
_output_shapes
: 

^train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Select_grad/Select_1Select=cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Equal`train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Select_grad/zeros_likemtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/control_dependency_1*
T0*
_output_shapes
: 
Ў
ftrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Select_grad/tuple/group_depsNoOp]^train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Select_grad/Select_^train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Select_grad/Select_1
г
ntrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Select_grad/tuple/control_dependencyIdentity\train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Select_grad/Selectg^train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Select_grad/tuple/group_deps*
T0*o
_classe
caloc:@train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Select_grad/Select*
_output_shapes
: 
й
ptrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Select_grad/tuple/control_dependency_1Identity^train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Select_grad/Select_1g^train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Select_grad/tuple/group_deps*
T0*q
_classg
ecloc:@train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Select_grad/Select_1*
_output_shapes
: 
Њ
`train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Sum_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
е
Ztrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Sum_grad/ReshapeReshapeYtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/Tile`train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Sum_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
г
Xtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Sum_grad/ShapeShape;cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Mul*
T0*
out_type0*
_output_shapes
:
е
Wtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Sum_grad/TileTileZtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Sum_grad/ReshapeXtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Sum_grad/Shape*
T0*

Tmultiples0*#
_output_shapes
:џџџџџџџџџ
с
Xtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Mul_grad/ShapeShapeIcross_entropy_4/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy*
T0*
out_type0*
_output_shapes
:

Ztrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Mul_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
є
htrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgsBroadcastGradientArgsXtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Mul_grad/ShapeZtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Mul_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Ѓ
Vtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Mul_grad/mulMulWtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Sum_grad/Tile=cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Const*
T0*#
_output_shapes
:џџџџџџџџџ
п
Vtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Mul_grad/SumSumVtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Mul_grad/mulhtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
г
Ztrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Mul_grad/ReshapeReshapeVtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Mul_grad/SumXtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Mul_grad/Shape*
T0*
Tshape0*#
_output_shapes
:џџџџџџџџџ
Б
Xtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Mul_grad/mul_1MulIcross_entropy_4/total/sparse_softmax_cross_entropy_loss/xentropy/xentropyWtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Sum_grad/Tile*
T0*#
_output_shapes
:џџџџџџџџџ
х
Xtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Mul_grad/Sum_1SumXtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Mul_grad/mul_1jtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
Ь
\train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape_1ReshapeXtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Mul_grad/Sum_1Ztrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Mul_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
Ї
ctrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/group_depsNoOp[^train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape]^train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape_1
ж
ktrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/control_dependencyIdentityZtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Mul_grad/Reshaped^train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/group_deps*
T0*m
_classc
a_loc:@train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape*#
_output_shapes
:џџџџџџџџџ
Я
mtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/control_dependency_1Identity\train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape_1d^train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/group_deps*
T0*o
_classe
caloc:@train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape_1*
_output_shapes
: 
В
htrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
ќ
btrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present_grad/ReshapeReshapeptrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Select_grad/tuple/control_dependency_1htrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
ѕ
`train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present_grad/ShapeShapeUcross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights*
T0*
out_type0*
_output_shapes
:
э
_train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present_grad/TileTilebtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present_grad/Reshape`train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present_grad/Shape*
T0*

Tmultiples0*#
_output_shapes
:џџџџџџџџџ
Е
rtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 

ttrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Shape_1Shape_cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like*
T0*
out_type0*
_output_shapes
:
У
train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/BroadcastGradientArgsBroadcastGradientArgsrtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Shapettrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
ч
ptrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/mulMul_train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present_grad/Tile_cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like*
T0*#
_output_shapes
:џџџџџџџџџ
Ў
ptrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/SumSumptrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/multrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:

ttrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/ReshapeReshapeptrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Sumrtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
д
rtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/mul_1MulJcross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/Select_train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present_grad/Tile*
T0*#
_output_shapes
:џџџџџџџџџ
Д
rtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Sum_1Sumrtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/mul_1train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
Ї
vtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape_1Reshapertrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Sum_1ttrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:џџџџџџџџџ
ѕ
}train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/group_depsNoOpu^train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshapew^train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape_1
Г
train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/control_dependencyIdentityttrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape~^train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/group_deps*
T0*
_class}
{yloc:@train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape*
_output_shapes
: 
Ц
train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/control_dependency_1Identityvtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape_1~^train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/group_deps*
T0*
_class
}{loc:@train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape_1*#
_output_shapes
:џџџџџџџџџ
Ц
|train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Ч
ztrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like_grad/SumSumtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/control_dependency_1|train_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like_grad/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
Ј
train_2/gradients/zeros_like	ZerosLikeKcross_entropy_4/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy:1*
T0*'
_output_shapes
:џџџџџџџџџ

Й
ptrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/PreventGradientPreventGradientKcross_entropy_4/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy:1*
T0*Д
messageЈЅCurrently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*'
_output_shapes
:џџџџџџџџџ

К
otrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/ExpandDims/dimConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

ktrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/ExpandDims
ExpandDimsktrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/control_dependencyotrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/ExpandDims/dim*
T0*

Tdim0*'
_output_shapes
:џџџџџџџџџ
ќ
dtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/mulMulktrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/ExpandDimsptrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/PreventGradient*
T0*'
_output_shapes
:џџџџџџџџџ


3train_2/gradients/layer2_2/Wx_plus_b/add_grad/ShapeShapelayer2_2/Wx_plus_b/MatMul*
T0*
out_type0*
_output_shapes
:

5train_2/gradients/layer2_2/Wx_plus_b/add_grad/Shape_1Const*
valueB:
*
dtype0*
_output_shapes
:

Ctrain_2/gradients/layer2_2/Wx_plus_b/add_grad/BroadcastGradientArgsBroadcastGradientArgs3train_2/gradients/layer2_2/Wx_plus_b/add_grad/Shape5train_2/gradients/layer2_2/Wx_plus_b/add_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Ѓ
1train_2/gradients/layer2_2/Wx_plus_b/add_grad/SumSumdtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/mulCtrain_2/gradients/layer2_2/Wx_plus_b/add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
ш
5train_2/gradients/layer2_2/Wx_plus_b/add_grad/ReshapeReshape1train_2/gradients/layer2_2/Wx_plus_b/add_grad/Sum3train_2/gradients/layer2_2/Wx_plus_b/add_grad/Shape*
T0*
Tshape0*'
_output_shapes
:џџџџџџџџџ

Ї
3train_2/gradients/layer2_2/Wx_plus_b/add_grad/Sum_1Sumdtrain_2/gradients/cross_entropy_4/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/mulEtrain_2/gradients/layer2_2/Wx_plus_b/add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
с
7train_2/gradients/layer2_2/Wx_plus_b/add_grad/Reshape_1Reshape3train_2/gradients/layer2_2/Wx_plus_b/add_grad/Sum_15train_2/gradients/layer2_2/Wx_plus_b/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:

И
>train_2/gradients/layer2_2/Wx_plus_b/add_grad/tuple/group_depsNoOp6^train_2/gradients/layer2_2/Wx_plus_b/add_grad/Reshape8^train_2/gradients/layer2_2/Wx_plus_b/add_grad/Reshape_1
Ц
Ftrain_2/gradients/layer2_2/Wx_plus_b/add_grad/tuple/control_dependencyIdentity5train_2/gradients/layer2_2/Wx_plus_b/add_grad/Reshape?^train_2/gradients/layer2_2/Wx_plus_b/add_grad/tuple/group_deps*
T0*H
_class>
<:loc:@train_2/gradients/layer2_2/Wx_plus_b/add_grad/Reshape*'
_output_shapes
:џџџџџџџџџ

П
Htrain_2/gradients/layer2_2/Wx_plus_b/add_grad/tuple/control_dependency_1Identity7train_2/gradients/layer2_2/Wx_plus_b/add_grad/Reshape_1?^train_2/gradients/layer2_2/Wx_plus_b/add_grad/tuple/group_deps*
T0*J
_class@
><loc:@train_2/gradients/layer2_2/Wx_plus_b/add_grad/Reshape_1*
_output_shapes
:


7train_2/gradients/layer2_2/Wx_plus_b/MatMul_grad/MatMulMatMulFtrain_2/gradients/layer2_2/Wx_plus_b/add_grad/tuple/control_dependencylayer2_2/weights/Variable/read*
transpose_a( *
transpose_b(*
T0*(
_output_shapes
:џџџџџџџџџє
ђ
9train_2/gradients/layer2_2/Wx_plus_b/MatMul_grad/MatMul_1MatMuldropout_2/dropout/mulFtrain_2/gradients/layer2_2/Wx_plus_b/add_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0*
_output_shapes
:	є

П
Atrain_2/gradients/layer2_2/Wx_plus_b/MatMul_grad/tuple/group_depsNoOp8^train_2/gradients/layer2_2/Wx_plus_b/MatMul_grad/MatMul:^train_2/gradients/layer2_2/Wx_plus_b/MatMul_grad/MatMul_1
б
Itrain_2/gradients/layer2_2/Wx_plus_b/MatMul_grad/tuple/control_dependencyIdentity7train_2/gradients/layer2_2/Wx_plus_b/MatMul_grad/MatMulB^train_2/gradients/layer2_2/Wx_plus_b/MatMul_grad/tuple/group_deps*
T0*J
_class@
><loc:@train_2/gradients/layer2_2/Wx_plus_b/MatMul_grad/MatMul*(
_output_shapes
:џџџџџџџџџє
Ю
Ktrain_2/gradients/layer2_2/Wx_plus_b/MatMul_grad/tuple/control_dependency_1Identity9train_2/gradients/layer2_2/Wx_plus_b/MatMul_grad/MatMul_1B^train_2/gradients/layer2_2/Wx_plus_b/MatMul_grad/tuple/group_deps*
T0*L
_classB
@>loc:@train_2/gradients/layer2_2/Wx_plus_b/MatMul_grad/MatMul_1*
_output_shapes
:	є


2train_2/gradients/dropout_2/dropout/mul_grad/ShapeShapedropout_2/dropout/div*
T0*
out_type0*#
_output_shapes
:џџџџџџџџџ

4train_2/gradients/dropout_2/dropout/mul_grad/Shape_1Shapedropout_2/dropout/Floor*
T0*
out_type0*#
_output_shapes
:џџџџџџџџџ

Btrain_2/gradients/dropout_2/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs2train_2/gradients/dropout_2/dropout/mul_grad/Shape4train_2/gradients/dropout_2/dropout/mul_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
О
0train_2/gradients/dropout_2/dropout/mul_grad/mulMulItrain_2/gradients/layer2_2/Wx_plus_b/MatMul_grad/tuple/control_dependencydropout_2/dropout/Floor*
T0*
_output_shapes
:
э
0train_2/gradients/dropout_2/dropout/mul_grad/SumSum0train_2/gradients/dropout_2/dropout/mul_grad/mulBtrain_2/gradients/dropout_2/dropout/mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
ж
4train_2/gradients/dropout_2/dropout/mul_grad/ReshapeReshape0train_2/gradients/dropout_2/dropout/mul_grad/Sum2train_2/gradients/dropout_2/dropout/mul_grad/Shape*
T0*
Tshape0*
_output_shapes
:
О
2train_2/gradients/dropout_2/dropout/mul_grad/mul_1Muldropout_2/dropout/divItrain_2/gradients/layer2_2/Wx_plus_b/MatMul_grad/tuple/control_dependency*
T0*
_output_shapes
:
ѓ
2train_2/gradients/dropout_2/dropout/mul_grad/Sum_1Sum2train_2/gradients/dropout_2/dropout/mul_grad/mul_1Dtrain_2/gradients/dropout_2/dropout/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
м
6train_2/gradients/dropout_2/dropout/mul_grad/Reshape_1Reshape2train_2/gradients/dropout_2/dropout/mul_grad/Sum_14train_2/gradients/dropout_2/dropout/mul_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
Е
=train_2/gradients/dropout_2/dropout/mul_grad/tuple/group_depsNoOp5^train_2/gradients/dropout_2/dropout/mul_grad/Reshape7^train_2/gradients/dropout_2/dropout/mul_grad/Reshape_1
Г
Etrain_2/gradients/dropout_2/dropout/mul_grad/tuple/control_dependencyIdentity4train_2/gradients/dropout_2/dropout/mul_grad/Reshape>^train_2/gradients/dropout_2/dropout/mul_grad/tuple/group_deps*
T0*G
_class=
;9loc:@train_2/gradients/dropout_2/dropout/mul_grad/Reshape*
_output_shapes
:
Й
Gtrain_2/gradients/dropout_2/dropout/mul_grad/tuple/control_dependency_1Identity6train_2/gradients/dropout_2/dropout/mul_grad/Reshape_1>^train_2/gradients/dropout_2/dropout/mul_grad/tuple/group_deps*
T0*I
_class?
=;loc:@train_2/gradients/dropout_2/dropout/mul_grad/Reshape_1*
_output_shapes
:

2train_2/gradients/dropout_2/dropout/div_grad/ShapeShapelayer1_2/activation*
T0*
out_type0*
_output_shapes
:

4train_2/gradients/dropout_2/dropout/div_grad/Shape_1Shapedropout_2/Placeholder*
T0*
out_type0*#
_output_shapes
:џџџџџџџџџ

Btrain_2/gradients/dropout_2/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs2train_2/gradients/dropout_2/dropout/div_grad/Shape4train_2/gradients/dropout_2/dropout/div_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Р
4train_2/gradients/dropout_2/dropout/div_grad/RealDivRealDivEtrain_2/gradients/dropout_2/dropout/mul_grad/tuple/control_dependencydropout_2/Placeholder*
T0*
_output_shapes
:
ё
0train_2/gradients/dropout_2/dropout/div_grad/SumSum4train_2/gradients/dropout_2/dropout/div_grad/RealDivBtrain_2/gradients/dropout_2/dropout/div_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
ц
4train_2/gradients/dropout_2/dropout/div_grad/ReshapeReshape0train_2/gradients/dropout_2/dropout/div_grad/Sum2train_2/gradients/dropout_2/dropout/div_grad/Shape*
T0*
Tshape0*(
_output_shapes
:џџџџџџџџџє

0train_2/gradients/dropout_2/dropout/div_grad/NegNeglayer1_2/activation*
T0*(
_output_shapes
:џџџџџџџџџє
­
6train_2/gradients/dropout_2/dropout/div_grad/RealDiv_1RealDiv0train_2/gradients/dropout_2/dropout/div_grad/Negdropout_2/Placeholder*
T0*
_output_shapes
:
Г
6train_2/gradients/dropout_2/dropout/div_grad/RealDiv_2RealDiv6train_2/gradients/dropout_2/dropout/div_grad/RealDiv_1dropout_2/Placeholder*
T0*
_output_shapes
:
й
0train_2/gradients/dropout_2/dropout/div_grad/mulMulEtrain_2/gradients/dropout_2/dropout/mul_grad/tuple/control_dependency6train_2/gradients/dropout_2/dropout/div_grad/RealDiv_2*
T0*
_output_shapes
:
ё
2train_2/gradients/dropout_2/dropout/div_grad/Sum_1Sum0train_2/gradients/dropout_2/dropout/div_grad/mulDtrain_2/gradients/dropout_2/dropout/div_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
м
6train_2/gradients/dropout_2/dropout/div_grad/Reshape_1Reshape2train_2/gradients/dropout_2/dropout/div_grad/Sum_14train_2/gradients/dropout_2/dropout/div_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
Е
=train_2/gradients/dropout_2/dropout/div_grad/tuple/group_depsNoOp5^train_2/gradients/dropout_2/dropout/div_grad/Reshape7^train_2/gradients/dropout_2/dropout/div_grad/Reshape_1
У
Etrain_2/gradients/dropout_2/dropout/div_grad/tuple/control_dependencyIdentity4train_2/gradients/dropout_2/dropout/div_grad/Reshape>^train_2/gradients/dropout_2/dropout/div_grad/tuple/group_deps*
T0*G
_class=
;9loc:@train_2/gradients/dropout_2/dropout/div_grad/Reshape*(
_output_shapes
:џџџџџџџџџє
Й
Gtrain_2/gradients/dropout_2/dropout/div_grad/tuple/control_dependency_1Identity6train_2/gradients/dropout_2/dropout/div_grad/Reshape_1>^train_2/gradients/dropout_2/dropout/div_grad/tuple/group_deps*
T0*I
_class?
=;loc:@train_2/gradients/dropout_2/dropout/div_grad/Reshape_1*
_output_shapes
:
Ю
3train_2/gradients/layer1_2/activation_grad/ReluGradReluGradEtrain_2/gradients/dropout_2/dropout/div_grad/tuple/control_dependencylayer1_2/activation*
T0*(
_output_shapes
:џџџџџџџџџє

3train_2/gradients/layer1_2/Wx_plus_b/add_grad/ShapeShapelayer1_2/Wx_plus_b/MatMul*
T0*
out_type0*
_output_shapes
:

5train_2/gradients/layer1_2/Wx_plus_b/add_grad/Shape_1Const*
valueB:є*
dtype0*
_output_shapes
:

Ctrain_2/gradients/layer1_2/Wx_plus_b/add_grad/BroadcastGradientArgsBroadcastGradientArgs3train_2/gradients/layer1_2/Wx_plus_b/add_grad/Shape5train_2/gradients/layer1_2/Wx_plus_b/add_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
ђ
1train_2/gradients/layer1_2/Wx_plus_b/add_grad/SumSum3train_2/gradients/layer1_2/activation_grad/ReluGradCtrain_2/gradients/layer1_2/Wx_plus_b/add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
щ
5train_2/gradients/layer1_2/Wx_plus_b/add_grad/ReshapeReshape1train_2/gradients/layer1_2/Wx_plus_b/add_grad/Sum3train_2/gradients/layer1_2/Wx_plus_b/add_grad/Shape*
T0*
Tshape0*(
_output_shapes
:џџџџџџџџџє
і
3train_2/gradients/layer1_2/Wx_plus_b/add_grad/Sum_1Sum3train_2/gradients/layer1_2/activation_grad/ReluGradEtrain_2/gradients/layer1_2/Wx_plus_b/add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
т
7train_2/gradients/layer1_2/Wx_plus_b/add_grad/Reshape_1Reshape3train_2/gradients/layer1_2/Wx_plus_b/add_grad/Sum_15train_2/gradients/layer1_2/Wx_plus_b/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes	
:є
И
>train_2/gradients/layer1_2/Wx_plus_b/add_grad/tuple/group_depsNoOp6^train_2/gradients/layer1_2/Wx_plus_b/add_grad/Reshape8^train_2/gradients/layer1_2/Wx_plus_b/add_grad/Reshape_1
Ч
Ftrain_2/gradients/layer1_2/Wx_plus_b/add_grad/tuple/control_dependencyIdentity5train_2/gradients/layer1_2/Wx_plus_b/add_grad/Reshape?^train_2/gradients/layer1_2/Wx_plus_b/add_grad/tuple/group_deps*
T0*H
_class>
<:loc:@train_2/gradients/layer1_2/Wx_plus_b/add_grad/Reshape*(
_output_shapes
:џџџџџџџџџє
Р
Htrain_2/gradients/layer1_2/Wx_plus_b/add_grad/tuple/control_dependency_1Identity7train_2/gradients/layer1_2/Wx_plus_b/add_grad/Reshape_1?^train_2/gradients/layer1_2/Wx_plus_b/add_grad/tuple/group_deps*
T0*J
_class@
><loc:@train_2/gradients/layer1_2/Wx_plus_b/add_grad/Reshape_1*
_output_shapes	
:є

7train_2/gradients/layer1_2/Wx_plus_b/MatMul_grad/MatMulMatMulFtrain_2/gradients/layer1_2/Wx_plus_b/add_grad/tuple/control_dependencylayer1_2/weights/Variable/read*
transpose_a( *
transpose_b(*
T0*(
_output_shapes
:џџџџџџџџџ
э
9train_2/gradients/layer1_2/Wx_plus_b/MatMul_grad/MatMul_1MatMulinput_3/x-inputFtrain_2/gradients/layer1_2/Wx_plus_b/add_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0* 
_output_shapes
:
є
П
Atrain_2/gradients/layer1_2/Wx_plus_b/MatMul_grad/tuple/group_depsNoOp8^train_2/gradients/layer1_2/Wx_plus_b/MatMul_grad/MatMul:^train_2/gradients/layer1_2/Wx_plus_b/MatMul_grad/MatMul_1
б
Itrain_2/gradients/layer1_2/Wx_plus_b/MatMul_grad/tuple/control_dependencyIdentity7train_2/gradients/layer1_2/Wx_plus_b/MatMul_grad/MatMulB^train_2/gradients/layer1_2/Wx_plus_b/MatMul_grad/tuple/group_deps*
T0*J
_class@
><loc:@train_2/gradients/layer1_2/Wx_plus_b/MatMul_grad/MatMul*(
_output_shapes
:џџџџџџџџџ
Я
Ktrain_2/gradients/layer1_2/Wx_plus_b/MatMul_grad/tuple/control_dependency_1Identity9train_2/gradients/layer1_2/Wx_plus_b/MatMul_grad/MatMul_1B^train_2/gradients/layer1_2/Wx_plus_b/MatMul_grad/tuple/group_deps*
T0*L
_classB
@>loc:@train_2/gradients/layer1_2/Wx_plus_b/MatMul_grad/MatMul_1* 
_output_shapes
:
є

!train_2/beta1_power/initial_valueConst*
valueB
 *fff?*
dtype0*+
_class!
loc:@layer1_2/biases/Variable*
_output_shapes
: 
Є
train_2/beta1_power
VariableV2*
shape: *
dtype0*
	container *
shared_name *+
_class!
loc:@layer1_2/biases/Variable*
_output_shapes
: 
г
train_2/beta1_power/AssignAssigntrain_2/beta1_power!train_2/beta1_power/initial_value*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@layer1_2/biases/Variable*
_output_shapes
: 

train_2/beta1_power/readIdentitytrain_2/beta1_power*
T0*+
_class!
loc:@layer1_2/biases/Variable*
_output_shapes
: 

!train_2/beta2_power/initial_valueConst*
valueB
 *wО?*
dtype0*+
_class!
loc:@layer1_2/biases/Variable*
_output_shapes
: 
Є
train_2/beta2_power
VariableV2*
shape: *
dtype0*
	container *
shared_name *+
_class!
loc:@layer1_2/biases/Variable*
_output_shapes
: 
г
train_2/beta2_power/AssignAssigntrain_2/beta2_power!train_2/beta2_power/initial_value*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@layer1_2/biases/Variable*
_output_shapes
: 

train_2/beta2_power/readIdentitytrain_2/beta2_power*
T0*+
_class!
loc:@layer1_2/biases/Variable*
_output_shapes
: 
З
0layer1_2/weights/Variable/Adam/Initializer/zerosConst*
valueB
є*    *
dtype0*,
_class"
 loc:@layer1_2/weights/Variable* 
_output_shapes
:
є
Ф
layer1_2/weights/Variable/Adam
VariableV2*
shape:
є*
dtype0*
	container *
shared_name *,
_class"
 loc:@layer1_2/weights/Variable* 
_output_shapes
:
є

%layer1_2/weights/Variable/Adam/AssignAssignlayer1_2/weights/Variable/Adam0layer1_2/weights/Variable/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@layer1_2/weights/Variable* 
_output_shapes
:
є
Ј
#layer1_2/weights/Variable/Adam/readIdentitylayer1_2/weights/Variable/Adam*
T0*,
_class"
 loc:@layer1_2/weights/Variable* 
_output_shapes
:
є
Й
2layer1_2/weights/Variable/Adam_1/Initializer/zerosConst*
valueB
є*    *
dtype0*,
_class"
 loc:@layer1_2/weights/Variable* 
_output_shapes
:
є
Ц
 layer1_2/weights/Variable/Adam_1
VariableV2*
shape:
є*
dtype0*
	container *
shared_name *,
_class"
 loc:@layer1_2/weights/Variable* 
_output_shapes
:
є

'layer1_2/weights/Variable/Adam_1/AssignAssign layer1_2/weights/Variable/Adam_12layer1_2/weights/Variable/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@layer1_2/weights/Variable* 
_output_shapes
:
є
Ќ
%layer1_2/weights/Variable/Adam_1/readIdentity layer1_2/weights/Variable/Adam_1*
T0*,
_class"
 loc:@layer1_2/weights/Variable* 
_output_shapes
:
є
Ћ
/layer1_2/biases/Variable/Adam/Initializer/zerosConst*
valueBє*    *
dtype0*+
_class!
loc:@layer1_2/biases/Variable*
_output_shapes	
:є
И
layer1_2/biases/Variable/Adam
VariableV2*
shape:є*
dtype0*
	container *
shared_name *+
_class!
loc:@layer1_2/biases/Variable*
_output_shapes	
:є
њ
$layer1_2/biases/Variable/Adam/AssignAssignlayer1_2/biases/Variable/Adam/layer1_2/biases/Variable/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@layer1_2/biases/Variable*
_output_shapes	
:є
 
"layer1_2/biases/Variable/Adam/readIdentitylayer1_2/biases/Variable/Adam*
T0*+
_class!
loc:@layer1_2/biases/Variable*
_output_shapes	
:є
­
1layer1_2/biases/Variable/Adam_1/Initializer/zerosConst*
valueBє*    *
dtype0*+
_class!
loc:@layer1_2/biases/Variable*
_output_shapes	
:є
К
layer1_2/biases/Variable/Adam_1
VariableV2*
shape:є*
dtype0*
	container *
shared_name *+
_class!
loc:@layer1_2/biases/Variable*
_output_shapes	
:є

&layer1_2/biases/Variable/Adam_1/AssignAssignlayer1_2/biases/Variable/Adam_11layer1_2/biases/Variable/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@layer1_2/biases/Variable*
_output_shapes	
:є
Є
$layer1_2/biases/Variable/Adam_1/readIdentitylayer1_2/biases/Variable/Adam_1*
T0*+
_class!
loc:@layer1_2/biases/Variable*
_output_shapes	
:є
Е
0layer2_2/weights/Variable/Adam/Initializer/zerosConst*
valueB	є
*    *
dtype0*,
_class"
 loc:@layer2_2/weights/Variable*
_output_shapes
:	є

Т
layer2_2/weights/Variable/Adam
VariableV2*
shape:	є
*
dtype0*
	container *
shared_name *,
_class"
 loc:@layer2_2/weights/Variable*
_output_shapes
:	є


%layer2_2/weights/Variable/Adam/AssignAssignlayer2_2/weights/Variable/Adam0layer2_2/weights/Variable/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@layer2_2/weights/Variable*
_output_shapes
:	є

Ї
#layer2_2/weights/Variable/Adam/readIdentitylayer2_2/weights/Variable/Adam*
T0*,
_class"
 loc:@layer2_2/weights/Variable*
_output_shapes
:	є

З
2layer2_2/weights/Variable/Adam_1/Initializer/zerosConst*
valueB	є
*    *
dtype0*,
_class"
 loc:@layer2_2/weights/Variable*
_output_shapes
:	є

Ф
 layer2_2/weights/Variable/Adam_1
VariableV2*
shape:	є
*
dtype0*
	container *
shared_name *,
_class"
 loc:@layer2_2/weights/Variable*
_output_shapes
:	є


'layer2_2/weights/Variable/Adam_1/AssignAssign layer2_2/weights/Variable/Adam_12layer2_2/weights/Variable/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@layer2_2/weights/Variable*
_output_shapes
:	є

Ћ
%layer2_2/weights/Variable/Adam_1/readIdentity layer2_2/weights/Variable/Adam_1*
T0*,
_class"
 loc:@layer2_2/weights/Variable*
_output_shapes
:	є

Љ
/layer2_2/biases/Variable/Adam/Initializer/zerosConst*
valueB
*    *
dtype0*+
_class!
loc:@layer2_2/biases/Variable*
_output_shapes
:

Ж
layer2_2/biases/Variable/Adam
VariableV2*
shape:
*
dtype0*
	container *
shared_name *+
_class!
loc:@layer2_2/biases/Variable*
_output_shapes
:

љ
$layer2_2/biases/Variable/Adam/AssignAssignlayer2_2/biases/Variable/Adam/layer2_2/biases/Variable/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@layer2_2/biases/Variable*
_output_shapes
:


"layer2_2/biases/Variable/Adam/readIdentitylayer2_2/biases/Variable/Adam*
T0*+
_class!
loc:@layer2_2/biases/Variable*
_output_shapes
:

Ћ
1layer2_2/biases/Variable/Adam_1/Initializer/zerosConst*
valueB
*    *
dtype0*+
_class!
loc:@layer2_2/biases/Variable*
_output_shapes
:

И
layer2_2/biases/Variable/Adam_1
VariableV2*
shape:
*
dtype0*
	container *
shared_name *+
_class!
loc:@layer2_2/biases/Variable*
_output_shapes
:

џ
&layer2_2/biases/Variable/Adam_1/AssignAssignlayer2_2/biases/Variable/Adam_11layer2_2/biases/Variable/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@layer2_2/biases/Variable*
_output_shapes
:

Ѓ
$layer2_2/biases/Variable/Adam_1/readIdentitylayer2_2/biases/Variable/Adam_1*
T0*+
_class!
loc:@layer2_2/biases/Variable*
_output_shapes
:

_
train_2/Adam/learning_rateConst*
valueB
 *o:*
dtype0*
_output_shapes
: 
W
train_2/Adam/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
W
train_2/Adam/beta2Const*
valueB
 *wО?*
dtype0*
_output_shapes
: 
Y
train_2/Adam/epsilonConst*
valueB
 *wЬ+2*
dtype0*
_output_shapes
: 
ќ
7train_2/Adam/update_layer1_2/weights/Variable/ApplyAdam	ApplyAdamlayer1_2/weights/Variablelayer1_2/weights/Variable/Adam layer1_2/weights/Variable/Adam_1train_2/beta1_power/readtrain_2/beta2_power/readtrain_2/Adam/learning_ratetrain_2/Adam/beta1train_2/Adam/beta2train_2/Adam/epsilonKtrain_2/gradients/layer1_2/Wx_plus_b/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *,
_class"
 loc:@layer1_2/weights/Variable* 
_output_shapes
:
є
я
6train_2/Adam/update_layer1_2/biases/Variable/ApplyAdam	ApplyAdamlayer1_2/biases/Variablelayer1_2/biases/Variable/Adamlayer1_2/biases/Variable/Adam_1train_2/beta1_power/readtrain_2/beta2_power/readtrain_2/Adam/learning_ratetrain_2/Adam/beta1train_2/Adam/beta2train_2/Adam/epsilonHtrain_2/gradients/layer1_2/Wx_plus_b/add_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *+
_class!
loc:@layer1_2/biases/Variable*
_output_shapes	
:є
ћ
7train_2/Adam/update_layer2_2/weights/Variable/ApplyAdam	ApplyAdamlayer2_2/weights/Variablelayer2_2/weights/Variable/Adam layer2_2/weights/Variable/Adam_1train_2/beta1_power/readtrain_2/beta2_power/readtrain_2/Adam/learning_ratetrain_2/Adam/beta1train_2/Adam/beta2train_2/Adam/epsilonKtrain_2/gradients/layer2_2/Wx_plus_b/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *,
_class"
 loc:@layer2_2/weights/Variable*
_output_shapes
:	є

ю
6train_2/Adam/update_layer2_2/biases/Variable/ApplyAdam	ApplyAdamlayer2_2/biases/Variablelayer2_2/biases/Variable/Adamlayer2_2/biases/Variable/Adam_1train_2/beta1_power/readtrain_2/beta2_power/readtrain_2/Adam/learning_ratetrain_2/Adam/beta1train_2/Adam/beta2train_2/Adam/epsilonHtrain_2/gradients/layer2_2/Wx_plus_b/add_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *+
_class!
loc:@layer2_2/biases/Variable*
_output_shapes
:

љ
train_2/Adam/mulMultrain_2/beta1_power/readtrain_2/Adam/beta18^train_2/Adam/update_layer1_2/weights/Variable/ApplyAdam7^train_2/Adam/update_layer1_2/biases/Variable/ApplyAdam8^train_2/Adam/update_layer2_2/weights/Variable/ApplyAdam7^train_2/Adam/update_layer2_2/biases/Variable/ApplyAdam*
T0*+
_class!
loc:@layer1_2/biases/Variable*
_output_shapes
: 
Л
train_2/Adam/AssignAssigntrain_2/beta1_powertrain_2/Adam/mul*
T0*
validate_shape(*
use_locking( *+
_class!
loc:@layer1_2/biases/Variable*
_output_shapes
: 
ћ
train_2/Adam/mul_1Multrain_2/beta2_power/readtrain_2/Adam/beta28^train_2/Adam/update_layer1_2/weights/Variable/ApplyAdam7^train_2/Adam/update_layer1_2/biases/Variable/ApplyAdam8^train_2/Adam/update_layer2_2/weights/Variable/ApplyAdam7^train_2/Adam/update_layer2_2/biases/Variable/ApplyAdam*
T0*+
_class!
loc:@layer1_2/biases/Variable*
_output_shapes
: 
П
train_2/Adam/Assign_1Assigntrain_2/beta2_powertrain_2/Adam/mul_1*
T0*
validate_shape(*
use_locking( *+
_class!
loc:@layer1_2/biases/Variable*
_output_shapes
: 
Ј
train_2/AdamNoOp8^train_2/Adam/update_layer1_2/weights/Variable/ApplyAdam7^train_2/Adam/update_layer1_2/biases/Variable/ApplyAdam8^train_2/Adam/update_layer2_2/weights/Variable/ApplyAdam7^train_2/Adam/update_layer2_2/biases/Variable/ApplyAdam^train_2/Adam/Assign^train_2/Adam/Assign_1
p
.accuracy_4/correct_prediction/ArgMax/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
Р
$accuracy_4/correct_prediction/ArgMaxArgMaxlayer2_2/activation.accuracy_4/correct_prediction/ArgMax/dimension*
T0*

Tidx0*
output_type0	*#
_output_shapes
:џџџџџџџџџ

#accuracy_4/correct_prediction/EqualEqual$accuracy_4/correct_prediction/ArgMaxinput_3/y-input*
T0	*#
_output_shapes
:џџџџџџџџџ

accuracy_4/accuracy/CastCast#accuracy_4/correct_prediction/Equal*

SrcT0
*

DstT0*#
_output_shapes
:џџџџџџџџџ
c
accuracy_4/accuracy/ConstConst*
valueB: *
dtype0*
_output_shapes
:

accuracy_4/accuracy/MeanMeanaccuracy_4/accuracy/Castaccuracy_4/accuracy/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
Z
accuracy_5/tagsConst*
valueB B
accuracy_5*
dtype0*
_output_shapes
: 
g

accuracy_5ScalarSummaryaccuracy_5/tagsaccuracy_4/accuracy/Mean*
T0*
_output_shapes
: 
ў
Merge_2/MergeSummaryMergeSummaryinput_reshape/inputinput_reshape_1/inputlayer1/weights/summaries/mean!layer1/weights/summaries/stddev_1layer1/weights/summaries/maxlayer1/weights/summaries/min"layer1/weights/summaries/histogramlayer1/biases/summaries/mean layer1/biases/summaries/stddev_1layer1/biases/summaries/maxlayer1/biases/summaries/min!layer1/biases/summaries/histogram layer1/Wx_plus_b/pre_activationslayer1/activations dropout/dropout_keep_probabilitylayer2/weights/summaries/mean!layer2/weights/summaries/stddev_1layer2/weights/summaries/maxlayer2/weights/summaries/min"layer2/weights/summaries/histogramlayer2/biases/summaries/mean layer2/biases/summaries/stddev_1layer2/biases/summaries/maxlayer2/biases/summaries/min!layer2/biases/summaries/histogram layer2/Wx_plus_b/pre_activationslayer2/activationscross_entropy_1
accuracy_1input_reshape_2/inputlayer1_1/weights/summaries/mean#layer1_1/weights/summaries/stddev_1layer1_1/weights/summaries/maxlayer1_1/weights/summaries/min$layer1_1/weights/summaries/histogramlayer1_1/biases/summaries/mean"layer1_1/biases/summaries/stddev_1layer1_1/biases/summaries/maxlayer1_1/biases/summaries/min#layer1_1/biases/summaries/histogram"layer1_1/Wx_plus_b/pre_activationslayer1_1/activations"dropout_1/dropout_keep_probabilitylayer2_1/weights/summaries/mean#layer2_1/weights/summaries/stddev_1layer2_1/weights/summaries/maxlayer2_1/weights/summaries/min$layer2_1/weights/summaries/histogramlayer2_1/biases/summaries/mean"layer2_1/biases/summaries/stddev_1layer2_1/biases/summaries/maxlayer2_1/biases/summaries/min#layer2_1/biases/summaries/histogram"layer2_1/Wx_plus_b/pre_activationslayer2_1/activationscross_entropy_3
accuracy_3input_reshape_3/inputlayer1_2/weights/summaries/mean#layer1_2/weights/summaries/stddev_1layer1_2/weights/summaries/maxlayer1_2/weights/summaries/min$layer1_2/weights/summaries/histogramlayer1_2/biases/summaries/mean"layer1_2/biases/summaries/stddev_1layer1_2/biases/summaries/maxlayer1_2/biases/summaries/min#layer1_2/biases/summaries/histogram"layer1_2/Wx_plus_b/pre_activationslayer1_2/activations"dropout_2/dropout_keep_probabilitylayer2_2/weights/summaries/mean#layer2_2/weights/summaries/stddev_1layer2_2/weights/summaries/maxlayer2_2/weights/summaries/min$layer2_2/weights/summaries/histogramlayer2_2/biases/summaries/mean"layer2_2/biases/summaries/stddev_1layer2_2/biases/summaries/maxlayer2_2/biases/summaries/min#layer2_2/biases/summaries/histogram"layer2_2/Wx_plus_b/pre_activationslayer2_2/activationscross_entropy_5
accuracy_5*
NU*
_output_shapes
: 
t
input_4/x-inputPlaceholder*
dtype0*
shape:џџџџџџџџџ*(
_output_shapes
:џџџџџџџџџ
j
input_4/y-inputPlaceholder*
dtype0	*
shape:џџџџџџџџџ*#
_output_shapes
:џџџџџџџџџ
v
input_reshape_4/Reshape/shapeConst*%
valueB"џџџџ         *
dtype0*
_output_shapes
:

input_reshape_4/ReshapeReshapeinput_4/x-inputinput_reshape_4/Reshape/shape*
T0*
Tshape0*/
_output_shapes
:џџџџџџџџџ
o
input_reshape_4/input/tagConst*&
valueB Binput_reshape_4/input*
dtype0*
_output_shapes
: 
­
input_reshape_4/inputImageSummaryinput_reshape_4/input/taginput_reshape_4/Reshape*

max_images
*
T0*
	bad_colorB:џ  џ*
_output_shapes
: 
x
'layer1_3/weights/truncated_normal/shapeConst*
valueB"  є  *
dtype0*
_output_shapes
:
k
&layer1_3/weights/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
m
(layer1_3/weights/truncated_normal/stddevConst*
valueB
 *ЭЬЬ=*
dtype0*
_output_shapes
: 
О
1layer1_3/weights/truncated_normal/TruncatedNormalTruncatedNormal'layer1_3/weights/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0* 
_output_shapes
:
є
Д
%layer1_3/weights/truncated_normal/mulMul1layer1_3/weights/truncated_normal/TruncatedNormal(layer1_3/weights/truncated_normal/stddev*
T0* 
_output_shapes
:
є
Ђ
!layer1_3/weights/truncated_normalAdd%layer1_3/weights/truncated_normal/mul&layer1_3/weights/truncated_normal/mean*
T0* 
_output_shapes
:
є

layer1_3/weights/Variable
VariableV2*
shape:
є*
dtype0*
	container *
shared_name * 
_output_shapes
:
є
ъ
 layer1_3/weights/Variable/AssignAssignlayer1_3/weights/Variable!layer1_3/weights/truncated_normal*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@layer1_3/weights/Variable* 
_output_shapes
:
є

layer1_3/weights/Variable/readIdentitylayer1_3/weights/Variable*
T0*,
_class"
 loc:@layer1_3/weights/Variable* 
_output_shapes
:
є
a
layer1_3/weights/summaries/RankConst*
value	B :*
dtype0*
_output_shapes
: 
h
&layer1_3/weights/summaries/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
h
&layer1_3/weights/summaries/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Т
 layer1_3/weights/summaries/rangeRange&layer1_3/weights/summaries/range/startlayer1_3/weights/summaries/Rank&layer1_3/weights/summaries/range/delta*

Tidx0*
_output_shapes
:
Ї
layer1_3/weights/summaries/MeanMeanlayer1_3/weights/Variable/read layer1_3/weights/summaries/range*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

$layer1_3/weights/summaries/mean/tagsConst*0
value'B% Blayer1_3/weights/summaries/mean*
dtype0*
_output_shapes
: 

layer1_3/weights/summaries/meanScalarSummary$layer1_3/weights/summaries/mean/tagslayer1_3/weights/summaries/Mean*
T0*
_output_shapes
: 

%layer1_3/weights/summaries/stddev/subSublayer1_3/weights/Variable/readlayer1_3/weights/summaries/Mean*
T0* 
_output_shapes
:
є

(layer1_3/weights/summaries/stddev/SquareSquare%layer1_3/weights/summaries/stddev/sub*
T0* 
_output_shapes
:
є
x
'layer1_3/weights/summaries/stddev/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
П
&layer1_3/weights/summaries/stddev/MeanMean(layer1_3/weights/summaries/stddev/Square'layer1_3/weights/summaries/stddev/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
w
&layer1_3/weights/summaries/stddev/SqrtSqrt&layer1_3/weights/summaries/stddev/Mean*
T0*
_output_shapes
: 

(layer1_3/weights/summaries/stddev_1/tagsConst*4
value+B) B#layer1_3/weights/summaries/stddev_1*
dtype0*
_output_shapes
: 
Ї
#layer1_3/weights/summaries/stddev_1ScalarSummary(layer1_3/weights/summaries/stddev_1/tags&layer1_3/weights/summaries/stddev/Sqrt*
T0*
_output_shapes
: 
c
!layer1_3/weights/summaries/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
j
(layer1_3/weights/summaries/range_1/startConst*
value	B : *
dtype0*
_output_shapes
: 
j
(layer1_3/weights/summaries/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ъ
"layer1_3/weights/summaries/range_1Range(layer1_3/weights/summaries/range_1/start!layer1_3/weights/summaries/Rank_1(layer1_3/weights/summaries/range_1/delta*

Tidx0*
_output_shapes
:
Ї
layer1_3/weights/summaries/MaxMaxlayer1_3/weights/Variable/read"layer1_3/weights/summaries/range_1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

#layer1_3/weights/summaries/max/tagsConst*/
value&B$ Blayer1_3/weights/summaries/max*
dtype0*
_output_shapes
: 

layer1_3/weights/summaries/maxScalarSummary#layer1_3/weights/summaries/max/tagslayer1_3/weights/summaries/Max*
T0*
_output_shapes
: 
c
!layer1_3/weights/summaries/Rank_2Const*
value	B :*
dtype0*
_output_shapes
: 
j
(layer1_3/weights/summaries/range_2/startConst*
value	B : *
dtype0*
_output_shapes
: 
j
(layer1_3/weights/summaries/range_2/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ъ
"layer1_3/weights/summaries/range_2Range(layer1_3/weights/summaries/range_2/start!layer1_3/weights/summaries/Rank_2(layer1_3/weights/summaries/range_2/delta*

Tidx0*
_output_shapes
:
Ї
layer1_3/weights/summaries/MinMinlayer1_3/weights/Variable/read"layer1_3/weights/summaries/range_2*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

#layer1_3/weights/summaries/min/tagsConst*/
value&B$ Blayer1_3/weights/summaries/min*
dtype0*
_output_shapes
: 

layer1_3/weights/summaries/minScalarSummary#layer1_3/weights/summaries/min/tagslayer1_3/weights/summaries/Min*
T0*
_output_shapes
: 

(layer1_3/weights/summaries/histogram/tagConst*5
value,B* B$layer1_3/weights/summaries/histogram*
dtype0*
_output_shapes
: 
Ѓ
$layer1_3/weights/summaries/histogramHistogramSummary(layer1_3/weights/summaries/histogram/taglayer1_3/weights/Variable/read*
T0*
_output_shapes
: 
d
layer1_3/biases/ConstConst*
valueBє*ЭЬЬ=*
dtype0*
_output_shapes	
:є

layer1_3/biases/Variable
VariableV2*
shape:є*
dtype0*
	container *
shared_name *
_output_shapes	
:є
ж
layer1_3/biases/Variable/AssignAssignlayer1_3/biases/Variablelayer1_3/biases/Const*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@layer1_3/biases/Variable*
_output_shapes	
:є

layer1_3/biases/Variable/readIdentitylayer1_3/biases/Variable*
T0*+
_class!
loc:@layer1_3/biases/Variable*
_output_shapes	
:є
`
layer1_3/biases/summaries/RankConst*
value	B :*
dtype0*
_output_shapes
: 
g
%layer1_3/biases/summaries/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
g
%layer1_3/biases/summaries/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
О
layer1_3/biases/summaries/rangeRange%layer1_3/biases/summaries/range/startlayer1_3/biases/summaries/Rank%layer1_3/biases/summaries/range/delta*

Tidx0*
_output_shapes
:
Є
layer1_3/biases/summaries/MeanMeanlayer1_3/biases/Variable/readlayer1_3/biases/summaries/range*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

#layer1_3/biases/summaries/mean/tagsConst*/
value&B$ Blayer1_3/biases/summaries/mean*
dtype0*
_output_shapes
: 

layer1_3/biases/summaries/meanScalarSummary#layer1_3/biases/summaries/mean/tagslayer1_3/biases/summaries/Mean*
T0*
_output_shapes
: 

$layer1_3/biases/summaries/stddev/subSublayer1_3/biases/Variable/readlayer1_3/biases/summaries/Mean*
T0*
_output_shapes	
:є
}
'layer1_3/biases/summaries/stddev/SquareSquare$layer1_3/biases/summaries/stddev/sub*
T0*
_output_shapes	
:є
p
&layer1_3/biases/summaries/stddev/ConstConst*
valueB: *
dtype0*
_output_shapes
:
М
%layer1_3/biases/summaries/stddev/MeanMean'layer1_3/biases/summaries/stddev/Square&layer1_3/biases/summaries/stddev/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
u
%layer1_3/biases/summaries/stddev/SqrtSqrt%layer1_3/biases/summaries/stddev/Mean*
T0*
_output_shapes
: 

'layer1_3/biases/summaries/stddev_1/tagsConst*3
value*B( B"layer1_3/biases/summaries/stddev_1*
dtype0*
_output_shapes
: 
Є
"layer1_3/biases/summaries/stddev_1ScalarSummary'layer1_3/biases/summaries/stddev_1/tags%layer1_3/biases/summaries/stddev/Sqrt*
T0*
_output_shapes
: 
b
 layer1_3/biases/summaries/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
i
'layer1_3/biases/summaries/range_1/startConst*
value	B : *
dtype0*
_output_shapes
: 
i
'layer1_3/biases/summaries/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ц
!layer1_3/biases/summaries/range_1Range'layer1_3/biases/summaries/range_1/start layer1_3/biases/summaries/Rank_1'layer1_3/biases/summaries/range_1/delta*

Tidx0*
_output_shapes
:
Є
layer1_3/biases/summaries/MaxMaxlayer1_3/biases/Variable/read!layer1_3/biases/summaries/range_1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

"layer1_3/biases/summaries/max/tagsConst*.
value%B# Blayer1_3/biases/summaries/max*
dtype0*
_output_shapes
: 

layer1_3/biases/summaries/maxScalarSummary"layer1_3/biases/summaries/max/tagslayer1_3/biases/summaries/Max*
T0*
_output_shapes
: 
b
 layer1_3/biases/summaries/Rank_2Const*
value	B :*
dtype0*
_output_shapes
: 
i
'layer1_3/biases/summaries/range_2/startConst*
value	B : *
dtype0*
_output_shapes
: 
i
'layer1_3/biases/summaries/range_2/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ц
!layer1_3/biases/summaries/range_2Range'layer1_3/biases/summaries/range_2/start layer1_3/biases/summaries/Rank_2'layer1_3/biases/summaries/range_2/delta*

Tidx0*
_output_shapes
:
Є
layer1_3/biases/summaries/MinMinlayer1_3/biases/Variable/read!layer1_3/biases/summaries/range_2*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

"layer1_3/biases/summaries/min/tagsConst*.
value%B# Blayer1_3/biases/summaries/min*
dtype0*
_output_shapes
: 

layer1_3/biases/summaries/minScalarSummary"layer1_3/biases/summaries/min/tagslayer1_3/biases/summaries/Min*
T0*
_output_shapes
: 

'layer1_3/biases/summaries/histogram/tagConst*4
value+B) B#layer1_3/biases/summaries/histogram*
dtype0*
_output_shapes
: 
 
#layer1_3/biases/summaries/histogramHistogramSummary'layer1_3/biases/summaries/histogram/taglayer1_3/biases/Variable/read*
T0*
_output_shapes
: 
­
layer1_3/Wx_plus_b/MatMulMatMulinput_4/x-inputlayer1_3/weights/Variable/read*
transpose_a( *
transpose_b( *
T0*(
_output_shapes
:џџџџџџџџџє

layer1_3/Wx_plus_b/addAddlayer1_3/Wx_plus_b/MatMullayer1_3/biases/Variable/read*
T0*(
_output_shapes
:џџџџџџџџџє

&layer1_3/Wx_plus_b/pre_activations/tagConst*3
value*B( B"layer1_3/Wx_plus_b/pre_activations*
dtype0*
_output_shapes
: 

"layer1_3/Wx_plus_b/pre_activationsHistogramSummary&layer1_3/Wx_plus_b/pre_activations/taglayer1_3/Wx_plus_b/add*
T0*
_output_shapes
: 
f
layer1_3/activationRelulayer1_3/Wx_plus_b/add*
T0*(
_output_shapes
:џџџџџџџџџє
m
layer1_3/activations/tagConst*%
valueB Blayer1_3/activations*
dtype0*
_output_shapes
: 
x
layer1_3/activationsHistogramSummarylayer1_3/activations/taglayer1_3/activation*
T0*
_output_shapes
: 
Z
dropout_3/PlaceholderPlaceholder*
dtype0*
shape:*
_output_shapes
:

'dropout_3/dropout_keep_probability/tagsConst*3
value*B( B"dropout_3/dropout_keep_probability*
dtype0*
_output_shapes
: 

"dropout_3/dropout_keep_probabilityScalarSummary'dropout_3/dropout_keep_probability/tagsdropout_3/Placeholder*
T0*
_output_shapes
: 
j
dropout_3/dropout/ShapeShapelayer1_3/activation*
T0*
out_type0*
_output_shapes
:
i
$dropout_3/dropout/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: 
i
$dropout_3/dropout/random_uniform/maxConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Б
.dropout_3/dropout/random_uniform/RandomUniformRandomUniformdropout_3/dropout/Shape*

seed *
seed2 *
dtype0*
T0*(
_output_shapes
:џџџџџџџџџє

$dropout_3/dropout/random_uniform/subSub$dropout_3/dropout/random_uniform/max$dropout_3/dropout/random_uniform/min*
T0*
_output_shapes
: 
Д
$dropout_3/dropout/random_uniform/mulMul.dropout_3/dropout/random_uniform/RandomUniform$dropout_3/dropout/random_uniform/sub*
T0*(
_output_shapes
:џџџџџџџџџє
І
 dropout_3/dropout/random_uniformAdd$dropout_3/dropout/random_uniform/mul$dropout_3/dropout/random_uniform/min*
T0*(
_output_shapes
:џџџџџџџџџє
x
dropout_3/dropout/addAdddropout_3/Placeholder dropout_3/dropout/random_uniform*
T0*
_output_shapes
:
Z
dropout_3/dropout/FloorFloordropout_3/dropout/add*
T0*
_output_shapes
:
o
dropout_3/dropout/divRealDivlayer1_3/activationdropout_3/Placeholder*
T0*
_output_shapes
:

dropout_3/dropout/mulMuldropout_3/dropout/divdropout_3/dropout/Floor*
T0*(
_output_shapes
:џџџџџџџџџє
x
'layer2_3/weights/truncated_normal/shapeConst*
valueB"є  
   *
dtype0*
_output_shapes
:
k
&layer2_3/weights/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
m
(layer2_3/weights/truncated_normal/stddevConst*
valueB
 *ЭЬЬ=*
dtype0*
_output_shapes
: 
Н
1layer2_3/weights/truncated_normal/TruncatedNormalTruncatedNormal'layer2_3/weights/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*
_output_shapes
:	є

Г
%layer2_3/weights/truncated_normal/mulMul1layer2_3/weights/truncated_normal/TruncatedNormal(layer2_3/weights/truncated_normal/stddev*
T0*
_output_shapes
:	є

Ё
!layer2_3/weights/truncated_normalAdd%layer2_3/weights/truncated_normal/mul&layer2_3/weights/truncated_normal/mean*
T0*
_output_shapes
:	є


layer2_3/weights/Variable
VariableV2*
shape:	є
*
dtype0*
	container *
shared_name *
_output_shapes
:	є

щ
 layer2_3/weights/Variable/AssignAssignlayer2_3/weights/Variable!layer2_3/weights/truncated_normal*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@layer2_3/weights/Variable*
_output_shapes
:	є


layer2_3/weights/Variable/readIdentitylayer2_3/weights/Variable*
T0*,
_class"
 loc:@layer2_3/weights/Variable*
_output_shapes
:	є

a
layer2_3/weights/summaries/RankConst*
value	B :*
dtype0*
_output_shapes
: 
h
&layer2_3/weights/summaries/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
h
&layer2_3/weights/summaries/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Т
 layer2_3/weights/summaries/rangeRange&layer2_3/weights/summaries/range/startlayer2_3/weights/summaries/Rank&layer2_3/weights/summaries/range/delta*

Tidx0*
_output_shapes
:
Ї
layer2_3/weights/summaries/MeanMeanlayer2_3/weights/Variable/read layer2_3/weights/summaries/range*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

$layer2_3/weights/summaries/mean/tagsConst*0
value'B% Blayer2_3/weights/summaries/mean*
dtype0*
_output_shapes
: 

layer2_3/weights/summaries/meanScalarSummary$layer2_3/weights/summaries/mean/tagslayer2_3/weights/summaries/Mean*
T0*
_output_shapes
: 

%layer2_3/weights/summaries/stddev/subSublayer2_3/weights/Variable/readlayer2_3/weights/summaries/Mean*
T0*
_output_shapes
:	є


(layer2_3/weights/summaries/stddev/SquareSquare%layer2_3/weights/summaries/stddev/sub*
T0*
_output_shapes
:	є

x
'layer2_3/weights/summaries/stddev/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
П
&layer2_3/weights/summaries/stddev/MeanMean(layer2_3/weights/summaries/stddev/Square'layer2_3/weights/summaries/stddev/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
w
&layer2_3/weights/summaries/stddev/SqrtSqrt&layer2_3/weights/summaries/stddev/Mean*
T0*
_output_shapes
: 

(layer2_3/weights/summaries/stddev_1/tagsConst*4
value+B) B#layer2_3/weights/summaries/stddev_1*
dtype0*
_output_shapes
: 
Ї
#layer2_3/weights/summaries/stddev_1ScalarSummary(layer2_3/weights/summaries/stddev_1/tags&layer2_3/weights/summaries/stddev/Sqrt*
T0*
_output_shapes
: 
c
!layer2_3/weights/summaries/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
j
(layer2_3/weights/summaries/range_1/startConst*
value	B : *
dtype0*
_output_shapes
: 
j
(layer2_3/weights/summaries/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ъ
"layer2_3/weights/summaries/range_1Range(layer2_3/weights/summaries/range_1/start!layer2_3/weights/summaries/Rank_1(layer2_3/weights/summaries/range_1/delta*

Tidx0*
_output_shapes
:
Ї
layer2_3/weights/summaries/MaxMaxlayer2_3/weights/Variable/read"layer2_3/weights/summaries/range_1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

#layer2_3/weights/summaries/max/tagsConst*/
value&B$ Blayer2_3/weights/summaries/max*
dtype0*
_output_shapes
: 

layer2_3/weights/summaries/maxScalarSummary#layer2_3/weights/summaries/max/tagslayer2_3/weights/summaries/Max*
T0*
_output_shapes
: 
c
!layer2_3/weights/summaries/Rank_2Const*
value	B :*
dtype0*
_output_shapes
: 
j
(layer2_3/weights/summaries/range_2/startConst*
value	B : *
dtype0*
_output_shapes
: 
j
(layer2_3/weights/summaries/range_2/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ъ
"layer2_3/weights/summaries/range_2Range(layer2_3/weights/summaries/range_2/start!layer2_3/weights/summaries/Rank_2(layer2_3/weights/summaries/range_2/delta*

Tidx0*
_output_shapes
:
Ї
layer2_3/weights/summaries/MinMinlayer2_3/weights/Variable/read"layer2_3/weights/summaries/range_2*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

#layer2_3/weights/summaries/min/tagsConst*/
value&B$ Blayer2_3/weights/summaries/min*
dtype0*
_output_shapes
: 

layer2_3/weights/summaries/minScalarSummary#layer2_3/weights/summaries/min/tagslayer2_3/weights/summaries/Min*
T0*
_output_shapes
: 

(layer2_3/weights/summaries/histogram/tagConst*5
value,B* B$layer2_3/weights/summaries/histogram*
dtype0*
_output_shapes
: 
Ѓ
$layer2_3/weights/summaries/histogramHistogramSummary(layer2_3/weights/summaries/histogram/taglayer2_3/weights/Variable/read*
T0*
_output_shapes
: 
b
layer2_3/biases/ConstConst*
valueB
*ЭЬЬ=*
dtype0*
_output_shapes
:


layer2_3/biases/Variable
VariableV2*
shape:
*
dtype0*
	container *
shared_name *
_output_shapes
:

е
layer2_3/biases/Variable/AssignAssignlayer2_3/biases/Variablelayer2_3/biases/Const*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@layer2_3/biases/Variable*
_output_shapes
:


layer2_3/biases/Variable/readIdentitylayer2_3/biases/Variable*
T0*+
_class!
loc:@layer2_3/biases/Variable*
_output_shapes
:

`
layer2_3/biases/summaries/RankConst*
value	B :*
dtype0*
_output_shapes
: 
g
%layer2_3/biases/summaries/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
g
%layer2_3/biases/summaries/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
О
layer2_3/biases/summaries/rangeRange%layer2_3/biases/summaries/range/startlayer2_3/biases/summaries/Rank%layer2_3/biases/summaries/range/delta*

Tidx0*
_output_shapes
:
Є
layer2_3/biases/summaries/MeanMeanlayer2_3/biases/Variable/readlayer2_3/biases/summaries/range*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

#layer2_3/biases/summaries/mean/tagsConst*/
value&B$ Blayer2_3/biases/summaries/mean*
dtype0*
_output_shapes
: 

layer2_3/biases/summaries/meanScalarSummary#layer2_3/biases/summaries/mean/tagslayer2_3/biases/summaries/Mean*
T0*
_output_shapes
: 

$layer2_3/biases/summaries/stddev/subSublayer2_3/biases/Variable/readlayer2_3/biases/summaries/Mean*
T0*
_output_shapes
:

|
'layer2_3/biases/summaries/stddev/SquareSquare$layer2_3/biases/summaries/stddev/sub*
T0*
_output_shapes
:

p
&layer2_3/biases/summaries/stddev/ConstConst*
valueB: *
dtype0*
_output_shapes
:
М
%layer2_3/biases/summaries/stddev/MeanMean'layer2_3/biases/summaries/stddev/Square&layer2_3/biases/summaries/stddev/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
u
%layer2_3/biases/summaries/stddev/SqrtSqrt%layer2_3/biases/summaries/stddev/Mean*
T0*
_output_shapes
: 

'layer2_3/biases/summaries/stddev_1/tagsConst*3
value*B( B"layer2_3/biases/summaries/stddev_1*
dtype0*
_output_shapes
: 
Є
"layer2_3/biases/summaries/stddev_1ScalarSummary'layer2_3/biases/summaries/stddev_1/tags%layer2_3/biases/summaries/stddev/Sqrt*
T0*
_output_shapes
: 
b
 layer2_3/biases/summaries/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
i
'layer2_3/biases/summaries/range_1/startConst*
value	B : *
dtype0*
_output_shapes
: 
i
'layer2_3/biases/summaries/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ц
!layer2_3/biases/summaries/range_1Range'layer2_3/biases/summaries/range_1/start layer2_3/biases/summaries/Rank_1'layer2_3/biases/summaries/range_1/delta*

Tidx0*
_output_shapes
:
Є
layer2_3/biases/summaries/MaxMaxlayer2_3/biases/Variable/read!layer2_3/biases/summaries/range_1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

"layer2_3/biases/summaries/max/tagsConst*.
value%B# Blayer2_3/biases/summaries/max*
dtype0*
_output_shapes
: 

layer2_3/biases/summaries/maxScalarSummary"layer2_3/biases/summaries/max/tagslayer2_3/biases/summaries/Max*
T0*
_output_shapes
: 
b
 layer2_3/biases/summaries/Rank_2Const*
value	B :*
dtype0*
_output_shapes
: 
i
'layer2_3/biases/summaries/range_2/startConst*
value	B : *
dtype0*
_output_shapes
: 
i
'layer2_3/biases/summaries/range_2/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ц
!layer2_3/biases/summaries/range_2Range'layer2_3/biases/summaries/range_2/start layer2_3/biases/summaries/Rank_2'layer2_3/biases/summaries/range_2/delta*

Tidx0*
_output_shapes
:
Є
layer2_3/biases/summaries/MinMinlayer2_3/biases/Variable/read!layer2_3/biases/summaries/range_2*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

"layer2_3/biases/summaries/min/tagsConst*.
value%B# Blayer2_3/biases/summaries/min*
dtype0*
_output_shapes
: 

layer2_3/biases/summaries/minScalarSummary"layer2_3/biases/summaries/min/tagslayer2_3/biases/summaries/Min*
T0*
_output_shapes
: 

'layer2_3/biases/summaries/histogram/tagConst*4
value+B) B#layer2_3/biases/summaries/histogram*
dtype0*
_output_shapes
: 
 
#layer2_3/biases/summaries/histogramHistogramSummary'layer2_3/biases/summaries/histogram/taglayer2_3/biases/Variable/read*
T0*
_output_shapes
: 
В
layer2_3/Wx_plus_b/MatMulMatMuldropout_3/dropout/mullayer2_3/weights/Variable/read*
transpose_a( *
transpose_b( *
T0*'
_output_shapes
:џџџџџџџџџ


layer2_3/Wx_plus_b/addAddlayer2_3/Wx_plus_b/MatMullayer2_3/biases/Variable/read*
T0*'
_output_shapes
:џџџџџџџџџ


&layer2_3/Wx_plus_b/pre_activations/tagConst*3
value*B( B"layer2_3/Wx_plus_b/pre_activations*
dtype0*
_output_shapes
: 

"layer2_3/Wx_plus_b/pre_activationsHistogramSummary&layer2_3/Wx_plus_b/pre_activations/taglayer2_3/Wx_plus_b/add*
T0*
_output_shapes
: 
i
layer2_3/activationIdentitylayer2_3/Wx_plus_b/add*
T0*'
_output_shapes
:џџџџџџџџџ

m
layer2_3/activations/tagConst*%
valueB Blayer2_3/activations*
dtype0*
_output_shapes
: 
x
layer2_3/activationsHistogramSummarylayer2_3/activations/taglayer2_3/activation*
T0*
_output_shapes
: 

=cross_entropy_6/total/sparse_softmax_cross_entropy_loss/ConstConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

Fcross_entropy_6/total/sparse_softmax_cross_entropy_loss/xentropy/ShapeShapeinput_4/y-input*
T0	*
out_type0*
_output_shapes
:
ц
Icross_entropy_6/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy#SparseSoftmaxCrossEntropyWithLogitslayer2_3/activationinput_4/y-input*
T0*
Tlabels0	*6
_output_shapes$
":џџџџџџџџџ:џџџџџџџџџ


Zcross_entropy_6/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/weights/shapeConst*
valueB *
dtype0*
_output_shapes
: 

Ycross_entropy_6/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/weights/rankConst*
value	B : *
dtype0*
_output_shapes
: 
т
Ycross_entropy_6/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/values/shapeShapeIcross_entropy_6/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy*
T0*
out_type0*
_output_shapes
:

Xcross_entropy_6/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
p
hcross_entropy_6/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_successNoOp
х
;cross_entropy_6/total/sparse_softmax_cross_entropy_loss/MulMulIcross_entropy_6/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy=cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Consti^cross_entropy_6/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
T0*#
_output_shapes
:џџџџџџџџџ
є
?cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Const_1Consti^cross_entropy_6/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB: *
dtype0*
_output_shapes
:
ў
;cross_entropy_6/total/sparse_softmax_cross_entropy_loss/SumSum;cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Mul?cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Const_1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
ћ
Kcross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/Equal/yConsti^cross_entropy_6/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
џ
Icross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/EqualEqual=cross_entropy_6/total/sparse_softmax_cross_entropy_loss/ConstKcross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/Equal/y*
T0*
_output_shapes
: 
ў
Ncross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/zeros_likeConsti^cross_entropy_6/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 

Scross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/ones_like/ShapeConsti^cross_entropy_6/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 

Scross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/ones_like/ConstConsti^cross_entropy_6/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 
 
Mcross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/ones_likeFillScross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/ones_like/ShapeScross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/ones_like/Const*
T0*
_output_shapes
: 
п
Jcross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/SelectSelectIcross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/EqualNcross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/zeros_likeMcross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/ones_like*
T0*
_output_shapes
: 
І
xcross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/shapeConsti^cross_entropy_6/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
Є
wcross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/rankConsti^cross_entropy_6/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
value	B : *
dtype0*
_output_shapes
: 
ы
wcross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/shapeShapeIcross_entropy_6/total/sparse_softmax_cross_entropy_loss/xentropy/xentropyi^cross_entropy_6/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
T0*
out_type0*
_output_shapes
:
Ѓ
vcross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/rankConsti^cross_entropy_6/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
value	B :*
dtype0*
_output_shapes
: 
њ
cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOpi^cross_entropy_6/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success
у
ecross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/ShapeShapeIcross_entropy_6/total/sparse_softmax_cross_entropy_loss/xentropy/xentropyi^cross_entropy_6/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success^cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
T0*
out_type0*
_output_shapes
:

ecross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/ConstConsti^cross_entropy_6/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success^cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 
у
_cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_likeFillecross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/Shapeecross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/Const*
T0*#
_output_shapes
:џџџџџџџџџ
З
Ucross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weightsMulJcross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/Select_cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like*
T0*#
_output_shapes
:џџџџџџџџџ
ў
Icross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/ConstConsti^cross_entropy_6/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB: *
dtype0*
_output_shapes
:
Њ
Ccross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_presentSumUcross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weightsIcross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
э
?cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Const_2Consti^cross_entropy_6/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 

=cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Sum_1Sum;cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Sum?cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Const_2*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
ё
Across_entropy_6/total/sparse_softmax_cross_entropy_loss/Greater/yConsti^cross_entropy_6/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
ѓ
?cross_entropy_6/total/sparse_softmax_cross_entropy_loss/GreaterGreaterCcross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_presentAcross_entropy_6/total/sparse_softmax_cross_entropy_loss/Greater/y*
T0*
_output_shapes
: 
я
?cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Equal/yConsti^cross_entropy_6/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
э
=cross_entropy_6/total/sparse_softmax_cross_entropy_loss/EqualEqualCcross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present?cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Equal/y*
T0*
_output_shapes
: 
ѕ
Gcross_entropy_6/total/sparse_softmax_cross_entropy_loss/ones_like/ShapeConsti^cross_entropy_6/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
ї
Gcross_entropy_6/total/sparse_softmax_cross_entropy_loss/ones_like/ConstConsti^cross_entropy_6/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ќ
Across_entropy_6/total/sparse_softmax_cross_entropy_loss/ones_likeFillGcross_entropy_6/total/sparse_softmax_cross_entropy_loss/ones_like/ShapeGcross_entropy_6/total/sparse_softmax_cross_entropy_loss/ones_like/Const*
T0*
_output_shapes
: 
А
>cross_entropy_6/total/sparse_softmax_cross_entropy_loss/SelectSelect=cross_entropy_6/total/sparse_softmax_cross_entropy_loss/EqualAcross_entropy_6/total/sparse_softmax_cross_entropy_loss/ones_likeCcross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present*
T0*
_output_shapes
: 
ц
;cross_entropy_6/total/sparse_softmax_cross_entropy_loss/divRealDiv=cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Sum_1>cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 
ђ
Bcross_entropy_6/total/sparse_softmax_cross_entropy_loss/zeros_likeConsti^cross_entropy_6/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
Њ
=cross_entropy_6/total/sparse_softmax_cross_entropy_loss/valueSelect?cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Greater;cross_entropy_6/total/sparse_softmax_cross_entropy_loss/divBcross_entropy_6/total/sparse_softmax_cross_entropy_loss/zeros_like*
T0*
_output_shapes
: 
d
cross_entropy_7/tagsConst* 
valueB Bcross_entropy_7*
dtype0*
_output_shapes
: 

cross_entropy_7ScalarSummarycross_entropy_7/tags=cross_entropy_6/total/sparse_softmax_cross_entropy_loss/value*
T0*
_output_shapes
: 
Z
train_3/gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
`
train_3/gradients/grad_ys_0Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
train_3/gradients/FillFilltrain_3/gradients/Shapetrain_3/gradients/grad_ys_0*
T0*
_output_shapes
: 
Є
_train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/value_grad/zeros_likeConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Р
[train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/value_grad/SelectSelect?cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Greatertrain_3/gradients/Fill_train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/value_grad/zeros_like*
T0*
_output_shapes
: 
Т
]train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/value_grad/Select_1Select?cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Greater_train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/value_grad/zeros_liketrain_3/gradients/Fill*
T0*
_output_shapes
: 
Ћ
etrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/value_grad/tuple/group_depsNoOp\^train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/value_grad/Select^^train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/value_grad/Select_1
Я
mtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/value_grad/tuple/control_dependencyIdentity[train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/value_grad/Selectf^train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/value_grad/tuple/group_deps*
T0*n
_classd
b`loc:@train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/value_grad/Select*
_output_shapes
: 
е
otrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/value_grad/tuple/control_dependency_1Identity]train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/value_grad/Select_1f^train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/value_grad/tuple/group_deps*
T0*p
_classf
dbloc:@train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/value_grad/Select_1*
_output_shapes
: 

Xtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 

Ztrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
є
htrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/BroadcastGradientArgsBroadcastGradientArgsXtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/ShapeZtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Е
Ztrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/RealDivRealDivmtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/value_grad/tuple/control_dependency>cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 
у
Vtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/SumSumZtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/RealDivhtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
Ц
Ztrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/ReshapeReshapeVtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/SumXtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
Н
Vtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/NegNeg=cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Sum_1*
T0*
_output_shapes
: 
 
\train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/RealDiv_1RealDivVtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/Neg>cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 
І
\train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/RealDiv_2RealDiv\train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/RealDiv_1>cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 
Ы
Vtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/mulMulmtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/value_grad/tuple/control_dependency\train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/RealDiv_2*
T0*
_output_shapes
: 
у
Xtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/Sum_1SumVtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/muljtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
Ь
\train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/Reshape_1ReshapeXtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/Sum_1Ztrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
Ї
ctrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/group_depsNoOp[^train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/Reshape]^train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/Reshape_1
Щ
ktrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/control_dependencyIdentityZtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/Reshaped^train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/group_deps*
T0*m
_classc
a_loc:@train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/Reshape*
_output_shapes
: 
Я
mtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/control_dependency_1Identity\train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/Reshape_1d^train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/group_deps*
T0*o
_classe
caloc:@train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/Reshape_1*
_output_shapes
: 
Ѕ
btrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/Reshape/shapeConst*
valueB *
dtype0*
_output_shapes
: 
ч
\train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/ReshapeReshapektrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/control_dependencybtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
: 
І
ctrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/Tile/multiplesConst*
valueB *
dtype0*
_output_shapes
: 
з
Ytrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/TileTile\train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/Reshapectrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/Tile/multiples*
T0*

Tmultiples0*
_output_shapes
: 
Ѕ
`train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Select_grad/zeros_likeConst*
valueB
 *    *
dtype0*
_output_shapes
: 

\train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Select_grad/SelectSelect=cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Equalmtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/control_dependency_1`train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Select_grad/zeros_like*
T0*
_output_shapes
: 

^train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Select_grad/Select_1Select=cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Equal`train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Select_grad/zeros_likemtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/control_dependency_1*
T0*
_output_shapes
: 
Ў
ftrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Select_grad/tuple/group_depsNoOp]^train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Select_grad/Select_^train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Select_grad/Select_1
г
ntrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Select_grad/tuple/control_dependencyIdentity\train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Select_grad/Selectg^train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Select_grad/tuple/group_deps*
T0*o
_classe
caloc:@train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Select_grad/Select*
_output_shapes
: 
й
ptrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Select_grad/tuple/control_dependency_1Identity^train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Select_grad/Select_1g^train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Select_grad/tuple/group_deps*
T0*q
_classg
ecloc:@train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Select_grad/Select_1*
_output_shapes
: 
Њ
`train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Sum_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
е
Ztrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Sum_grad/ReshapeReshapeYtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/Tile`train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Sum_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
г
Xtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Sum_grad/ShapeShape;cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Mul*
T0*
out_type0*
_output_shapes
:
е
Wtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Sum_grad/TileTileZtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Sum_grad/ReshapeXtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Sum_grad/Shape*
T0*

Tmultiples0*#
_output_shapes
:џџџџџџџџџ
с
Xtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Mul_grad/ShapeShapeIcross_entropy_6/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy*
T0*
out_type0*
_output_shapes
:

Ztrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Mul_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
є
htrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgsBroadcastGradientArgsXtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Mul_grad/ShapeZtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Mul_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Ѓ
Vtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Mul_grad/mulMulWtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Sum_grad/Tile=cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Const*
T0*#
_output_shapes
:џџџџџџџџџ
п
Vtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Mul_grad/SumSumVtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Mul_grad/mulhtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
г
Ztrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Mul_grad/ReshapeReshapeVtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Mul_grad/SumXtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Mul_grad/Shape*
T0*
Tshape0*#
_output_shapes
:џџџџџџџџџ
Б
Xtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Mul_grad/mul_1MulIcross_entropy_6/total/sparse_softmax_cross_entropy_loss/xentropy/xentropyWtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Sum_grad/Tile*
T0*#
_output_shapes
:џџџџџџџџџ
х
Xtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Mul_grad/Sum_1SumXtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Mul_grad/mul_1jtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
Ь
\train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape_1ReshapeXtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Mul_grad/Sum_1Ztrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Mul_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
Ї
ctrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/group_depsNoOp[^train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape]^train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape_1
ж
ktrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/control_dependencyIdentityZtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Mul_grad/Reshaped^train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/group_deps*
T0*m
_classc
a_loc:@train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape*#
_output_shapes
:џџџџџџџџџ
Я
mtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/control_dependency_1Identity\train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape_1d^train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/group_deps*
T0*o
_classe
caloc:@train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape_1*
_output_shapes
: 
В
htrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
ќ
btrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present_grad/ReshapeReshapeptrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Select_grad/tuple/control_dependency_1htrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
ѕ
`train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present_grad/ShapeShapeUcross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights*
T0*
out_type0*
_output_shapes
:
э
_train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present_grad/TileTilebtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present_grad/Reshape`train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present_grad/Shape*
T0*

Tmultiples0*#
_output_shapes
:џџџџџџџџџ
Е
rtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 

ttrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Shape_1Shape_cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like*
T0*
out_type0*
_output_shapes
:
У
train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/BroadcastGradientArgsBroadcastGradientArgsrtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Shapettrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
ч
ptrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/mulMul_train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present_grad/Tile_cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like*
T0*#
_output_shapes
:џџџџџџџџџ
Ў
ptrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/SumSumptrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/multrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:

ttrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/ReshapeReshapeptrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Sumrtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
д
rtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/mul_1MulJcross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/Select_train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present_grad/Tile*
T0*#
_output_shapes
:џџџџџџџџџ
Д
rtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Sum_1Sumrtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/mul_1train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
Ї
vtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape_1Reshapertrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Sum_1ttrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:џџџџџџџџџ
ѕ
}train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/group_depsNoOpu^train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshapew^train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape_1
Г
train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/control_dependencyIdentityttrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape~^train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/group_deps*
T0*
_class}
{yloc:@train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape*
_output_shapes
: 
Ц
train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/control_dependency_1Identityvtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape_1~^train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/group_deps*
T0*
_class
}{loc:@train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape_1*#
_output_shapes
:џџџџџџџџџ
Ц
|train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Ч
ztrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like_grad/SumSumtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/control_dependency_1|train_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like_grad/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
Ј
train_3/gradients/zeros_like	ZerosLikeKcross_entropy_6/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy:1*
T0*'
_output_shapes
:џџџџџџџџџ

Й
ptrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/PreventGradientPreventGradientKcross_entropy_6/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy:1*
T0*Д
messageЈЅCurrently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*'
_output_shapes
:џџџџџџџџџ

К
otrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/ExpandDims/dimConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

ktrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/ExpandDims
ExpandDimsktrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/control_dependencyotrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/ExpandDims/dim*
T0*

Tdim0*'
_output_shapes
:џџџџџџџџџ
ќ
dtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/mulMulktrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/ExpandDimsptrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/PreventGradient*
T0*'
_output_shapes
:џџџџџџџџџ


3train_3/gradients/layer2_3/Wx_plus_b/add_grad/ShapeShapelayer2_3/Wx_plus_b/MatMul*
T0*
out_type0*
_output_shapes
:

5train_3/gradients/layer2_3/Wx_plus_b/add_grad/Shape_1Const*
valueB:
*
dtype0*
_output_shapes
:

Ctrain_3/gradients/layer2_3/Wx_plus_b/add_grad/BroadcastGradientArgsBroadcastGradientArgs3train_3/gradients/layer2_3/Wx_plus_b/add_grad/Shape5train_3/gradients/layer2_3/Wx_plus_b/add_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Ѓ
1train_3/gradients/layer2_3/Wx_plus_b/add_grad/SumSumdtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/mulCtrain_3/gradients/layer2_3/Wx_plus_b/add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
ш
5train_3/gradients/layer2_3/Wx_plus_b/add_grad/ReshapeReshape1train_3/gradients/layer2_3/Wx_plus_b/add_grad/Sum3train_3/gradients/layer2_3/Wx_plus_b/add_grad/Shape*
T0*
Tshape0*'
_output_shapes
:џџџџџџџџџ

Ї
3train_3/gradients/layer2_3/Wx_plus_b/add_grad/Sum_1Sumdtrain_3/gradients/cross_entropy_6/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/mulEtrain_3/gradients/layer2_3/Wx_plus_b/add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
с
7train_3/gradients/layer2_3/Wx_plus_b/add_grad/Reshape_1Reshape3train_3/gradients/layer2_3/Wx_plus_b/add_grad/Sum_15train_3/gradients/layer2_3/Wx_plus_b/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:

И
>train_3/gradients/layer2_3/Wx_plus_b/add_grad/tuple/group_depsNoOp6^train_3/gradients/layer2_3/Wx_plus_b/add_grad/Reshape8^train_3/gradients/layer2_3/Wx_plus_b/add_grad/Reshape_1
Ц
Ftrain_3/gradients/layer2_3/Wx_plus_b/add_grad/tuple/control_dependencyIdentity5train_3/gradients/layer2_3/Wx_plus_b/add_grad/Reshape?^train_3/gradients/layer2_3/Wx_plus_b/add_grad/tuple/group_deps*
T0*H
_class>
<:loc:@train_3/gradients/layer2_3/Wx_plus_b/add_grad/Reshape*'
_output_shapes
:џџџџџџџџџ

П
Htrain_3/gradients/layer2_3/Wx_plus_b/add_grad/tuple/control_dependency_1Identity7train_3/gradients/layer2_3/Wx_plus_b/add_grad/Reshape_1?^train_3/gradients/layer2_3/Wx_plus_b/add_grad/tuple/group_deps*
T0*J
_class@
><loc:@train_3/gradients/layer2_3/Wx_plus_b/add_grad/Reshape_1*
_output_shapes
:


7train_3/gradients/layer2_3/Wx_plus_b/MatMul_grad/MatMulMatMulFtrain_3/gradients/layer2_3/Wx_plus_b/add_grad/tuple/control_dependencylayer2_3/weights/Variable/read*
transpose_a( *
transpose_b(*
T0*(
_output_shapes
:џџџџџџџџџє
ђ
9train_3/gradients/layer2_3/Wx_plus_b/MatMul_grad/MatMul_1MatMuldropout_3/dropout/mulFtrain_3/gradients/layer2_3/Wx_plus_b/add_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0*
_output_shapes
:	є

П
Atrain_3/gradients/layer2_3/Wx_plus_b/MatMul_grad/tuple/group_depsNoOp8^train_3/gradients/layer2_3/Wx_plus_b/MatMul_grad/MatMul:^train_3/gradients/layer2_3/Wx_plus_b/MatMul_grad/MatMul_1
б
Itrain_3/gradients/layer2_3/Wx_plus_b/MatMul_grad/tuple/control_dependencyIdentity7train_3/gradients/layer2_3/Wx_plus_b/MatMul_grad/MatMulB^train_3/gradients/layer2_3/Wx_plus_b/MatMul_grad/tuple/group_deps*
T0*J
_class@
><loc:@train_3/gradients/layer2_3/Wx_plus_b/MatMul_grad/MatMul*(
_output_shapes
:џџџџџџџџџє
Ю
Ktrain_3/gradients/layer2_3/Wx_plus_b/MatMul_grad/tuple/control_dependency_1Identity9train_3/gradients/layer2_3/Wx_plus_b/MatMul_grad/MatMul_1B^train_3/gradients/layer2_3/Wx_plus_b/MatMul_grad/tuple/group_deps*
T0*L
_classB
@>loc:@train_3/gradients/layer2_3/Wx_plus_b/MatMul_grad/MatMul_1*
_output_shapes
:	є


2train_3/gradients/dropout_3/dropout/mul_grad/ShapeShapedropout_3/dropout/div*
T0*
out_type0*#
_output_shapes
:џџџџџџџџџ

4train_3/gradients/dropout_3/dropout/mul_grad/Shape_1Shapedropout_3/dropout/Floor*
T0*
out_type0*#
_output_shapes
:џџџџџџџџџ

Btrain_3/gradients/dropout_3/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs2train_3/gradients/dropout_3/dropout/mul_grad/Shape4train_3/gradients/dropout_3/dropout/mul_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
О
0train_3/gradients/dropout_3/dropout/mul_grad/mulMulItrain_3/gradients/layer2_3/Wx_plus_b/MatMul_grad/tuple/control_dependencydropout_3/dropout/Floor*
T0*
_output_shapes
:
э
0train_3/gradients/dropout_3/dropout/mul_grad/SumSum0train_3/gradients/dropout_3/dropout/mul_grad/mulBtrain_3/gradients/dropout_3/dropout/mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
ж
4train_3/gradients/dropout_3/dropout/mul_grad/ReshapeReshape0train_3/gradients/dropout_3/dropout/mul_grad/Sum2train_3/gradients/dropout_3/dropout/mul_grad/Shape*
T0*
Tshape0*
_output_shapes
:
О
2train_3/gradients/dropout_3/dropout/mul_grad/mul_1Muldropout_3/dropout/divItrain_3/gradients/layer2_3/Wx_plus_b/MatMul_grad/tuple/control_dependency*
T0*
_output_shapes
:
ѓ
2train_3/gradients/dropout_3/dropout/mul_grad/Sum_1Sum2train_3/gradients/dropout_3/dropout/mul_grad/mul_1Dtrain_3/gradients/dropout_3/dropout/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
м
6train_3/gradients/dropout_3/dropout/mul_grad/Reshape_1Reshape2train_3/gradients/dropout_3/dropout/mul_grad/Sum_14train_3/gradients/dropout_3/dropout/mul_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
Е
=train_3/gradients/dropout_3/dropout/mul_grad/tuple/group_depsNoOp5^train_3/gradients/dropout_3/dropout/mul_grad/Reshape7^train_3/gradients/dropout_3/dropout/mul_grad/Reshape_1
Г
Etrain_3/gradients/dropout_3/dropout/mul_grad/tuple/control_dependencyIdentity4train_3/gradients/dropout_3/dropout/mul_grad/Reshape>^train_3/gradients/dropout_3/dropout/mul_grad/tuple/group_deps*
T0*G
_class=
;9loc:@train_3/gradients/dropout_3/dropout/mul_grad/Reshape*
_output_shapes
:
Й
Gtrain_3/gradients/dropout_3/dropout/mul_grad/tuple/control_dependency_1Identity6train_3/gradients/dropout_3/dropout/mul_grad/Reshape_1>^train_3/gradients/dropout_3/dropout/mul_grad/tuple/group_deps*
T0*I
_class?
=;loc:@train_3/gradients/dropout_3/dropout/mul_grad/Reshape_1*
_output_shapes
:

2train_3/gradients/dropout_3/dropout/div_grad/ShapeShapelayer1_3/activation*
T0*
out_type0*
_output_shapes
:

4train_3/gradients/dropout_3/dropout/div_grad/Shape_1Shapedropout_3/Placeholder*
T0*
out_type0*#
_output_shapes
:џџџџџџџџџ

Btrain_3/gradients/dropout_3/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs2train_3/gradients/dropout_3/dropout/div_grad/Shape4train_3/gradients/dropout_3/dropout/div_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Р
4train_3/gradients/dropout_3/dropout/div_grad/RealDivRealDivEtrain_3/gradients/dropout_3/dropout/mul_grad/tuple/control_dependencydropout_3/Placeholder*
T0*
_output_shapes
:
ё
0train_3/gradients/dropout_3/dropout/div_grad/SumSum4train_3/gradients/dropout_3/dropout/div_grad/RealDivBtrain_3/gradients/dropout_3/dropout/div_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
ц
4train_3/gradients/dropout_3/dropout/div_grad/ReshapeReshape0train_3/gradients/dropout_3/dropout/div_grad/Sum2train_3/gradients/dropout_3/dropout/div_grad/Shape*
T0*
Tshape0*(
_output_shapes
:џџџџџџџџџє

0train_3/gradients/dropout_3/dropout/div_grad/NegNeglayer1_3/activation*
T0*(
_output_shapes
:џџџџџџџџџє
­
6train_3/gradients/dropout_3/dropout/div_grad/RealDiv_1RealDiv0train_3/gradients/dropout_3/dropout/div_grad/Negdropout_3/Placeholder*
T0*
_output_shapes
:
Г
6train_3/gradients/dropout_3/dropout/div_grad/RealDiv_2RealDiv6train_3/gradients/dropout_3/dropout/div_grad/RealDiv_1dropout_3/Placeholder*
T0*
_output_shapes
:
й
0train_3/gradients/dropout_3/dropout/div_grad/mulMulEtrain_3/gradients/dropout_3/dropout/mul_grad/tuple/control_dependency6train_3/gradients/dropout_3/dropout/div_grad/RealDiv_2*
T0*
_output_shapes
:
ё
2train_3/gradients/dropout_3/dropout/div_grad/Sum_1Sum0train_3/gradients/dropout_3/dropout/div_grad/mulDtrain_3/gradients/dropout_3/dropout/div_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
м
6train_3/gradients/dropout_3/dropout/div_grad/Reshape_1Reshape2train_3/gradients/dropout_3/dropout/div_grad/Sum_14train_3/gradients/dropout_3/dropout/div_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
Е
=train_3/gradients/dropout_3/dropout/div_grad/tuple/group_depsNoOp5^train_3/gradients/dropout_3/dropout/div_grad/Reshape7^train_3/gradients/dropout_3/dropout/div_grad/Reshape_1
У
Etrain_3/gradients/dropout_3/dropout/div_grad/tuple/control_dependencyIdentity4train_3/gradients/dropout_3/dropout/div_grad/Reshape>^train_3/gradients/dropout_3/dropout/div_grad/tuple/group_deps*
T0*G
_class=
;9loc:@train_3/gradients/dropout_3/dropout/div_grad/Reshape*(
_output_shapes
:џџџџџџџџџє
Й
Gtrain_3/gradients/dropout_3/dropout/div_grad/tuple/control_dependency_1Identity6train_3/gradients/dropout_3/dropout/div_grad/Reshape_1>^train_3/gradients/dropout_3/dropout/div_grad/tuple/group_deps*
T0*I
_class?
=;loc:@train_3/gradients/dropout_3/dropout/div_grad/Reshape_1*
_output_shapes
:
Ю
3train_3/gradients/layer1_3/activation_grad/ReluGradReluGradEtrain_3/gradients/dropout_3/dropout/div_grad/tuple/control_dependencylayer1_3/activation*
T0*(
_output_shapes
:џџџџџџџџџє

3train_3/gradients/layer1_3/Wx_plus_b/add_grad/ShapeShapelayer1_3/Wx_plus_b/MatMul*
T0*
out_type0*
_output_shapes
:

5train_3/gradients/layer1_3/Wx_plus_b/add_grad/Shape_1Const*
valueB:є*
dtype0*
_output_shapes
:

Ctrain_3/gradients/layer1_3/Wx_plus_b/add_grad/BroadcastGradientArgsBroadcastGradientArgs3train_3/gradients/layer1_3/Wx_plus_b/add_grad/Shape5train_3/gradients/layer1_3/Wx_plus_b/add_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
ђ
1train_3/gradients/layer1_3/Wx_plus_b/add_grad/SumSum3train_3/gradients/layer1_3/activation_grad/ReluGradCtrain_3/gradients/layer1_3/Wx_plus_b/add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
щ
5train_3/gradients/layer1_3/Wx_plus_b/add_grad/ReshapeReshape1train_3/gradients/layer1_3/Wx_plus_b/add_grad/Sum3train_3/gradients/layer1_3/Wx_plus_b/add_grad/Shape*
T0*
Tshape0*(
_output_shapes
:џџџџџџџџџє
і
3train_3/gradients/layer1_3/Wx_plus_b/add_grad/Sum_1Sum3train_3/gradients/layer1_3/activation_grad/ReluGradEtrain_3/gradients/layer1_3/Wx_plus_b/add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
т
7train_3/gradients/layer1_3/Wx_plus_b/add_grad/Reshape_1Reshape3train_3/gradients/layer1_3/Wx_plus_b/add_grad/Sum_15train_3/gradients/layer1_3/Wx_plus_b/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes	
:є
И
>train_3/gradients/layer1_3/Wx_plus_b/add_grad/tuple/group_depsNoOp6^train_3/gradients/layer1_3/Wx_plus_b/add_grad/Reshape8^train_3/gradients/layer1_3/Wx_plus_b/add_grad/Reshape_1
Ч
Ftrain_3/gradients/layer1_3/Wx_plus_b/add_grad/tuple/control_dependencyIdentity5train_3/gradients/layer1_3/Wx_plus_b/add_grad/Reshape?^train_3/gradients/layer1_3/Wx_plus_b/add_grad/tuple/group_deps*
T0*H
_class>
<:loc:@train_3/gradients/layer1_3/Wx_plus_b/add_grad/Reshape*(
_output_shapes
:џџџџџџџџџє
Р
Htrain_3/gradients/layer1_3/Wx_plus_b/add_grad/tuple/control_dependency_1Identity7train_3/gradients/layer1_3/Wx_plus_b/add_grad/Reshape_1?^train_3/gradients/layer1_3/Wx_plus_b/add_grad/tuple/group_deps*
T0*J
_class@
><loc:@train_3/gradients/layer1_3/Wx_plus_b/add_grad/Reshape_1*
_output_shapes	
:є

7train_3/gradients/layer1_3/Wx_plus_b/MatMul_grad/MatMulMatMulFtrain_3/gradients/layer1_3/Wx_plus_b/add_grad/tuple/control_dependencylayer1_3/weights/Variable/read*
transpose_a( *
transpose_b(*
T0*(
_output_shapes
:џџџџџџџџџ
э
9train_3/gradients/layer1_3/Wx_plus_b/MatMul_grad/MatMul_1MatMulinput_4/x-inputFtrain_3/gradients/layer1_3/Wx_plus_b/add_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0* 
_output_shapes
:
є
П
Atrain_3/gradients/layer1_3/Wx_plus_b/MatMul_grad/tuple/group_depsNoOp8^train_3/gradients/layer1_3/Wx_plus_b/MatMul_grad/MatMul:^train_3/gradients/layer1_3/Wx_plus_b/MatMul_grad/MatMul_1
б
Itrain_3/gradients/layer1_3/Wx_plus_b/MatMul_grad/tuple/control_dependencyIdentity7train_3/gradients/layer1_3/Wx_plus_b/MatMul_grad/MatMulB^train_3/gradients/layer1_3/Wx_plus_b/MatMul_grad/tuple/group_deps*
T0*J
_class@
><loc:@train_3/gradients/layer1_3/Wx_plus_b/MatMul_grad/MatMul*(
_output_shapes
:џџџџџџџџџ
Я
Ktrain_3/gradients/layer1_3/Wx_plus_b/MatMul_grad/tuple/control_dependency_1Identity9train_3/gradients/layer1_3/Wx_plus_b/MatMul_grad/MatMul_1B^train_3/gradients/layer1_3/Wx_plus_b/MatMul_grad/tuple/group_deps*
T0*L
_classB
@>loc:@train_3/gradients/layer1_3/Wx_plus_b/MatMul_grad/MatMul_1* 
_output_shapes
:
є

!train_3/beta1_power/initial_valueConst*
valueB
 *fff?*
dtype0*+
_class!
loc:@layer1_3/biases/Variable*
_output_shapes
: 
Є
train_3/beta1_power
VariableV2*
shape: *
dtype0*
	container *
shared_name *+
_class!
loc:@layer1_3/biases/Variable*
_output_shapes
: 
г
train_3/beta1_power/AssignAssigntrain_3/beta1_power!train_3/beta1_power/initial_value*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@layer1_3/biases/Variable*
_output_shapes
: 

train_3/beta1_power/readIdentitytrain_3/beta1_power*
T0*+
_class!
loc:@layer1_3/biases/Variable*
_output_shapes
: 

!train_3/beta2_power/initial_valueConst*
valueB
 *wО?*
dtype0*+
_class!
loc:@layer1_3/biases/Variable*
_output_shapes
: 
Є
train_3/beta2_power
VariableV2*
shape: *
dtype0*
	container *
shared_name *+
_class!
loc:@layer1_3/biases/Variable*
_output_shapes
: 
г
train_3/beta2_power/AssignAssigntrain_3/beta2_power!train_3/beta2_power/initial_value*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@layer1_3/biases/Variable*
_output_shapes
: 

train_3/beta2_power/readIdentitytrain_3/beta2_power*
T0*+
_class!
loc:@layer1_3/biases/Variable*
_output_shapes
: 
З
0layer1_3/weights/Variable/Adam/Initializer/zerosConst*
valueB
є*    *
dtype0*,
_class"
 loc:@layer1_3/weights/Variable* 
_output_shapes
:
є
Ф
layer1_3/weights/Variable/Adam
VariableV2*
shape:
є*
dtype0*
	container *
shared_name *,
_class"
 loc:@layer1_3/weights/Variable* 
_output_shapes
:
є

%layer1_3/weights/Variable/Adam/AssignAssignlayer1_3/weights/Variable/Adam0layer1_3/weights/Variable/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@layer1_3/weights/Variable* 
_output_shapes
:
є
Ј
#layer1_3/weights/Variable/Adam/readIdentitylayer1_3/weights/Variable/Adam*
T0*,
_class"
 loc:@layer1_3/weights/Variable* 
_output_shapes
:
є
Й
2layer1_3/weights/Variable/Adam_1/Initializer/zerosConst*
valueB
є*    *
dtype0*,
_class"
 loc:@layer1_3/weights/Variable* 
_output_shapes
:
є
Ц
 layer1_3/weights/Variable/Adam_1
VariableV2*
shape:
є*
dtype0*
	container *
shared_name *,
_class"
 loc:@layer1_3/weights/Variable* 
_output_shapes
:
є

'layer1_3/weights/Variable/Adam_1/AssignAssign layer1_3/weights/Variable/Adam_12layer1_3/weights/Variable/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@layer1_3/weights/Variable* 
_output_shapes
:
є
Ќ
%layer1_3/weights/Variable/Adam_1/readIdentity layer1_3/weights/Variable/Adam_1*
T0*,
_class"
 loc:@layer1_3/weights/Variable* 
_output_shapes
:
є
Ћ
/layer1_3/biases/Variable/Adam/Initializer/zerosConst*
valueBє*    *
dtype0*+
_class!
loc:@layer1_3/biases/Variable*
_output_shapes	
:є
И
layer1_3/biases/Variable/Adam
VariableV2*
shape:є*
dtype0*
	container *
shared_name *+
_class!
loc:@layer1_3/biases/Variable*
_output_shapes	
:є
њ
$layer1_3/biases/Variable/Adam/AssignAssignlayer1_3/biases/Variable/Adam/layer1_3/biases/Variable/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@layer1_3/biases/Variable*
_output_shapes	
:є
 
"layer1_3/biases/Variable/Adam/readIdentitylayer1_3/biases/Variable/Adam*
T0*+
_class!
loc:@layer1_3/biases/Variable*
_output_shapes	
:є
­
1layer1_3/biases/Variable/Adam_1/Initializer/zerosConst*
valueBє*    *
dtype0*+
_class!
loc:@layer1_3/biases/Variable*
_output_shapes	
:є
К
layer1_3/biases/Variable/Adam_1
VariableV2*
shape:є*
dtype0*
	container *
shared_name *+
_class!
loc:@layer1_3/biases/Variable*
_output_shapes	
:є

&layer1_3/biases/Variable/Adam_1/AssignAssignlayer1_3/biases/Variable/Adam_11layer1_3/biases/Variable/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@layer1_3/biases/Variable*
_output_shapes	
:є
Є
$layer1_3/biases/Variable/Adam_1/readIdentitylayer1_3/biases/Variable/Adam_1*
T0*+
_class!
loc:@layer1_3/biases/Variable*
_output_shapes	
:є
Е
0layer2_3/weights/Variable/Adam/Initializer/zerosConst*
valueB	є
*    *
dtype0*,
_class"
 loc:@layer2_3/weights/Variable*
_output_shapes
:	є

Т
layer2_3/weights/Variable/Adam
VariableV2*
shape:	є
*
dtype0*
	container *
shared_name *,
_class"
 loc:@layer2_3/weights/Variable*
_output_shapes
:	є


%layer2_3/weights/Variable/Adam/AssignAssignlayer2_3/weights/Variable/Adam0layer2_3/weights/Variable/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@layer2_3/weights/Variable*
_output_shapes
:	є

Ї
#layer2_3/weights/Variable/Adam/readIdentitylayer2_3/weights/Variable/Adam*
T0*,
_class"
 loc:@layer2_3/weights/Variable*
_output_shapes
:	є

З
2layer2_3/weights/Variable/Adam_1/Initializer/zerosConst*
valueB	є
*    *
dtype0*,
_class"
 loc:@layer2_3/weights/Variable*
_output_shapes
:	є

Ф
 layer2_3/weights/Variable/Adam_1
VariableV2*
shape:	є
*
dtype0*
	container *
shared_name *,
_class"
 loc:@layer2_3/weights/Variable*
_output_shapes
:	є


'layer2_3/weights/Variable/Adam_1/AssignAssign layer2_3/weights/Variable/Adam_12layer2_3/weights/Variable/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@layer2_3/weights/Variable*
_output_shapes
:	є

Ћ
%layer2_3/weights/Variable/Adam_1/readIdentity layer2_3/weights/Variable/Adam_1*
T0*,
_class"
 loc:@layer2_3/weights/Variable*
_output_shapes
:	є

Љ
/layer2_3/biases/Variable/Adam/Initializer/zerosConst*
valueB
*    *
dtype0*+
_class!
loc:@layer2_3/biases/Variable*
_output_shapes
:

Ж
layer2_3/biases/Variable/Adam
VariableV2*
shape:
*
dtype0*
	container *
shared_name *+
_class!
loc:@layer2_3/biases/Variable*
_output_shapes
:

љ
$layer2_3/biases/Variable/Adam/AssignAssignlayer2_3/biases/Variable/Adam/layer2_3/biases/Variable/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@layer2_3/biases/Variable*
_output_shapes
:


"layer2_3/biases/Variable/Adam/readIdentitylayer2_3/biases/Variable/Adam*
T0*+
_class!
loc:@layer2_3/biases/Variable*
_output_shapes
:

Ћ
1layer2_3/biases/Variable/Adam_1/Initializer/zerosConst*
valueB
*    *
dtype0*+
_class!
loc:@layer2_3/biases/Variable*
_output_shapes
:

И
layer2_3/biases/Variable/Adam_1
VariableV2*
shape:
*
dtype0*
	container *
shared_name *+
_class!
loc:@layer2_3/biases/Variable*
_output_shapes
:

џ
&layer2_3/biases/Variable/Adam_1/AssignAssignlayer2_3/biases/Variable/Adam_11layer2_3/biases/Variable/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@layer2_3/biases/Variable*
_output_shapes
:

Ѓ
$layer2_3/biases/Variable/Adam_1/readIdentitylayer2_3/biases/Variable/Adam_1*
T0*+
_class!
loc:@layer2_3/biases/Variable*
_output_shapes
:

_
train_3/Adam/learning_rateConst*
valueB
 *o:*
dtype0*
_output_shapes
: 
W
train_3/Adam/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
W
train_3/Adam/beta2Const*
valueB
 *wО?*
dtype0*
_output_shapes
: 
Y
train_3/Adam/epsilonConst*
valueB
 *wЬ+2*
dtype0*
_output_shapes
: 
ќ
7train_3/Adam/update_layer1_3/weights/Variable/ApplyAdam	ApplyAdamlayer1_3/weights/Variablelayer1_3/weights/Variable/Adam layer1_3/weights/Variable/Adam_1train_3/beta1_power/readtrain_3/beta2_power/readtrain_3/Adam/learning_ratetrain_3/Adam/beta1train_3/Adam/beta2train_3/Adam/epsilonKtrain_3/gradients/layer1_3/Wx_plus_b/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *,
_class"
 loc:@layer1_3/weights/Variable* 
_output_shapes
:
є
я
6train_3/Adam/update_layer1_3/biases/Variable/ApplyAdam	ApplyAdamlayer1_3/biases/Variablelayer1_3/biases/Variable/Adamlayer1_3/biases/Variable/Adam_1train_3/beta1_power/readtrain_3/beta2_power/readtrain_3/Adam/learning_ratetrain_3/Adam/beta1train_3/Adam/beta2train_3/Adam/epsilonHtrain_3/gradients/layer1_3/Wx_plus_b/add_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *+
_class!
loc:@layer1_3/biases/Variable*
_output_shapes	
:є
ћ
7train_3/Adam/update_layer2_3/weights/Variable/ApplyAdam	ApplyAdamlayer2_3/weights/Variablelayer2_3/weights/Variable/Adam layer2_3/weights/Variable/Adam_1train_3/beta1_power/readtrain_3/beta2_power/readtrain_3/Adam/learning_ratetrain_3/Adam/beta1train_3/Adam/beta2train_3/Adam/epsilonKtrain_3/gradients/layer2_3/Wx_plus_b/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *,
_class"
 loc:@layer2_3/weights/Variable*
_output_shapes
:	є

ю
6train_3/Adam/update_layer2_3/biases/Variable/ApplyAdam	ApplyAdamlayer2_3/biases/Variablelayer2_3/biases/Variable/Adamlayer2_3/biases/Variable/Adam_1train_3/beta1_power/readtrain_3/beta2_power/readtrain_3/Adam/learning_ratetrain_3/Adam/beta1train_3/Adam/beta2train_3/Adam/epsilonHtrain_3/gradients/layer2_3/Wx_plus_b/add_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *+
_class!
loc:@layer2_3/biases/Variable*
_output_shapes
:

љ
train_3/Adam/mulMultrain_3/beta1_power/readtrain_3/Adam/beta18^train_3/Adam/update_layer1_3/weights/Variable/ApplyAdam7^train_3/Adam/update_layer1_3/biases/Variable/ApplyAdam8^train_3/Adam/update_layer2_3/weights/Variable/ApplyAdam7^train_3/Adam/update_layer2_3/biases/Variable/ApplyAdam*
T0*+
_class!
loc:@layer1_3/biases/Variable*
_output_shapes
: 
Л
train_3/Adam/AssignAssigntrain_3/beta1_powertrain_3/Adam/mul*
T0*
validate_shape(*
use_locking( *+
_class!
loc:@layer1_3/biases/Variable*
_output_shapes
: 
ћ
train_3/Adam/mul_1Multrain_3/beta2_power/readtrain_3/Adam/beta28^train_3/Adam/update_layer1_3/weights/Variable/ApplyAdam7^train_3/Adam/update_layer1_3/biases/Variable/ApplyAdam8^train_3/Adam/update_layer2_3/weights/Variable/ApplyAdam7^train_3/Adam/update_layer2_3/biases/Variable/ApplyAdam*
T0*+
_class!
loc:@layer1_3/biases/Variable*
_output_shapes
: 
П
train_3/Adam/Assign_1Assigntrain_3/beta2_powertrain_3/Adam/mul_1*
T0*
validate_shape(*
use_locking( *+
_class!
loc:@layer1_3/biases/Variable*
_output_shapes
: 
Ј
train_3/AdamNoOp8^train_3/Adam/update_layer1_3/weights/Variable/ApplyAdam7^train_3/Adam/update_layer1_3/biases/Variable/ApplyAdam8^train_3/Adam/update_layer2_3/weights/Variable/ApplyAdam7^train_3/Adam/update_layer2_3/biases/Variable/ApplyAdam^train_3/Adam/Assign^train_3/Adam/Assign_1
p
.accuracy_6/correct_prediction/ArgMax/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
Р
$accuracy_6/correct_prediction/ArgMaxArgMaxlayer2_3/activation.accuracy_6/correct_prediction/ArgMax/dimension*
T0*

Tidx0*
output_type0	*#
_output_shapes
:џџџџџџџџџ

#accuracy_6/correct_prediction/EqualEqual$accuracy_6/correct_prediction/ArgMaxinput_4/y-input*
T0	*#
_output_shapes
:џџџџџџџџџ

accuracy_6/accuracy/CastCast#accuracy_6/correct_prediction/Equal*

SrcT0
*

DstT0*#
_output_shapes
:џџџџџџџџџ
c
accuracy_6/accuracy/ConstConst*
valueB: *
dtype0*
_output_shapes
:

accuracy_6/accuracy/MeanMeanaccuracy_6/accuracy/Castaccuracy_6/accuracy/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
Z
accuracy_7/tagsConst*
valueB B
accuracy_7*
dtype0*
_output_shapes
: 
g

accuracy_7ScalarSummaryaccuracy_7/tagsaccuracy_6/accuracy/Mean*
T0*
_output_shapes
: 
№
Merge_3/MergeSummaryMergeSummaryinput_reshape/inputinput_reshape_1/inputlayer1/weights/summaries/mean!layer1/weights/summaries/stddev_1layer1/weights/summaries/maxlayer1/weights/summaries/min"layer1/weights/summaries/histogramlayer1/biases/summaries/mean layer1/biases/summaries/stddev_1layer1/biases/summaries/maxlayer1/biases/summaries/min!layer1/biases/summaries/histogram layer1/Wx_plus_b/pre_activationslayer1/activations dropout/dropout_keep_probabilitylayer2/weights/summaries/mean!layer2/weights/summaries/stddev_1layer2/weights/summaries/maxlayer2/weights/summaries/min"layer2/weights/summaries/histogramlayer2/biases/summaries/mean layer2/biases/summaries/stddev_1layer2/biases/summaries/maxlayer2/biases/summaries/min!layer2/biases/summaries/histogram layer2/Wx_plus_b/pre_activationslayer2/activationscross_entropy_1
accuracy_1input_reshape_2/inputlayer1_1/weights/summaries/mean#layer1_1/weights/summaries/stddev_1layer1_1/weights/summaries/maxlayer1_1/weights/summaries/min$layer1_1/weights/summaries/histogramlayer1_1/biases/summaries/mean"layer1_1/biases/summaries/stddev_1layer1_1/biases/summaries/maxlayer1_1/biases/summaries/min#layer1_1/biases/summaries/histogram"layer1_1/Wx_plus_b/pre_activationslayer1_1/activations"dropout_1/dropout_keep_probabilitylayer2_1/weights/summaries/mean#layer2_1/weights/summaries/stddev_1layer2_1/weights/summaries/maxlayer2_1/weights/summaries/min$layer2_1/weights/summaries/histogramlayer2_1/biases/summaries/mean"layer2_1/biases/summaries/stddev_1layer2_1/biases/summaries/maxlayer2_1/biases/summaries/min#layer2_1/biases/summaries/histogram"layer2_1/Wx_plus_b/pre_activationslayer2_1/activationscross_entropy_3
accuracy_3input_reshape_3/inputlayer1_2/weights/summaries/mean#layer1_2/weights/summaries/stddev_1layer1_2/weights/summaries/maxlayer1_2/weights/summaries/min$layer1_2/weights/summaries/histogramlayer1_2/biases/summaries/mean"layer1_2/biases/summaries/stddev_1layer1_2/biases/summaries/maxlayer1_2/biases/summaries/min#layer1_2/biases/summaries/histogram"layer1_2/Wx_plus_b/pre_activationslayer1_2/activations"dropout_2/dropout_keep_probabilitylayer2_2/weights/summaries/mean#layer2_2/weights/summaries/stddev_1layer2_2/weights/summaries/maxlayer2_2/weights/summaries/min$layer2_2/weights/summaries/histogramlayer2_2/biases/summaries/mean"layer2_2/biases/summaries/stddev_1layer2_2/biases/summaries/maxlayer2_2/biases/summaries/min#layer2_2/biases/summaries/histogram"layer2_2/Wx_plus_b/pre_activationslayer2_2/activationscross_entropy_5
accuracy_5input_reshape_4/inputlayer1_3/weights/summaries/mean#layer1_3/weights/summaries/stddev_1layer1_3/weights/summaries/maxlayer1_3/weights/summaries/min$layer1_3/weights/summaries/histogramlayer1_3/biases/summaries/mean"layer1_3/biases/summaries/stddev_1layer1_3/biases/summaries/maxlayer1_3/biases/summaries/min#layer1_3/biases/summaries/histogram"layer1_3/Wx_plus_b/pre_activationslayer1_3/activations"dropout_3/dropout_keep_probabilitylayer2_3/weights/summaries/mean#layer2_3/weights/summaries/stddev_1layer2_3/weights/summaries/maxlayer2_3/weights/summaries/min$layer2_3/weights/summaries/histogramlayer2_3/biases/summaries/mean"layer2_3/biases/summaries/stddev_1layer2_3/biases/summaries/maxlayer2_3/biases/summaries/min#layer2_3/biases/summaries/histogram"layer2_3/Wx_plus_b/pre_activationslayer2_3/activationscross_entropy_7
accuracy_7*
Nq*
_output_shapes
: 
t
input_5/x-inputPlaceholder*
dtype0*
shape:џџџџџџџџџ*(
_output_shapes
:џџџџџџџџџ
j
input_5/y-inputPlaceholder*
dtype0	*
shape:џџџџџџџџџ*#
_output_shapes
:џџџџџџџџџ
v
input_reshape_5/Reshape/shapeConst*%
valueB"џџџџ         *
dtype0*
_output_shapes
:

input_reshape_5/ReshapeReshapeinput_5/x-inputinput_reshape_5/Reshape/shape*
T0*
Tshape0*/
_output_shapes
:џџџџџџџџџ
o
input_reshape_5/input/tagConst*&
valueB Binput_reshape_5/input*
dtype0*
_output_shapes
: 
­
input_reshape_5/inputImageSummaryinput_reshape_5/input/taginput_reshape_5/Reshape*

max_images
*
T0*
	bad_colorB:џ  џ*
_output_shapes
: 
x
'layer1_4/weights/truncated_normal/shapeConst*
valueB"  є  *
dtype0*
_output_shapes
:
k
&layer1_4/weights/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
m
(layer1_4/weights/truncated_normal/stddevConst*
valueB
 *ЭЬЬ=*
dtype0*
_output_shapes
: 
О
1layer1_4/weights/truncated_normal/TruncatedNormalTruncatedNormal'layer1_4/weights/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0* 
_output_shapes
:
є
Д
%layer1_4/weights/truncated_normal/mulMul1layer1_4/weights/truncated_normal/TruncatedNormal(layer1_4/weights/truncated_normal/stddev*
T0* 
_output_shapes
:
є
Ђ
!layer1_4/weights/truncated_normalAdd%layer1_4/weights/truncated_normal/mul&layer1_4/weights/truncated_normal/mean*
T0* 
_output_shapes
:
є

layer1_4/weights/Variable
VariableV2*
shape:
є*
dtype0*
	container *
shared_name * 
_output_shapes
:
є
ъ
 layer1_4/weights/Variable/AssignAssignlayer1_4/weights/Variable!layer1_4/weights/truncated_normal*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@layer1_4/weights/Variable* 
_output_shapes
:
є

layer1_4/weights/Variable/readIdentitylayer1_4/weights/Variable*
T0*,
_class"
 loc:@layer1_4/weights/Variable* 
_output_shapes
:
є
a
layer1_4/weights/summaries/RankConst*
value	B :*
dtype0*
_output_shapes
: 
h
&layer1_4/weights/summaries/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
h
&layer1_4/weights/summaries/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Т
 layer1_4/weights/summaries/rangeRange&layer1_4/weights/summaries/range/startlayer1_4/weights/summaries/Rank&layer1_4/weights/summaries/range/delta*

Tidx0*
_output_shapes
:
Ї
layer1_4/weights/summaries/MeanMeanlayer1_4/weights/Variable/read layer1_4/weights/summaries/range*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

$layer1_4/weights/summaries/mean/tagsConst*0
value'B% Blayer1_4/weights/summaries/mean*
dtype0*
_output_shapes
: 

layer1_4/weights/summaries/meanScalarSummary$layer1_4/weights/summaries/mean/tagslayer1_4/weights/summaries/Mean*
T0*
_output_shapes
: 

%layer1_4/weights/summaries/stddev/subSublayer1_4/weights/Variable/readlayer1_4/weights/summaries/Mean*
T0* 
_output_shapes
:
є

(layer1_4/weights/summaries/stddev/SquareSquare%layer1_4/weights/summaries/stddev/sub*
T0* 
_output_shapes
:
є
x
'layer1_4/weights/summaries/stddev/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
П
&layer1_4/weights/summaries/stddev/MeanMean(layer1_4/weights/summaries/stddev/Square'layer1_4/weights/summaries/stddev/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
w
&layer1_4/weights/summaries/stddev/SqrtSqrt&layer1_4/weights/summaries/stddev/Mean*
T0*
_output_shapes
: 

(layer1_4/weights/summaries/stddev_1/tagsConst*4
value+B) B#layer1_4/weights/summaries/stddev_1*
dtype0*
_output_shapes
: 
Ї
#layer1_4/weights/summaries/stddev_1ScalarSummary(layer1_4/weights/summaries/stddev_1/tags&layer1_4/weights/summaries/stddev/Sqrt*
T0*
_output_shapes
: 
c
!layer1_4/weights/summaries/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
j
(layer1_4/weights/summaries/range_1/startConst*
value	B : *
dtype0*
_output_shapes
: 
j
(layer1_4/weights/summaries/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ъ
"layer1_4/weights/summaries/range_1Range(layer1_4/weights/summaries/range_1/start!layer1_4/weights/summaries/Rank_1(layer1_4/weights/summaries/range_1/delta*

Tidx0*
_output_shapes
:
Ї
layer1_4/weights/summaries/MaxMaxlayer1_4/weights/Variable/read"layer1_4/weights/summaries/range_1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

#layer1_4/weights/summaries/max/tagsConst*/
value&B$ Blayer1_4/weights/summaries/max*
dtype0*
_output_shapes
: 

layer1_4/weights/summaries/maxScalarSummary#layer1_4/weights/summaries/max/tagslayer1_4/weights/summaries/Max*
T0*
_output_shapes
: 
c
!layer1_4/weights/summaries/Rank_2Const*
value	B :*
dtype0*
_output_shapes
: 
j
(layer1_4/weights/summaries/range_2/startConst*
value	B : *
dtype0*
_output_shapes
: 
j
(layer1_4/weights/summaries/range_2/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ъ
"layer1_4/weights/summaries/range_2Range(layer1_4/weights/summaries/range_2/start!layer1_4/weights/summaries/Rank_2(layer1_4/weights/summaries/range_2/delta*

Tidx0*
_output_shapes
:
Ї
layer1_4/weights/summaries/MinMinlayer1_4/weights/Variable/read"layer1_4/weights/summaries/range_2*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

#layer1_4/weights/summaries/min/tagsConst*/
value&B$ Blayer1_4/weights/summaries/min*
dtype0*
_output_shapes
: 

layer1_4/weights/summaries/minScalarSummary#layer1_4/weights/summaries/min/tagslayer1_4/weights/summaries/Min*
T0*
_output_shapes
: 

(layer1_4/weights/summaries/histogram/tagConst*5
value,B* B$layer1_4/weights/summaries/histogram*
dtype0*
_output_shapes
: 
Ѓ
$layer1_4/weights/summaries/histogramHistogramSummary(layer1_4/weights/summaries/histogram/taglayer1_4/weights/Variable/read*
T0*
_output_shapes
: 
d
layer1_4/biases/ConstConst*
valueBє*ЭЬЬ=*
dtype0*
_output_shapes	
:є

layer1_4/biases/Variable
VariableV2*
shape:є*
dtype0*
	container *
shared_name *
_output_shapes	
:є
ж
layer1_4/biases/Variable/AssignAssignlayer1_4/biases/Variablelayer1_4/biases/Const*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@layer1_4/biases/Variable*
_output_shapes	
:є

layer1_4/biases/Variable/readIdentitylayer1_4/biases/Variable*
T0*+
_class!
loc:@layer1_4/biases/Variable*
_output_shapes	
:є
`
layer1_4/biases/summaries/RankConst*
value	B :*
dtype0*
_output_shapes
: 
g
%layer1_4/biases/summaries/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
g
%layer1_4/biases/summaries/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
О
layer1_4/biases/summaries/rangeRange%layer1_4/biases/summaries/range/startlayer1_4/biases/summaries/Rank%layer1_4/biases/summaries/range/delta*

Tidx0*
_output_shapes
:
Є
layer1_4/biases/summaries/MeanMeanlayer1_4/biases/Variable/readlayer1_4/biases/summaries/range*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

#layer1_4/biases/summaries/mean/tagsConst*/
value&B$ Blayer1_4/biases/summaries/mean*
dtype0*
_output_shapes
: 

layer1_4/biases/summaries/meanScalarSummary#layer1_4/biases/summaries/mean/tagslayer1_4/biases/summaries/Mean*
T0*
_output_shapes
: 

$layer1_4/biases/summaries/stddev/subSublayer1_4/biases/Variable/readlayer1_4/biases/summaries/Mean*
T0*
_output_shapes	
:є
}
'layer1_4/biases/summaries/stddev/SquareSquare$layer1_4/biases/summaries/stddev/sub*
T0*
_output_shapes	
:є
p
&layer1_4/biases/summaries/stddev/ConstConst*
valueB: *
dtype0*
_output_shapes
:
М
%layer1_4/biases/summaries/stddev/MeanMean'layer1_4/biases/summaries/stddev/Square&layer1_4/biases/summaries/stddev/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
u
%layer1_4/biases/summaries/stddev/SqrtSqrt%layer1_4/biases/summaries/stddev/Mean*
T0*
_output_shapes
: 

'layer1_4/biases/summaries/stddev_1/tagsConst*3
value*B( B"layer1_4/biases/summaries/stddev_1*
dtype0*
_output_shapes
: 
Є
"layer1_4/biases/summaries/stddev_1ScalarSummary'layer1_4/biases/summaries/stddev_1/tags%layer1_4/biases/summaries/stddev/Sqrt*
T0*
_output_shapes
: 
b
 layer1_4/biases/summaries/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
i
'layer1_4/biases/summaries/range_1/startConst*
value	B : *
dtype0*
_output_shapes
: 
i
'layer1_4/biases/summaries/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ц
!layer1_4/biases/summaries/range_1Range'layer1_4/biases/summaries/range_1/start layer1_4/biases/summaries/Rank_1'layer1_4/biases/summaries/range_1/delta*

Tidx0*
_output_shapes
:
Є
layer1_4/biases/summaries/MaxMaxlayer1_4/biases/Variable/read!layer1_4/biases/summaries/range_1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

"layer1_4/biases/summaries/max/tagsConst*.
value%B# Blayer1_4/biases/summaries/max*
dtype0*
_output_shapes
: 

layer1_4/biases/summaries/maxScalarSummary"layer1_4/biases/summaries/max/tagslayer1_4/biases/summaries/Max*
T0*
_output_shapes
: 
b
 layer1_4/biases/summaries/Rank_2Const*
value	B :*
dtype0*
_output_shapes
: 
i
'layer1_4/biases/summaries/range_2/startConst*
value	B : *
dtype0*
_output_shapes
: 
i
'layer1_4/biases/summaries/range_2/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ц
!layer1_4/biases/summaries/range_2Range'layer1_4/biases/summaries/range_2/start layer1_4/biases/summaries/Rank_2'layer1_4/biases/summaries/range_2/delta*

Tidx0*
_output_shapes
:
Є
layer1_4/biases/summaries/MinMinlayer1_4/biases/Variable/read!layer1_4/biases/summaries/range_2*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

"layer1_4/biases/summaries/min/tagsConst*.
value%B# Blayer1_4/biases/summaries/min*
dtype0*
_output_shapes
: 

layer1_4/biases/summaries/minScalarSummary"layer1_4/biases/summaries/min/tagslayer1_4/biases/summaries/Min*
T0*
_output_shapes
: 

'layer1_4/biases/summaries/histogram/tagConst*4
value+B) B#layer1_4/biases/summaries/histogram*
dtype0*
_output_shapes
: 
 
#layer1_4/biases/summaries/histogramHistogramSummary'layer1_4/biases/summaries/histogram/taglayer1_4/biases/Variable/read*
T0*
_output_shapes
: 
­
layer1_4/Wx_plus_b/MatMulMatMulinput_5/x-inputlayer1_4/weights/Variable/read*
transpose_a( *
transpose_b( *
T0*(
_output_shapes
:џџџџџџџџџє

layer1_4/Wx_plus_b/addAddlayer1_4/Wx_plus_b/MatMullayer1_4/biases/Variable/read*
T0*(
_output_shapes
:џџџџџџџџџє

&layer1_4/Wx_plus_b/pre_activations/tagConst*3
value*B( B"layer1_4/Wx_plus_b/pre_activations*
dtype0*
_output_shapes
: 

"layer1_4/Wx_plus_b/pre_activationsHistogramSummary&layer1_4/Wx_plus_b/pre_activations/taglayer1_4/Wx_plus_b/add*
T0*
_output_shapes
: 
f
layer1_4/activationRelulayer1_4/Wx_plus_b/add*
T0*(
_output_shapes
:џџџџџџџџџє
m
layer1_4/activations/tagConst*%
valueB Blayer1_4/activations*
dtype0*
_output_shapes
: 
x
layer1_4/activationsHistogramSummarylayer1_4/activations/taglayer1_4/activation*
T0*
_output_shapes
: 
Z
dropout_4/PlaceholderPlaceholder*
dtype0*
shape:*
_output_shapes
:

'dropout_4/dropout_keep_probability/tagsConst*3
value*B( B"dropout_4/dropout_keep_probability*
dtype0*
_output_shapes
: 

"dropout_4/dropout_keep_probabilityScalarSummary'dropout_4/dropout_keep_probability/tagsdropout_4/Placeholder*
T0*
_output_shapes
: 
j
dropout_4/dropout/ShapeShapelayer1_4/activation*
T0*
out_type0*
_output_shapes
:
i
$dropout_4/dropout/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: 
i
$dropout_4/dropout/random_uniform/maxConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Б
.dropout_4/dropout/random_uniform/RandomUniformRandomUniformdropout_4/dropout/Shape*

seed *
seed2 *
dtype0*
T0*(
_output_shapes
:џџџџџџџџџє

$dropout_4/dropout/random_uniform/subSub$dropout_4/dropout/random_uniform/max$dropout_4/dropout/random_uniform/min*
T0*
_output_shapes
: 
Д
$dropout_4/dropout/random_uniform/mulMul.dropout_4/dropout/random_uniform/RandomUniform$dropout_4/dropout/random_uniform/sub*
T0*(
_output_shapes
:џџџџџџџџџє
І
 dropout_4/dropout/random_uniformAdd$dropout_4/dropout/random_uniform/mul$dropout_4/dropout/random_uniform/min*
T0*(
_output_shapes
:џџџџџџџџџє
x
dropout_4/dropout/addAdddropout_4/Placeholder dropout_4/dropout/random_uniform*
T0*
_output_shapes
:
Z
dropout_4/dropout/FloorFloordropout_4/dropout/add*
T0*
_output_shapes
:
o
dropout_4/dropout/divRealDivlayer1_4/activationdropout_4/Placeholder*
T0*
_output_shapes
:

dropout_4/dropout/mulMuldropout_4/dropout/divdropout_4/dropout/Floor*
T0*(
_output_shapes
:џџџџџџџџџє
x
'layer2_4/weights/truncated_normal/shapeConst*
valueB"є  
   *
dtype0*
_output_shapes
:
k
&layer2_4/weights/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
m
(layer2_4/weights/truncated_normal/stddevConst*
valueB
 *ЭЬЬ=*
dtype0*
_output_shapes
: 
Н
1layer2_4/weights/truncated_normal/TruncatedNormalTruncatedNormal'layer2_4/weights/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*
_output_shapes
:	є

Г
%layer2_4/weights/truncated_normal/mulMul1layer2_4/weights/truncated_normal/TruncatedNormal(layer2_4/weights/truncated_normal/stddev*
T0*
_output_shapes
:	є

Ё
!layer2_4/weights/truncated_normalAdd%layer2_4/weights/truncated_normal/mul&layer2_4/weights/truncated_normal/mean*
T0*
_output_shapes
:	є


layer2_4/weights/Variable
VariableV2*
shape:	є
*
dtype0*
	container *
shared_name *
_output_shapes
:	є

щ
 layer2_4/weights/Variable/AssignAssignlayer2_4/weights/Variable!layer2_4/weights/truncated_normal*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@layer2_4/weights/Variable*
_output_shapes
:	є


layer2_4/weights/Variable/readIdentitylayer2_4/weights/Variable*
T0*,
_class"
 loc:@layer2_4/weights/Variable*
_output_shapes
:	є

a
layer2_4/weights/summaries/RankConst*
value	B :*
dtype0*
_output_shapes
: 
h
&layer2_4/weights/summaries/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
h
&layer2_4/weights/summaries/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Т
 layer2_4/weights/summaries/rangeRange&layer2_4/weights/summaries/range/startlayer2_4/weights/summaries/Rank&layer2_4/weights/summaries/range/delta*

Tidx0*
_output_shapes
:
Ї
layer2_4/weights/summaries/MeanMeanlayer2_4/weights/Variable/read layer2_4/weights/summaries/range*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

$layer2_4/weights/summaries/mean/tagsConst*0
value'B% Blayer2_4/weights/summaries/mean*
dtype0*
_output_shapes
: 

layer2_4/weights/summaries/meanScalarSummary$layer2_4/weights/summaries/mean/tagslayer2_4/weights/summaries/Mean*
T0*
_output_shapes
: 

%layer2_4/weights/summaries/stddev/subSublayer2_4/weights/Variable/readlayer2_4/weights/summaries/Mean*
T0*
_output_shapes
:	є


(layer2_4/weights/summaries/stddev/SquareSquare%layer2_4/weights/summaries/stddev/sub*
T0*
_output_shapes
:	є

x
'layer2_4/weights/summaries/stddev/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
П
&layer2_4/weights/summaries/stddev/MeanMean(layer2_4/weights/summaries/stddev/Square'layer2_4/weights/summaries/stddev/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
w
&layer2_4/weights/summaries/stddev/SqrtSqrt&layer2_4/weights/summaries/stddev/Mean*
T0*
_output_shapes
: 

(layer2_4/weights/summaries/stddev_1/tagsConst*4
value+B) B#layer2_4/weights/summaries/stddev_1*
dtype0*
_output_shapes
: 
Ї
#layer2_4/weights/summaries/stddev_1ScalarSummary(layer2_4/weights/summaries/stddev_1/tags&layer2_4/weights/summaries/stddev/Sqrt*
T0*
_output_shapes
: 
c
!layer2_4/weights/summaries/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
j
(layer2_4/weights/summaries/range_1/startConst*
value	B : *
dtype0*
_output_shapes
: 
j
(layer2_4/weights/summaries/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ъ
"layer2_4/weights/summaries/range_1Range(layer2_4/weights/summaries/range_1/start!layer2_4/weights/summaries/Rank_1(layer2_4/weights/summaries/range_1/delta*

Tidx0*
_output_shapes
:
Ї
layer2_4/weights/summaries/MaxMaxlayer2_4/weights/Variable/read"layer2_4/weights/summaries/range_1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

#layer2_4/weights/summaries/max/tagsConst*/
value&B$ Blayer2_4/weights/summaries/max*
dtype0*
_output_shapes
: 

layer2_4/weights/summaries/maxScalarSummary#layer2_4/weights/summaries/max/tagslayer2_4/weights/summaries/Max*
T0*
_output_shapes
: 
c
!layer2_4/weights/summaries/Rank_2Const*
value	B :*
dtype0*
_output_shapes
: 
j
(layer2_4/weights/summaries/range_2/startConst*
value	B : *
dtype0*
_output_shapes
: 
j
(layer2_4/weights/summaries/range_2/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ъ
"layer2_4/weights/summaries/range_2Range(layer2_4/weights/summaries/range_2/start!layer2_4/weights/summaries/Rank_2(layer2_4/weights/summaries/range_2/delta*

Tidx0*
_output_shapes
:
Ї
layer2_4/weights/summaries/MinMinlayer2_4/weights/Variable/read"layer2_4/weights/summaries/range_2*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

#layer2_4/weights/summaries/min/tagsConst*/
value&B$ Blayer2_4/weights/summaries/min*
dtype0*
_output_shapes
: 

layer2_4/weights/summaries/minScalarSummary#layer2_4/weights/summaries/min/tagslayer2_4/weights/summaries/Min*
T0*
_output_shapes
: 

(layer2_4/weights/summaries/histogram/tagConst*5
value,B* B$layer2_4/weights/summaries/histogram*
dtype0*
_output_shapes
: 
Ѓ
$layer2_4/weights/summaries/histogramHistogramSummary(layer2_4/weights/summaries/histogram/taglayer2_4/weights/Variable/read*
T0*
_output_shapes
: 
b
layer2_4/biases/ConstConst*
valueB
*ЭЬЬ=*
dtype0*
_output_shapes
:


layer2_4/biases/Variable
VariableV2*
shape:
*
dtype0*
	container *
shared_name *
_output_shapes
:

е
layer2_4/biases/Variable/AssignAssignlayer2_4/biases/Variablelayer2_4/biases/Const*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@layer2_4/biases/Variable*
_output_shapes
:


layer2_4/biases/Variable/readIdentitylayer2_4/biases/Variable*
T0*+
_class!
loc:@layer2_4/biases/Variable*
_output_shapes
:

`
layer2_4/biases/summaries/RankConst*
value	B :*
dtype0*
_output_shapes
: 
g
%layer2_4/biases/summaries/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
g
%layer2_4/biases/summaries/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
О
layer2_4/biases/summaries/rangeRange%layer2_4/biases/summaries/range/startlayer2_4/biases/summaries/Rank%layer2_4/biases/summaries/range/delta*

Tidx0*
_output_shapes
:
Є
layer2_4/biases/summaries/MeanMeanlayer2_4/biases/Variable/readlayer2_4/biases/summaries/range*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

#layer2_4/biases/summaries/mean/tagsConst*/
value&B$ Blayer2_4/biases/summaries/mean*
dtype0*
_output_shapes
: 

layer2_4/biases/summaries/meanScalarSummary#layer2_4/biases/summaries/mean/tagslayer2_4/biases/summaries/Mean*
T0*
_output_shapes
: 

$layer2_4/biases/summaries/stddev/subSublayer2_4/biases/Variable/readlayer2_4/biases/summaries/Mean*
T0*
_output_shapes
:

|
'layer2_4/biases/summaries/stddev/SquareSquare$layer2_4/biases/summaries/stddev/sub*
T0*
_output_shapes
:

p
&layer2_4/biases/summaries/stddev/ConstConst*
valueB: *
dtype0*
_output_shapes
:
М
%layer2_4/biases/summaries/stddev/MeanMean'layer2_4/biases/summaries/stddev/Square&layer2_4/biases/summaries/stddev/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
u
%layer2_4/biases/summaries/stddev/SqrtSqrt%layer2_4/biases/summaries/stddev/Mean*
T0*
_output_shapes
: 

'layer2_4/biases/summaries/stddev_1/tagsConst*3
value*B( B"layer2_4/biases/summaries/stddev_1*
dtype0*
_output_shapes
: 
Є
"layer2_4/biases/summaries/stddev_1ScalarSummary'layer2_4/biases/summaries/stddev_1/tags%layer2_4/biases/summaries/stddev/Sqrt*
T0*
_output_shapes
: 
b
 layer2_4/biases/summaries/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
i
'layer2_4/biases/summaries/range_1/startConst*
value	B : *
dtype0*
_output_shapes
: 
i
'layer2_4/biases/summaries/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ц
!layer2_4/biases/summaries/range_1Range'layer2_4/biases/summaries/range_1/start layer2_4/biases/summaries/Rank_1'layer2_4/biases/summaries/range_1/delta*

Tidx0*
_output_shapes
:
Є
layer2_4/biases/summaries/MaxMaxlayer2_4/biases/Variable/read!layer2_4/biases/summaries/range_1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

"layer2_4/biases/summaries/max/tagsConst*.
value%B# Blayer2_4/biases/summaries/max*
dtype0*
_output_shapes
: 

layer2_4/biases/summaries/maxScalarSummary"layer2_4/biases/summaries/max/tagslayer2_4/biases/summaries/Max*
T0*
_output_shapes
: 
b
 layer2_4/biases/summaries/Rank_2Const*
value	B :*
dtype0*
_output_shapes
: 
i
'layer2_4/biases/summaries/range_2/startConst*
value	B : *
dtype0*
_output_shapes
: 
i
'layer2_4/biases/summaries/range_2/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ц
!layer2_4/biases/summaries/range_2Range'layer2_4/biases/summaries/range_2/start layer2_4/biases/summaries/Rank_2'layer2_4/biases/summaries/range_2/delta*

Tidx0*
_output_shapes
:
Є
layer2_4/biases/summaries/MinMinlayer2_4/biases/Variable/read!layer2_4/biases/summaries/range_2*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

"layer2_4/biases/summaries/min/tagsConst*.
value%B# Blayer2_4/biases/summaries/min*
dtype0*
_output_shapes
: 

layer2_4/biases/summaries/minScalarSummary"layer2_4/biases/summaries/min/tagslayer2_4/biases/summaries/Min*
T0*
_output_shapes
: 

'layer2_4/biases/summaries/histogram/tagConst*4
value+B) B#layer2_4/biases/summaries/histogram*
dtype0*
_output_shapes
: 
 
#layer2_4/biases/summaries/histogramHistogramSummary'layer2_4/biases/summaries/histogram/taglayer2_4/biases/Variable/read*
T0*
_output_shapes
: 
В
layer2_4/Wx_plus_b/MatMulMatMuldropout_4/dropout/mullayer2_4/weights/Variable/read*
transpose_a( *
transpose_b( *
T0*'
_output_shapes
:џџџџџџџџџ


layer2_4/Wx_plus_b/addAddlayer2_4/Wx_plus_b/MatMullayer2_4/biases/Variable/read*
T0*'
_output_shapes
:џџџџџџџџџ


&layer2_4/Wx_plus_b/pre_activations/tagConst*3
value*B( B"layer2_4/Wx_plus_b/pre_activations*
dtype0*
_output_shapes
: 

"layer2_4/Wx_plus_b/pre_activationsHistogramSummary&layer2_4/Wx_plus_b/pre_activations/taglayer2_4/Wx_plus_b/add*
T0*
_output_shapes
: 
i
layer2_4/activationIdentitylayer2_4/Wx_plus_b/add*
T0*'
_output_shapes
:џџџџџџџџџ

m
layer2_4/activations/tagConst*%
valueB Blayer2_4/activations*
dtype0*
_output_shapes
: 
x
layer2_4/activationsHistogramSummarylayer2_4/activations/taglayer2_4/activation*
T0*
_output_shapes
: 

=cross_entropy_8/total/sparse_softmax_cross_entropy_loss/ConstConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

Fcross_entropy_8/total/sparse_softmax_cross_entropy_loss/xentropy/ShapeShapeinput_5/y-input*
T0	*
out_type0*
_output_shapes
:
ц
Icross_entropy_8/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy#SparseSoftmaxCrossEntropyWithLogitslayer2_4/activationinput_5/y-input*
T0*
Tlabels0	*6
_output_shapes$
":џџџџџџџџџ:џџџџџџџџџ


Zcross_entropy_8/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/weights/shapeConst*
valueB *
dtype0*
_output_shapes
: 

Ycross_entropy_8/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/weights/rankConst*
value	B : *
dtype0*
_output_shapes
: 
т
Ycross_entropy_8/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/values/shapeShapeIcross_entropy_8/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy*
T0*
out_type0*
_output_shapes
:

Xcross_entropy_8/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
p
hcross_entropy_8/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_successNoOp
х
;cross_entropy_8/total/sparse_softmax_cross_entropy_loss/MulMulIcross_entropy_8/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy=cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Consti^cross_entropy_8/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
T0*#
_output_shapes
:џџџџџџџџџ
є
?cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Const_1Consti^cross_entropy_8/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB: *
dtype0*
_output_shapes
:
ў
;cross_entropy_8/total/sparse_softmax_cross_entropy_loss/SumSum;cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Mul?cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Const_1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
ћ
Kcross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/Equal/yConsti^cross_entropy_8/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
џ
Icross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/EqualEqual=cross_entropy_8/total/sparse_softmax_cross_entropy_loss/ConstKcross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/Equal/y*
T0*
_output_shapes
: 
ў
Ncross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/zeros_likeConsti^cross_entropy_8/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 

Scross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/ones_like/ShapeConsti^cross_entropy_8/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 

Scross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/ones_like/ConstConsti^cross_entropy_8/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 
 
Mcross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/ones_likeFillScross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/ones_like/ShapeScross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/ones_like/Const*
T0*
_output_shapes
: 
п
Jcross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/SelectSelectIcross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/EqualNcross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/zeros_likeMcross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/ones_like*
T0*
_output_shapes
: 
І
xcross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/shapeConsti^cross_entropy_8/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
Є
wcross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/rankConsti^cross_entropy_8/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
value	B : *
dtype0*
_output_shapes
: 
ы
wcross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/shapeShapeIcross_entropy_8/total/sparse_softmax_cross_entropy_loss/xentropy/xentropyi^cross_entropy_8/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
T0*
out_type0*
_output_shapes
:
Ѓ
vcross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/rankConsti^cross_entropy_8/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
value	B :*
dtype0*
_output_shapes
: 
њ
cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOpi^cross_entropy_8/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success
у
ecross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/ShapeShapeIcross_entropy_8/total/sparse_softmax_cross_entropy_loss/xentropy/xentropyi^cross_entropy_8/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success^cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
T0*
out_type0*
_output_shapes
:

ecross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/ConstConsti^cross_entropy_8/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success^cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 
у
_cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_likeFillecross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/Shapeecross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/Const*
T0*#
_output_shapes
:џџџџџџџџџ
З
Ucross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weightsMulJcross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/Select_cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like*
T0*#
_output_shapes
:џџџџџџџџџ
ў
Icross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/ConstConsti^cross_entropy_8/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB: *
dtype0*
_output_shapes
:
Њ
Ccross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_presentSumUcross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weightsIcross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
э
?cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Const_2Consti^cross_entropy_8/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 

=cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Sum_1Sum;cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Sum?cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Const_2*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
ё
Across_entropy_8/total/sparse_softmax_cross_entropy_loss/Greater/yConsti^cross_entropy_8/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
ѓ
?cross_entropy_8/total/sparse_softmax_cross_entropy_loss/GreaterGreaterCcross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_presentAcross_entropy_8/total/sparse_softmax_cross_entropy_loss/Greater/y*
T0*
_output_shapes
: 
я
?cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Equal/yConsti^cross_entropy_8/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
э
=cross_entropy_8/total/sparse_softmax_cross_entropy_loss/EqualEqualCcross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present?cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Equal/y*
T0*
_output_shapes
: 
ѕ
Gcross_entropy_8/total/sparse_softmax_cross_entropy_loss/ones_like/ShapeConsti^cross_entropy_8/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
ї
Gcross_entropy_8/total/sparse_softmax_cross_entropy_loss/ones_like/ConstConsti^cross_entropy_8/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ќ
Across_entropy_8/total/sparse_softmax_cross_entropy_loss/ones_likeFillGcross_entropy_8/total/sparse_softmax_cross_entropy_loss/ones_like/ShapeGcross_entropy_8/total/sparse_softmax_cross_entropy_loss/ones_like/Const*
T0*
_output_shapes
: 
А
>cross_entropy_8/total/sparse_softmax_cross_entropy_loss/SelectSelect=cross_entropy_8/total/sparse_softmax_cross_entropy_loss/EqualAcross_entropy_8/total/sparse_softmax_cross_entropy_loss/ones_likeCcross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present*
T0*
_output_shapes
: 
ц
;cross_entropy_8/total/sparse_softmax_cross_entropy_loss/divRealDiv=cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Sum_1>cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 
ђ
Bcross_entropy_8/total/sparse_softmax_cross_entropy_loss/zeros_likeConsti^cross_entropy_8/total/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
Њ
=cross_entropy_8/total/sparse_softmax_cross_entropy_loss/valueSelect?cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Greater;cross_entropy_8/total/sparse_softmax_cross_entropy_loss/divBcross_entropy_8/total/sparse_softmax_cross_entropy_loss/zeros_like*
T0*
_output_shapes
: 
d
cross_entropy_9/tagsConst* 
valueB Bcross_entropy_9*
dtype0*
_output_shapes
: 

cross_entropy_9ScalarSummarycross_entropy_9/tags=cross_entropy_8/total/sparse_softmax_cross_entropy_loss/value*
T0*
_output_shapes
: 
Z
train_4/gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
`
train_4/gradients/grad_ys_0Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
train_4/gradients/FillFilltrain_4/gradients/Shapetrain_4/gradients/grad_ys_0*
T0*
_output_shapes
: 
Є
_train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/value_grad/zeros_likeConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Р
[train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/value_grad/SelectSelect?cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Greatertrain_4/gradients/Fill_train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/value_grad/zeros_like*
T0*
_output_shapes
: 
Т
]train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/value_grad/Select_1Select?cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Greater_train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/value_grad/zeros_liketrain_4/gradients/Fill*
T0*
_output_shapes
: 
Ћ
etrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/value_grad/tuple/group_depsNoOp\^train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/value_grad/Select^^train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/value_grad/Select_1
Я
mtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/value_grad/tuple/control_dependencyIdentity[train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/value_grad/Selectf^train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/value_grad/tuple/group_deps*
T0*n
_classd
b`loc:@train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/value_grad/Select*
_output_shapes
: 
е
otrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/value_grad/tuple/control_dependency_1Identity]train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/value_grad/Select_1f^train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/value_grad/tuple/group_deps*
T0*p
_classf
dbloc:@train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/value_grad/Select_1*
_output_shapes
: 

Xtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 

Ztrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
є
htrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/BroadcastGradientArgsBroadcastGradientArgsXtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/ShapeZtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Е
Ztrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/RealDivRealDivmtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/value_grad/tuple/control_dependency>cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 
у
Vtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/SumSumZtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/RealDivhtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
Ц
Ztrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/ReshapeReshapeVtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/SumXtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
Н
Vtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/NegNeg=cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Sum_1*
T0*
_output_shapes
: 
 
\train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/RealDiv_1RealDivVtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/Neg>cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 
І
\train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/RealDiv_2RealDiv\train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/RealDiv_1>cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 
Ы
Vtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/mulMulmtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/value_grad/tuple/control_dependency\train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/RealDiv_2*
T0*
_output_shapes
: 
у
Xtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/Sum_1SumVtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/muljtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
Ь
\train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/Reshape_1ReshapeXtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/Sum_1Ztrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
Ї
ctrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/group_depsNoOp[^train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/Reshape]^train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/Reshape_1
Щ
ktrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/control_dependencyIdentityZtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/Reshaped^train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/group_deps*
T0*m
_classc
a_loc:@train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/Reshape*
_output_shapes
: 
Я
mtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/control_dependency_1Identity\train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/Reshape_1d^train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/group_deps*
T0*o
_classe
caloc:@train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/Reshape_1*
_output_shapes
: 
Ѕ
btrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/Reshape/shapeConst*
valueB *
dtype0*
_output_shapes
: 
ч
\train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/ReshapeReshapektrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/control_dependencybtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
: 
І
ctrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/Tile/multiplesConst*
valueB *
dtype0*
_output_shapes
: 
з
Ytrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/TileTile\train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/Reshapectrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/Tile/multiples*
T0*

Tmultiples0*
_output_shapes
: 
Ѕ
`train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Select_grad/zeros_likeConst*
valueB
 *    *
dtype0*
_output_shapes
: 

\train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Select_grad/SelectSelect=cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Equalmtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/control_dependency_1`train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Select_grad/zeros_like*
T0*
_output_shapes
: 

^train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Select_grad/Select_1Select=cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Equal`train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Select_grad/zeros_likemtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/div_grad/tuple/control_dependency_1*
T0*
_output_shapes
: 
Ў
ftrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Select_grad/tuple/group_depsNoOp]^train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Select_grad/Select_^train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Select_grad/Select_1
г
ntrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Select_grad/tuple/control_dependencyIdentity\train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Select_grad/Selectg^train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Select_grad/tuple/group_deps*
T0*o
_classe
caloc:@train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Select_grad/Select*
_output_shapes
: 
й
ptrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Select_grad/tuple/control_dependency_1Identity^train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Select_grad/Select_1g^train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Select_grad/tuple/group_deps*
T0*q
_classg
ecloc:@train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Select_grad/Select_1*
_output_shapes
: 
Њ
`train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Sum_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
е
Ztrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Sum_grad/ReshapeReshapeYtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Sum_1_grad/Tile`train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Sum_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
г
Xtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Sum_grad/ShapeShape;cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Mul*
T0*
out_type0*
_output_shapes
:
е
Wtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Sum_grad/TileTileZtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Sum_grad/ReshapeXtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Sum_grad/Shape*
T0*

Tmultiples0*#
_output_shapes
:џџџџџџџџџ
с
Xtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Mul_grad/ShapeShapeIcross_entropy_8/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy*
T0*
out_type0*
_output_shapes
:

Ztrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Mul_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
є
htrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgsBroadcastGradientArgsXtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Mul_grad/ShapeZtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Mul_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Ѓ
Vtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Mul_grad/mulMulWtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Sum_grad/Tile=cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Const*
T0*#
_output_shapes
:џџџџџџџџџ
п
Vtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Mul_grad/SumSumVtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Mul_grad/mulhtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
г
Ztrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Mul_grad/ReshapeReshapeVtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Mul_grad/SumXtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Mul_grad/Shape*
T0*
Tshape0*#
_output_shapes
:џџџџџџџџџ
Б
Xtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Mul_grad/mul_1MulIcross_entropy_8/total/sparse_softmax_cross_entropy_loss/xentropy/xentropyWtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Sum_grad/Tile*
T0*#
_output_shapes
:џџџџџџџџџ
х
Xtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Mul_grad/Sum_1SumXtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Mul_grad/mul_1jtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
Ь
\train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape_1ReshapeXtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Mul_grad/Sum_1Ztrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Mul_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
Ї
ctrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/group_depsNoOp[^train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape]^train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape_1
ж
ktrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/control_dependencyIdentityZtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Mul_grad/Reshaped^train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/group_deps*
T0*m
_classc
a_loc:@train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape*#
_output_shapes
:џџџџџџџџџ
Я
mtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/control_dependency_1Identity\train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape_1d^train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/group_deps*
T0*o
_classe
caloc:@train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape_1*
_output_shapes
: 
В
htrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
ќ
btrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present_grad/ReshapeReshapeptrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Select_grad/tuple/control_dependency_1htrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
ѕ
`train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present_grad/ShapeShapeUcross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights*
T0*
out_type0*
_output_shapes
:
э
_train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present_grad/TileTilebtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present_grad/Reshape`train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present_grad/Shape*
T0*

Tmultiples0*#
_output_shapes
:џџџџџџџџџ
Е
rtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 

ttrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Shape_1Shape_cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like*
T0*
out_type0*
_output_shapes
:
У
train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/BroadcastGradientArgsBroadcastGradientArgsrtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Shapettrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
ч
ptrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/mulMul_train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present_grad/Tile_cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like*
T0*#
_output_shapes
:џџџџџџџџџ
Ў
ptrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/SumSumptrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/multrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:

ttrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/ReshapeReshapeptrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Sumrtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
д
rtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/mul_1MulJcross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/Select_train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present_grad/Tile*
T0*#
_output_shapes
:џџџџџџџџџ
Д
rtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Sum_1Sumrtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/mul_1train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
Ї
vtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape_1Reshapertrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Sum_1ttrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:џџџџџџџџџ
ѕ
}train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/group_depsNoOpu^train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshapew^train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape_1
Г
train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/control_dependencyIdentityttrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape~^train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/group_deps*
T0*
_class}
{yloc:@train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape*
_output_shapes
: 
Ц
train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/control_dependency_1Identityvtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape_1~^train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/group_deps*
T0*
_class
}{loc:@train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/Reshape_1*#
_output_shapes
:џџџџџџџџџ
Ц
|train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Ч
ztrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like_grad/SumSumtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights_grad/tuple/control_dependency_1|train_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like_grad/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
Ј
train_4/gradients/zeros_like	ZerosLikeKcross_entropy_8/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy:1*
T0*'
_output_shapes
:џџџџџџџџџ

Й
ptrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/PreventGradientPreventGradientKcross_entropy_8/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy:1*
T0*Д
messageЈЅCurrently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*'
_output_shapes
:џџџџџџџџџ

К
otrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/ExpandDims/dimConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

ktrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/ExpandDims
ExpandDimsktrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/control_dependencyotrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/ExpandDims/dim*
T0*

Tdim0*'
_output_shapes
:џџџџџџџџџ
ќ
dtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/mulMulktrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/ExpandDimsptrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/PreventGradient*
T0*'
_output_shapes
:џџџџџџџџџ


3train_4/gradients/layer2_4/Wx_plus_b/add_grad/ShapeShapelayer2_4/Wx_plus_b/MatMul*
T0*
out_type0*
_output_shapes
:

5train_4/gradients/layer2_4/Wx_plus_b/add_grad/Shape_1Const*
valueB:
*
dtype0*
_output_shapes
:

Ctrain_4/gradients/layer2_4/Wx_plus_b/add_grad/BroadcastGradientArgsBroadcastGradientArgs3train_4/gradients/layer2_4/Wx_plus_b/add_grad/Shape5train_4/gradients/layer2_4/Wx_plus_b/add_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Ѓ
1train_4/gradients/layer2_4/Wx_plus_b/add_grad/SumSumdtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/mulCtrain_4/gradients/layer2_4/Wx_plus_b/add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
ш
5train_4/gradients/layer2_4/Wx_plus_b/add_grad/ReshapeReshape1train_4/gradients/layer2_4/Wx_plus_b/add_grad/Sum3train_4/gradients/layer2_4/Wx_plus_b/add_grad/Shape*
T0*
Tshape0*'
_output_shapes
:џџџџџџџџџ

Ї
3train_4/gradients/layer2_4/Wx_plus_b/add_grad/Sum_1Sumdtrain_4/gradients/cross_entropy_8/total/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/mulEtrain_4/gradients/layer2_4/Wx_plus_b/add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
с
7train_4/gradients/layer2_4/Wx_plus_b/add_grad/Reshape_1Reshape3train_4/gradients/layer2_4/Wx_plus_b/add_grad/Sum_15train_4/gradients/layer2_4/Wx_plus_b/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:

И
>train_4/gradients/layer2_4/Wx_plus_b/add_grad/tuple/group_depsNoOp6^train_4/gradients/layer2_4/Wx_plus_b/add_grad/Reshape8^train_4/gradients/layer2_4/Wx_plus_b/add_grad/Reshape_1
Ц
Ftrain_4/gradients/layer2_4/Wx_plus_b/add_grad/tuple/control_dependencyIdentity5train_4/gradients/layer2_4/Wx_plus_b/add_grad/Reshape?^train_4/gradients/layer2_4/Wx_plus_b/add_grad/tuple/group_deps*
T0*H
_class>
<:loc:@train_4/gradients/layer2_4/Wx_plus_b/add_grad/Reshape*'
_output_shapes
:џџџџџџџџџ

П
Htrain_4/gradients/layer2_4/Wx_plus_b/add_grad/tuple/control_dependency_1Identity7train_4/gradients/layer2_4/Wx_plus_b/add_grad/Reshape_1?^train_4/gradients/layer2_4/Wx_plus_b/add_grad/tuple/group_deps*
T0*J
_class@
><loc:@train_4/gradients/layer2_4/Wx_plus_b/add_grad/Reshape_1*
_output_shapes
:


7train_4/gradients/layer2_4/Wx_plus_b/MatMul_grad/MatMulMatMulFtrain_4/gradients/layer2_4/Wx_plus_b/add_grad/tuple/control_dependencylayer2_4/weights/Variable/read*
transpose_a( *
transpose_b(*
T0*(
_output_shapes
:џџџџџџџџџє
ђ
9train_4/gradients/layer2_4/Wx_plus_b/MatMul_grad/MatMul_1MatMuldropout_4/dropout/mulFtrain_4/gradients/layer2_4/Wx_plus_b/add_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0*
_output_shapes
:	є

П
Atrain_4/gradients/layer2_4/Wx_plus_b/MatMul_grad/tuple/group_depsNoOp8^train_4/gradients/layer2_4/Wx_plus_b/MatMul_grad/MatMul:^train_4/gradients/layer2_4/Wx_plus_b/MatMul_grad/MatMul_1
б
Itrain_4/gradients/layer2_4/Wx_plus_b/MatMul_grad/tuple/control_dependencyIdentity7train_4/gradients/layer2_4/Wx_plus_b/MatMul_grad/MatMulB^train_4/gradients/layer2_4/Wx_plus_b/MatMul_grad/tuple/group_deps*
T0*J
_class@
><loc:@train_4/gradients/layer2_4/Wx_plus_b/MatMul_grad/MatMul*(
_output_shapes
:џџџџџџџџџє
Ю
Ktrain_4/gradients/layer2_4/Wx_plus_b/MatMul_grad/tuple/control_dependency_1Identity9train_4/gradients/layer2_4/Wx_plus_b/MatMul_grad/MatMul_1B^train_4/gradients/layer2_4/Wx_plus_b/MatMul_grad/tuple/group_deps*
T0*L
_classB
@>loc:@train_4/gradients/layer2_4/Wx_plus_b/MatMul_grad/MatMul_1*
_output_shapes
:	є


2train_4/gradients/dropout_4/dropout/mul_grad/ShapeShapedropout_4/dropout/div*
T0*
out_type0*#
_output_shapes
:џџџџџџџџџ

4train_4/gradients/dropout_4/dropout/mul_grad/Shape_1Shapedropout_4/dropout/Floor*
T0*
out_type0*#
_output_shapes
:џџџџџџџџџ

Btrain_4/gradients/dropout_4/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs2train_4/gradients/dropout_4/dropout/mul_grad/Shape4train_4/gradients/dropout_4/dropout/mul_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
О
0train_4/gradients/dropout_4/dropout/mul_grad/mulMulItrain_4/gradients/layer2_4/Wx_plus_b/MatMul_grad/tuple/control_dependencydropout_4/dropout/Floor*
T0*
_output_shapes
:
э
0train_4/gradients/dropout_4/dropout/mul_grad/SumSum0train_4/gradients/dropout_4/dropout/mul_grad/mulBtrain_4/gradients/dropout_4/dropout/mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
ж
4train_4/gradients/dropout_4/dropout/mul_grad/ReshapeReshape0train_4/gradients/dropout_4/dropout/mul_grad/Sum2train_4/gradients/dropout_4/dropout/mul_grad/Shape*
T0*
Tshape0*
_output_shapes
:
О
2train_4/gradients/dropout_4/dropout/mul_grad/mul_1Muldropout_4/dropout/divItrain_4/gradients/layer2_4/Wx_plus_b/MatMul_grad/tuple/control_dependency*
T0*
_output_shapes
:
ѓ
2train_4/gradients/dropout_4/dropout/mul_grad/Sum_1Sum2train_4/gradients/dropout_4/dropout/mul_grad/mul_1Dtrain_4/gradients/dropout_4/dropout/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
м
6train_4/gradients/dropout_4/dropout/mul_grad/Reshape_1Reshape2train_4/gradients/dropout_4/dropout/mul_grad/Sum_14train_4/gradients/dropout_4/dropout/mul_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
Е
=train_4/gradients/dropout_4/dropout/mul_grad/tuple/group_depsNoOp5^train_4/gradients/dropout_4/dropout/mul_grad/Reshape7^train_4/gradients/dropout_4/dropout/mul_grad/Reshape_1
Г
Etrain_4/gradients/dropout_4/dropout/mul_grad/tuple/control_dependencyIdentity4train_4/gradients/dropout_4/dropout/mul_grad/Reshape>^train_4/gradients/dropout_4/dropout/mul_grad/tuple/group_deps*
T0*G
_class=
;9loc:@train_4/gradients/dropout_4/dropout/mul_grad/Reshape*
_output_shapes
:
Й
Gtrain_4/gradients/dropout_4/dropout/mul_grad/tuple/control_dependency_1Identity6train_4/gradients/dropout_4/dropout/mul_grad/Reshape_1>^train_4/gradients/dropout_4/dropout/mul_grad/tuple/group_deps*
T0*I
_class?
=;loc:@train_4/gradients/dropout_4/dropout/mul_grad/Reshape_1*
_output_shapes
:

2train_4/gradients/dropout_4/dropout/div_grad/ShapeShapelayer1_4/activation*
T0*
out_type0*
_output_shapes
:

4train_4/gradients/dropout_4/dropout/div_grad/Shape_1Shapedropout_4/Placeholder*
T0*
out_type0*#
_output_shapes
:џџџџџџџџџ

Btrain_4/gradients/dropout_4/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs2train_4/gradients/dropout_4/dropout/div_grad/Shape4train_4/gradients/dropout_4/dropout/div_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Р
4train_4/gradients/dropout_4/dropout/div_grad/RealDivRealDivEtrain_4/gradients/dropout_4/dropout/mul_grad/tuple/control_dependencydropout_4/Placeholder*
T0*
_output_shapes
:
ё
0train_4/gradients/dropout_4/dropout/div_grad/SumSum4train_4/gradients/dropout_4/dropout/div_grad/RealDivBtrain_4/gradients/dropout_4/dropout/div_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
ц
4train_4/gradients/dropout_4/dropout/div_grad/ReshapeReshape0train_4/gradients/dropout_4/dropout/div_grad/Sum2train_4/gradients/dropout_4/dropout/div_grad/Shape*
T0*
Tshape0*(
_output_shapes
:џџџџџџџџџє

0train_4/gradients/dropout_4/dropout/div_grad/NegNeglayer1_4/activation*
T0*(
_output_shapes
:џџџџџџџџџє
­
6train_4/gradients/dropout_4/dropout/div_grad/RealDiv_1RealDiv0train_4/gradients/dropout_4/dropout/div_grad/Negdropout_4/Placeholder*
T0*
_output_shapes
:
Г
6train_4/gradients/dropout_4/dropout/div_grad/RealDiv_2RealDiv6train_4/gradients/dropout_4/dropout/div_grad/RealDiv_1dropout_4/Placeholder*
T0*
_output_shapes
:
й
0train_4/gradients/dropout_4/dropout/div_grad/mulMulEtrain_4/gradients/dropout_4/dropout/mul_grad/tuple/control_dependency6train_4/gradients/dropout_4/dropout/div_grad/RealDiv_2*
T0*
_output_shapes
:
ё
2train_4/gradients/dropout_4/dropout/div_grad/Sum_1Sum0train_4/gradients/dropout_4/dropout/div_grad/mulDtrain_4/gradients/dropout_4/dropout/div_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
м
6train_4/gradients/dropout_4/dropout/div_grad/Reshape_1Reshape2train_4/gradients/dropout_4/dropout/div_grad/Sum_14train_4/gradients/dropout_4/dropout/div_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
Е
=train_4/gradients/dropout_4/dropout/div_grad/tuple/group_depsNoOp5^train_4/gradients/dropout_4/dropout/div_grad/Reshape7^train_4/gradients/dropout_4/dropout/div_grad/Reshape_1
У
Etrain_4/gradients/dropout_4/dropout/div_grad/tuple/control_dependencyIdentity4train_4/gradients/dropout_4/dropout/div_grad/Reshape>^train_4/gradients/dropout_4/dropout/div_grad/tuple/group_deps*
T0*G
_class=
;9loc:@train_4/gradients/dropout_4/dropout/div_grad/Reshape*(
_output_shapes
:џџџџџџџџџє
Й
Gtrain_4/gradients/dropout_4/dropout/div_grad/tuple/control_dependency_1Identity6train_4/gradients/dropout_4/dropout/div_grad/Reshape_1>^train_4/gradients/dropout_4/dropout/div_grad/tuple/group_deps*
T0*I
_class?
=;loc:@train_4/gradients/dropout_4/dropout/div_grad/Reshape_1*
_output_shapes
:
Ю
3train_4/gradients/layer1_4/activation_grad/ReluGradReluGradEtrain_4/gradients/dropout_4/dropout/div_grad/tuple/control_dependencylayer1_4/activation*
T0*(
_output_shapes
:џџџџџџџџџє

3train_4/gradients/layer1_4/Wx_plus_b/add_grad/ShapeShapelayer1_4/Wx_plus_b/MatMul*
T0*
out_type0*
_output_shapes
:

5train_4/gradients/layer1_4/Wx_plus_b/add_grad/Shape_1Const*
valueB:є*
dtype0*
_output_shapes
:

Ctrain_4/gradients/layer1_4/Wx_plus_b/add_grad/BroadcastGradientArgsBroadcastGradientArgs3train_4/gradients/layer1_4/Wx_plus_b/add_grad/Shape5train_4/gradients/layer1_4/Wx_plus_b/add_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
ђ
1train_4/gradients/layer1_4/Wx_plus_b/add_grad/SumSum3train_4/gradients/layer1_4/activation_grad/ReluGradCtrain_4/gradients/layer1_4/Wx_plus_b/add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
щ
5train_4/gradients/layer1_4/Wx_plus_b/add_grad/ReshapeReshape1train_4/gradients/layer1_4/Wx_plus_b/add_grad/Sum3train_4/gradients/layer1_4/Wx_plus_b/add_grad/Shape*
T0*
Tshape0*(
_output_shapes
:џџџџџџџџџє
і
3train_4/gradients/layer1_4/Wx_plus_b/add_grad/Sum_1Sum3train_4/gradients/layer1_4/activation_grad/ReluGradEtrain_4/gradients/layer1_4/Wx_plus_b/add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
т
7train_4/gradients/layer1_4/Wx_plus_b/add_grad/Reshape_1Reshape3train_4/gradients/layer1_4/Wx_plus_b/add_grad/Sum_15train_4/gradients/layer1_4/Wx_plus_b/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes	
:є
И
>train_4/gradients/layer1_4/Wx_plus_b/add_grad/tuple/group_depsNoOp6^train_4/gradients/layer1_4/Wx_plus_b/add_grad/Reshape8^train_4/gradients/layer1_4/Wx_plus_b/add_grad/Reshape_1
Ч
Ftrain_4/gradients/layer1_4/Wx_plus_b/add_grad/tuple/control_dependencyIdentity5train_4/gradients/layer1_4/Wx_plus_b/add_grad/Reshape?^train_4/gradients/layer1_4/Wx_plus_b/add_grad/tuple/group_deps*
T0*H
_class>
<:loc:@train_4/gradients/layer1_4/Wx_plus_b/add_grad/Reshape*(
_output_shapes
:џџџџџџџџџє
Р
Htrain_4/gradients/layer1_4/Wx_plus_b/add_grad/tuple/control_dependency_1Identity7train_4/gradients/layer1_4/Wx_plus_b/add_grad/Reshape_1?^train_4/gradients/layer1_4/Wx_plus_b/add_grad/tuple/group_deps*
T0*J
_class@
><loc:@train_4/gradients/layer1_4/Wx_plus_b/add_grad/Reshape_1*
_output_shapes	
:є

7train_4/gradients/layer1_4/Wx_plus_b/MatMul_grad/MatMulMatMulFtrain_4/gradients/layer1_4/Wx_plus_b/add_grad/tuple/control_dependencylayer1_4/weights/Variable/read*
transpose_a( *
transpose_b(*
T0*(
_output_shapes
:џџџџџџџџџ
э
9train_4/gradients/layer1_4/Wx_plus_b/MatMul_grad/MatMul_1MatMulinput_5/x-inputFtrain_4/gradients/layer1_4/Wx_plus_b/add_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0* 
_output_shapes
:
є
П
Atrain_4/gradients/layer1_4/Wx_plus_b/MatMul_grad/tuple/group_depsNoOp8^train_4/gradients/layer1_4/Wx_plus_b/MatMul_grad/MatMul:^train_4/gradients/layer1_4/Wx_plus_b/MatMul_grad/MatMul_1
б
Itrain_4/gradients/layer1_4/Wx_plus_b/MatMul_grad/tuple/control_dependencyIdentity7train_4/gradients/layer1_4/Wx_plus_b/MatMul_grad/MatMulB^train_4/gradients/layer1_4/Wx_plus_b/MatMul_grad/tuple/group_deps*
T0*J
_class@
><loc:@train_4/gradients/layer1_4/Wx_plus_b/MatMul_grad/MatMul*(
_output_shapes
:џџџџџџџџџ
Я
Ktrain_4/gradients/layer1_4/Wx_plus_b/MatMul_grad/tuple/control_dependency_1Identity9train_4/gradients/layer1_4/Wx_plus_b/MatMul_grad/MatMul_1B^train_4/gradients/layer1_4/Wx_plus_b/MatMul_grad/tuple/group_deps*
T0*L
_classB
@>loc:@train_4/gradients/layer1_4/Wx_plus_b/MatMul_grad/MatMul_1* 
_output_shapes
:
є

!train_4/beta1_power/initial_valueConst*
valueB
 *fff?*
dtype0*+
_class!
loc:@layer1_4/biases/Variable*
_output_shapes
: 
Є
train_4/beta1_power
VariableV2*
shape: *
dtype0*
	container *
shared_name *+
_class!
loc:@layer1_4/biases/Variable*
_output_shapes
: 
г
train_4/beta1_power/AssignAssigntrain_4/beta1_power!train_4/beta1_power/initial_value*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@layer1_4/biases/Variable*
_output_shapes
: 

train_4/beta1_power/readIdentitytrain_4/beta1_power*
T0*+
_class!
loc:@layer1_4/biases/Variable*
_output_shapes
: 

!train_4/beta2_power/initial_valueConst*
valueB
 *wО?*
dtype0*+
_class!
loc:@layer1_4/biases/Variable*
_output_shapes
: 
Є
train_4/beta2_power
VariableV2*
shape: *
dtype0*
	container *
shared_name *+
_class!
loc:@layer1_4/biases/Variable*
_output_shapes
: 
г
train_4/beta2_power/AssignAssigntrain_4/beta2_power!train_4/beta2_power/initial_value*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@layer1_4/biases/Variable*
_output_shapes
: 

train_4/beta2_power/readIdentitytrain_4/beta2_power*
T0*+
_class!
loc:@layer1_4/biases/Variable*
_output_shapes
: 
З
0layer1_4/weights/Variable/Adam/Initializer/zerosConst*
valueB
є*    *
dtype0*,
_class"
 loc:@layer1_4/weights/Variable* 
_output_shapes
:
є
Ф
layer1_4/weights/Variable/Adam
VariableV2*
shape:
є*
dtype0*
	container *
shared_name *,
_class"
 loc:@layer1_4/weights/Variable* 
_output_shapes
:
є

%layer1_4/weights/Variable/Adam/AssignAssignlayer1_4/weights/Variable/Adam0layer1_4/weights/Variable/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@layer1_4/weights/Variable* 
_output_shapes
:
є
Ј
#layer1_4/weights/Variable/Adam/readIdentitylayer1_4/weights/Variable/Adam*
T0*,
_class"
 loc:@layer1_4/weights/Variable* 
_output_shapes
:
є
Й
2layer1_4/weights/Variable/Adam_1/Initializer/zerosConst*
valueB
є*    *
dtype0*,
_class"
 loc:@layer1_4/weights/Variable* 
_output_shapes
:
є
Ц
 layer1_4/weights/Variable/Adam_1
VariableV2*
shape:
є*
dtype0*
	container *
shared_name *,
_class"
 loc:@layer1_4/weights/Variable* 
_output_shapes
:
є

'layer1_4/weights/Variable/Adam_1/AssignAssign layer1_4/weights/Variable/Adam_12layer1_4/weights/Variable/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@layer1_4/weights/Variable* 
_output_shapes
:
є
Ќ
%layer1_4/weights/Variable/Adam_1/readIdentity layer1_4/weights/Variable/Adam_1*
T0*,
_class"
 loc:@layer1_4/weights/Variable* 
_output_shapes
:
є
Ћ
/layer1_4/biases/Variable/Adam/Initializer/zerosConst*
valueBє*    *
dtype0*+
_class!
loc:@layer1_4/biases/Variable*
_output_shapes	
:є
И
layer1_4/biases/Variable/Adam
VariableV2*
shape:є*
dtype0*
	container *
shared_name *+
_class!
loc:@layer1_4/biases/Variable*
_output_shapes	
:є
њ
$layer1_4/biases/Variable/Adam/AssignAssignlayer1_4/biases/Variable/Adam/layer1_4/biases/Variable/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@layer1_4/biases/Variable*
_output_shapes	
:є
 
"layer1_4/biases/Variable/Adam/readIdentitylayer1_4/biases/Variable/Adam*
T0*+
_class!
loc:@layer1_4/biases/Variable*
_output_shapes	
:є
­
1layer1_4/biases/Variable/Adam_1/Initializer/zerosConst*
valueBє*    *
dtype0*+
_class!
loc:@layer1_4/biases/Variable*
_output_shapes	
:є
К
layer1_4/biases/Variable/Adam_1
VariableV2*
shape:є*
dtype0*
	container *
shared_name *+
_class!
loc:@layer1_4/biases/Variable*
_output_shapes	
:є

&layer1_4/biases/Variable/Adam_1/AssignAssignlayer1_4/biases/Variable/Adam_11layer1_4/biases/Variable/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@layer1_4/biases/Variable*
_output_shapes	
:є
Є
$layer1_4/biases/Variable/Adam_1/readIdentitylayer1_4/biases/Variable/Adam_1*
T0*+
_class!
loc:@layer1_4/biases/Variable*
_output_shapes	
:є
Е
0layer2_4/weights/Variable/Adam/Initializer/zerosConst*
valueB	є
*    *
dtype0*,
_class"
 loc:@layer2_4/weights/Variable*
_output_shapes
:	є

Т
layer2_4/weights/Variable/Adam
VariableV2*
shape:	є
*
dtype0*
	container *
shared_name *,
_class"
 loc:@layer2_4/weights/Variable*
_output_shapes
:	є


%layer2_4/weights/Variable/Adam/AssignAssignlayer2_4/weights/Variable/Adam0layer2_4/weights/Variable/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@layer2_4/weights/Variable*
_output_shapes
:	є

Ї
#layer2_4/weights/Variable/Adam/readIdentitylayer2_4/weights/Variable/Adam*
T0*,
_class"
 loc:@layer2_4/weights/Variable*
_output_shapes
:	є

З
2layer2_4/weights/Variable/Adam_1/Initializer/zerosConst*
valueB	є
*    *
dtype0*,
_class"
 loc:@layer2_4/weights/Variable*
_output_shapes
:	є

Ф
 layer2_4/weights/Variable/Adam_1
VariableV2*
shape:	є
*
dtype0*
	container *
shared_name *,
_class"
 loc:@layer2_4/weights/Variable*
_output_shapes
:	є


'layer2_4/weights/Variable/Adam_1/AssignAssign layer2_4/weights/Variable/Adam_12layer2_4/weights/Variable/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@layer2_4/weights/Variable*
_output_shapes
:	є

Ћ
%layer2_4/weights/Variable/Adam_1/readIdentity layer2_4/weights/Variable/Adam_1*
T0*,
_class"
 loc:@layer2_4/weights/Variable*
_output_shapes
:	є

Љ
/layer2_4/biases/Variable/Adam/Initializer/zerosConst*
valueB
*    *
dtype0*+
_class!
loc:@layer2_4/biases/Variable*
_output_shapes
:

Ж
layer2_4/biases/Variable/Adam
VariableV2*
shape:
*
dtype0*
	container *
shared_name *+
_class!
loc:@layer2_4/biases/Variable*
_output_shapes
:

љ
$layer2_4/biases/Variable/Adam/AssignAssignlayer2_4/biases/Variable/Adam/layer2_4/biases/Variable/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@layer2_4/biases/Variable*
_output_shapes
:


"layer2_4/biases/Variable/Adam/readIdentitylayer2_4/biases/Variable/Adam*
T0*+
_class!
loc:@layer2_4/biases/Variable*
_output_shapes
:

Ћ
1layer2_4/biases/Variable/Adam_1/Initializer/zerosConst*
valueB
*    *
dtype0*+
_class!
loc:@layer2_4/biases/Variable*
_output_shapes
:

И
layer2_4/biases/Variable/Adam_1
VariableV2*
shape:
*
dtype0*
	container *
shared_name *+
_class!
loc:@layer2_4/biases/Variable*
_output_shapes
:

џ
&layer2_4/biases/Variable/Adam_1/AssignAssignlayer2_4/biases/Variable/Adam_11layer2_4/biases/Variable/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@layer2_4/biases/Variable*
_output_shapes
:

Ѓ
$layer2_4/biases/Variable/Adam_1/readIdentitylayer2_4/biases/Variable/Adam_1*
T0*+
_class!
loc:@layer2_4/biases/Variable*
_output_shapes
:

_
train_4/Adam/learning_rateConst*
valueB
 *o:*
dtype0*
_output_shapes
: 
W
train_4/Adam/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
W
train_4/Adam/beta2Const*
valueB
 *wО?*
dtype0*
_output_shapes
: 
Y
train_4/Adam/epsilonConst*
valueB
 *wЬ+2*
dtype0*
_output_shapes
: 
ќ
7train_4/Adam/update_layer1_4/weights/Variable/ApplyAdam	ApplyAdamlayer1_4/weights/Variablelayer1_4/weights/Variable/Adam layer1_4/weights/Variable/Adam_1train_4/beta1_power/readtrain_4/beta2_power/readtrain_4/Adam/learning_ratetrain_4/Adam/beta1train_4/Adam/beta2train_4/Adam/epsilonKtrain_4/gradients/layer1_4/Wx_plus_b/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *,
_class"
 loc:@layer1_4/weights/Variable* 
_output_shapes
:
є
я
6train_4/Adam/update_layer1_4/biases/Variable/ApplyAdam	ApplyAdamlayer1_4/biases/Variablelayer1_4/biases/Variable/Adamlayer1_4/biases/Variable/Adam_1train_4/beta1_power/readtrain_4/beta2_power/readtrain_4/Adam/learning_ratetrain_4/Adam/beta1train_4/Adam/beta2train_4/Adam/epsilonHtrain_4/gradients/layer1_4/Wx_plus_b/add_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *+
_class!
loc:@layer1_4/biases/Variable*
_output_shapes	
:є
ћ
7train_4/Adam/update_layer2_4/weights/Variable/ApplyAdam	ApplyAdamlayer2_4/weights/Variablelayer2_4/weights/Variable/Adam layer2_4/weights/Variable/Adam_1train_4/beta1_power/readtrain_4/beta2_power/readtrain_4/Adam/learning_ratetrain_4/Adam/beta1train_4/Adam/beta2train_4/Adam/epsilonKtrain_4/gradients/layer2_4/Wx_plus_b/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *,
_class"
 loc:@layer2_4/weights/Variable*
_output_shapes
:	є

ю
6train_4/Adam/update_layer2_4/biases/Variable/ApplyAdam	ApplyAdamlayer2_4/biases/Variablelayer2_4/biases/Variable/Adamlayer2_4/biases/Variable/Adam_1train_4/beta1_power/readtrain_4/beta2_power/readtrain_4/Adam/learning_ratetrain_4/Adam/beta1train_4/Adam/beta2train_4/Adam/epsilonHtrain_4/gradients/layer2_4/Wx_plus_b/add_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *+
_class!
loc:@layer2_4/biases/Variable*
_output_shapes
:

љ
train_4/Adam/mulMultrain_4/beta1_power/readtrain_4/Adam/beta18^train_4/Adam/update_layer1_4/weights/Variable/ApplyAdam7^train_4/Adam/update_layer1_4/biases/Variable/ApplyAdam8^train_4/Adam/update_layer2_4/weights/Variable/ApplyAdam7^train_4/Adam/update_layer2_4/biases/Variable/ApplyAdam*
T0*+
_class!
loc:@layer1_4/biases/Variable*
_output_shapes
: 
Л
train_4/Adam/AssignAssigntrain_4/beta1_powertrain_4/Adam/mul*
T0*
validate_shape(*
use_locking( *+
_class!
loc:@layer1_4/biases/Variable*
_output_shapes
: 
ћ
train_4/Adam/mul_1Multrain_4/beta2_power/readtrain_4/Adam/beta28^train_4/Adam/update_layer1_4/weights/Variable/ApplyAdam7^train_4/Adam/update_layer1_4/biases/Variable/ApplyAdam8^train_4/Adam/update_layer2_4/weights/Variable/ApplyAdam7^train_4/Adam/update_layer2_4/biases/Variable/ApplyAdam*
T0*+
_class!
loc:@layer1_4/biases/Variable*
_output_shapes
: 
П
train_4/Adam/Assign_1Assigntrain_4/beta2_powertrain_4/Adam/mul_1*
T0*
validate_shape(*
use_locking( *+
_class!
loc:@layer1_4/biases/Variable*
_output_shapes
: 
Ј
train_4/AdamNoOp8^train_4/Adam/update_layer1_4/weights/Variable/ApplyAdam7^train_4/Adam/update_layer1_4/biases/Variable/ApplyAdam8^train_4/Adam/update_layer2_4/weights/Variable/ApplyAdam7^train_4/Adam/update_layer2_4/biases/Variable/ApplyAdam^train_4/Adam/Assign^train_4/Adam/Assign_1
p
.accuracy_8/correct_prediction/ArgMax/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
Р
$accuracy_8/correct_prediction/ArgMaxArgMaxlayer2_4/activation.accuracy_8/correct_prediction/ArgMax/dimension*
T0*

Tidx0*
output_type0	*#
_output_shapes
:џџџџџџџџџ

#accuracy_8/correct_prediction/EqualEqual$accuracy_8/correct_prediction/ArgMaxinput_5/y-input*
T0	*#
_output_shapes
:џџџџџџџџџ

accuracy_8/accuracy/CastCast#accuracy_8/correct_prediction/Equal*

SrcT0
*

DstT0*#
_output_shapes
:џџџџџџџџџ
c
accuracy_8/accuracy/ConstConst*
valueB: *
dtype0*
_output_shapes
:

accuracy_8/accuracy/MeanMeanaccuracy_8/accuracy/Castaccuracy_8/accuracy/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
Z
accuracy_9/tagsConst*
valueB B
accuracy_9*
dtype0*
_output_shapes
: 
g

accuracy_9ScalarSummaryaccuracy_9/tagsaccuracy_8/accuracy/Mean*
T0*
_output_shapes
: 
у"
Merge_4/MergeSummaryMergeSummaryinput_reshape/inputinput_reshape_1/inputlayer1/weights/summaries/mean!layer1/weights/summaries/stddev_1layer1/weights/summaries/maxlayer1/weights/summaries/min"layer1/weights/summaries/histogramlayer1/biases/summaries/mean layer1/biases/summaries/stddev_1layer1/biases/summaries/maxlayer1/biases/summaries/min!layer1/biases/summaries/histogram layer1/Wx_plus_b/pre_activationslayer1/activations dropout/dropout_keep_probabilitylayer2/weights/summaries/mean!layer2/weights/summaries/stddev_1layer2/weights/summaries/maxlayer2/weights/summaries/min"layer2/weights/summaries/histogramlayer2/biases/summaries/mean layer2/biases/summaries/stddev_1layer2/biases/summaries/maxlayer2/biases/summaries/min!layer2/biases/summaries/histogram layer2/Wx_plus_b/pre_activationslayer2/activationscross_entropy_1
accuracy_1input_reshape_2/inputlayer1_1/weights/summaries/mean#layer1_1/weights/summaries/stddev_1layer1_1/weights/summaries/maxlayer1_1/weights/summaries/min$layer1_1/weights/summaries/histogramlayer1_1/biases/summaries/mean"layer1_1/biases/summaries/stddev_1layer1_1/biases/summaries/maxlayer1_1/biases/summaries/min#layer1_1/biases/summaries/histogram"layer1_1/Wx_plus_b/pre_activationslayer1_1/activations"dropout_1/dropout_keep_probabilitylayer2_1/weights/summaries/mean#layer2_1/weights/summaries/stddev_1layer2_1/weights/summaries/maxlayer2_1/weights/summaries/min$layer2_1/weights/summaries/histogramlayer2_1/biases/summaries/mean"layer2_1/biases/summaries/stddev_1layer2_1/biases/summaries/maxlayer2_1/biases/summaries/min#layer2_1/biases/summaries/histogram"layer2_1/Wx_plus_b/pre_activationslayer2_1/activationscross_entropy_3
accuracy_3input_reshape_3/inputlayer1_2/weights/summaries/mean#layer1_2/weights/summaries/stddev_1layer1_2/weights/summaries/maxlayer1_2/weights/summaries/min$layer1_2/weights/summaries/histogramlayer1_2/biases/summaries/mean"layer1_2/biases/summaries/stddev_1layer1_2/biases/summaries/maxlayer1_2/biases/summaries/min#layer1_2/biases/summaries/histogram"layer1_2/Wx_plus_b/pre_activationslayer1_2/activations"dropout_2/dropout_keep_probabilitylayer2_2/weights/summaries/mean#layer2_2/weights/summaries/stddev_1layer2_2/weights/summaries/maxlayer2_2/weights/summaries/min$layer2_2/weights/summaries/histogramlayer2_2/biases/summaries/mean"layer2_2/biases/summaries/stddev_1layer2_2/biases/summaries/maxlayer2_2/biases/summaries/min#layer2_2/biases/summaries/histogram"layer2_2/Wx_plus_b/pre_activationslayer2_2/activationscross_entropy_5
accuracy_5input_reshape_4/inputlayer1_3/weights/summaries/mean#layer1_3/weights/summaries/stddev_1layer1_3/weights/summaries/maxlayer1_3/weights/summaries/min$layer1_3/weights/summaries/histogramlayer1_3/biases/summaries/mean"layer1_3/biases/summaries/stddev_1layer1_3/biases/summaries/maxlayer1_3/biases/summaries/min#layer1_3/biases/summaries/histogram"layer1_3/Wx_plus_b/pre_activationslayer1_3/activations"dropout_3/dropout_keep_probabilitylayer2_3/weights/summaries/mean#layer2_3/weights/summaries/stddev_1layer2_3/weights/summaries/maxlayer2_3/weights/summaries/min$layer2_3/weights/summaries/histogramlayer2_3/biases/summaries/mean"layer2_3/biases/summaries/stddev_1layer2_3/biases/summaries/maxlayer2_3/biases/summaries/min#layer2_3/biases/summaries/histogram"layer2_3/Wx_plus_b/pre_activationslayer2_3/activationscross_entropy_7
accuracy_7input_reshape_5/inputlayer1_4/weights/summaries/mean#layer1_4/weights/summaries/stddev_1layer1_4/weights/summaries/maxlayer1_4/weights/summaries/min$layer1_4/weights/summaries/histogramlayer1_4/biases/summaries/mean"layer1_4/biases/summaries/stddev_1layer1_4/biases/summaries/maxlayer1_4/biases/summaries/min#layer1_4/biases/summaries/histogram"layer1_4/Wx_plus_b/pre_activationslayer1_4/activations"dropout_4/dropout_keep_probabilitylayer2_4/weights/summaries/mean#layer2_4/weights/summaries/stddev_1layer2_4/weights/summaries/maxlayer2_4/weights/summaries/min$layer2_4/weights/summaries/histogramlayer2_4/biases/summaries/mean"layer2_4/biases/summaries/stddev_1layer2_4/biases/summaries/maxlayer2_4/biases/summaries/min#layer2_4/biases/summaries/histogram"layer2_4/Wx_plus_b/pre_activationslayer2_4/activationscross_entropy_9
accuracy_9*
N*
_output_shapes
: ""Ш$
	summariesК$
З$
input_reshape/input:0
input_reshape_1/input:0
layer1/weights/summaries/mean:0
#layer1/weights/summaries/stddev_1:0
layer1/weights/summaries/max:0
layer1/weights/summaries/min:0
$layer1/weights/summaries/histogram:0
layer1/biases/summaries/mean:0
"layer1/biases/summaries/stddev_1:0
layer1/biases/summaries/max:0
layer1/biases/summaries/min:0
#layer1/biases/summaries/histogram:0
"layer1/Wx_plus_b/pre_activations:0
layer1/activations:0
"dropout/dropout_keep_probability:0
layer2/weights/summaries/mean:0
#layer2/weights/summaries/stddev_1:0
layer2/weights/summaries/max:0
layer2/weights/summaries/min:0
$layer2/weights/summaries/histogram:0
layer2/biases/summaries/mean:0
"layer2/biases/summaries/stddev_1:0
layer2/biases/summaries/max:0
layer2/biases/summaries/min:0
#layer2/biases/summaries/histogram:0
"layer2/Wx_plus_b/pre_activations:0
layer2/activations:0
cross_entropy_1:0
accuracy_1:0
input_reshape_2/input:0
!layer1_1/weights/summaries/mean:0
%layer1_1/weights/summaries/stddev_1:0
 layer1_1/weights/summaries/max:0
 layer1_1/weights/summaries/min:0
&layer1_1/weights/summaries/histogram:0
 layer1_1/biases/summaries/mean:0
$layer1_1/biases/summaries/stddev_1:0
layer1_1/biases/summaries/max:0
layer1_1/biases/summaries/min:0
%layer1_1/biases/summaries/histogram:0
$layer1_1/Wx_plus_b/pre_activations:0
layer1_1/activations:0
$dropout_1/dropout_keep_probability:0
!layer2_1/weights/summaries/mean:0
%layer2_1/weights/summaries/stddev_1:0
 layer2_1/weights/summaries/max:0
 layer2_1/weights/summaries/min:0
&layer2_1/weights/summaries/histogram:0
 layer2_1/biases/summaries/mean:0
$layer2_1/biases/summaries/stddev_1:0
layer2_1/biases/summaries/max:0
layer2_1/biases/summaries/min:0
%layer2_1/biases/summaries/histogram:0
$layer2_1/Wx_plus_b/pre_activations:0
layer2_1/activations:0
cross_entropy_3:0
accuracy_3:0
input_reshape_3/input:0
!layer1_2/weights/summaries/mean:0
%layer1_2/weights/summaries/stddev_1:0
 layer1_2/weights/summaries/max:0
 layer1_2/weights/summaries/min:0
&layer1_2/weights/summaries/histogram:0
 layer1_2/biases/summaries/mean:0
$layer1_2/biases/summaries/stddev_1:0
layer1_2/biases/summaries/max:0
layer1_2/biases/summaries/min:0
%layer1_2/biases/summaries/histogram:0
$layer1_2/Wx_plus_b/pre_activations:0
layer1_2/activations:0
$dropout_2/dropout_keep_probability:0
!layer2_2/weights/summaries/mean:0
%layer2_2/weights/summaries/stddev_1:0
 layer2_2/weights/summaries/max:0
 layer2_2/weights/summaries/min:0
&layer2_2/weights/summaries/histogram:0
 layer2_2/biases/summaries/mean:0
$layer2_2/biases/summaries/stddev_1:0
layer2_2/biases/summaries/max:0
layer2_2/biases/summaries/min:0
%layer2_2/biases/summaries/histogram:0
$layer2_2/Wx_plus_b/pre_activations:0
layer2_2/activations:0
cross_entropy_5:0
accuracy_5:0
input_reshape_4/input:0
!layer1_3/weights/summaries/mean:0
%layer1_3/weights/summaries/stddev_1:0
 layer1_3/weights/summaries/max:0
 layer1_3/weights/summaries/min:0
&layer1_3/weights/summaries/histogram:0
 layer1_3/biases/summaries/mean:0
$layer1_3/biases/summaries/stddev_1:0
layer1_3/biases/summaries/max:0
layer1_3/biases/summaries/min:0
%layer1_3/biases/summaries/histogram:0
$layer1_3/Wx_plus_b/pre_activations:0
layer1_3/activations:0
$dropout_3/dropout_keep_probability:0
!layer2_3/weights/summaries/mean:0
%layer2_3/weights/summaries/stddev_1:0
 layer2_3/weights/summaries/max:0
 layer2_3/weights/summaries/min:0
&layer2_3/weights/summaries/histogram:0
 layer2_3/biases/summaries/mean:0
$layer2_3/biases/summaries/stddev_1:0
layer2_3/biases/summaries/max:0
layer2_3/biases/summaries/min:0
%layer2_3/biases/summaries/histogram:0
$layer2_3/Wx_plus_b/pre_activations:0
layer2_3/activations:0
cross_entropy_7:0
accuracy_7:0
input_reshape_5/input:0
!layer1_4/weights/summaries/mean:0
%layer1_4/weights/summaries/stddev_1:0
 layer1_4/weights/summaries/max:0
 layer1_4/weights/summaries/min:0
&layer1_4/weights/summaries/histogram:0
 layer1_4/biases/summaries/mean:0
$layer1_4/biases/summaries/stddev_1:0
layer1_4/biases/summaries/max:0
layer1_4/biases/summaries/min:0
%layer1_4/biases/summaries/histogram:0
$layer1_4/Wx_plus_b/pre_activations:0
layer1_4/activations:0
$dropout_4/dropout_keep_probability:0
!layer2_4/weights/summaries/mean:0
%layer2_4/weights/summaries/stddev_1:0
 layer2_4/weights/summaries/max:0
 layer2_4/weights/summaries/min:0
&layer2_4/weights/summaries/histogram:0
 layer2_4/biases/summaries/mean:0
$layer2_4/biases/summaries/stddev_1:0
layer2_4/biases/summaries/max:0
layer2_4/biases/summaries/min:0
%layer2_4/biases/summaries/histogram:0
$layer2_4/Wx_plus_b/pre_activations:0
layer2_4/activations:0
cross_entropy_9:0
accuracy_9:0"ЗQ
	variablesЉQІQ
~
layer1/weights/Variable:0layer1/weights/Variable/Assignlayer1/weights/Variable/read:02!layer1/weights/truncated_normal:0
o
layer1/biases/Variable:0layer1/biases/Variable/Assignlayer1/biases/Variable/read:02layer1/biases/Const:0
~
layer2/weights/Variable:0layer2/weights/Variable/Assignlayer2/weights/Variable/read:02!layer2/weights/truncated_normal:0
o
layer2/biases/Variable:0layer2/biases/Variable/Assignlayer2/biases/Variable/read:02layer2/biases/Const:0
l
train/beta1_power:0train/beta1_power/Assigntrain/beta1_power/read:02!train/beta1_power/initial_value:0
l
train/beta2_power:0train/beta2_power/Assigntrain/beta2_power/read:02!train/beta2_power/initial_value:0

layer1/weights/Variable/Adam:0#layer1/weights/Variable/Adam/Assign#layer1/weights/Variable/Adam/read:020layer1/weights/Variable/Adam/Initializer/zeros:0
Є
 layer1/weights/Variable/Adam_1:0%layer1/weights/Variable/Adam_1/Assign%layer1/weights/Variable/Adam_1/read:022layer1/weights/Variable/Adam_1/Initializer/zeros:0

layer1/biases/Variable/Adam:0"layer1/biases/Variable/Adam/Assign"layer1/biases/Variable/Adam/read:02/layer1/biases/Variable/Adam/Initializer/zeros:0
 
layer1/biases/Variable/Adam_1:0$layer1/biases/Variable/Adam_1/Assign$layer1/biases/Variable/Adam_1/read:021layer1/biases/Variable/Adam_1/Initializer/zeros:0

layer2/weights/Variable/Adam:0#layer2/weights/Variable/Adam/Assign#layer2/weights/Variable/Adam/read:020layer2/weights/Variable/Adam/Initializer/zeros:0
Є
 layer2/weights/Variable/Adam_1:0%layer2/weights/Variable/Adam_1/Assign%layer2/weights/Variable/Adam_1/read:022layer2/weights/Variable/Adam_1/Initializer/zeros:0

layer2/biases/Variable/Adam:0"layer2/biases/Variable/Adam/Assign"layer2/biases/Variable/Adam/read:02/layer2/biases/Variable/Adam/Initializer/zeros:0
 
layer2/biases/Variable/Adam_1:0$layer2/biases/Variable/Adam_1/Assign$layer2/biases/Variable/Adam_1/read:021layer2/biases/Variable/Adam_1/Initializer/zeros:0

layer1_1/weights/Variable:0 layer1_1/weights/Variable/Assign layer1_1/weights/Variable/read:02#layer1_1/weights/truncated_normal:0
w
layer1_1/biases/Variable:0layer1_1/biases/Variable/Assignlayer1_1/biases/Variable/read:02layer1_1/biases/Const:0

layer2_1/weights/Variable:0 layer2_1/weights/Variable/Assign layer2_1/weights/Variable/read:02#layer2_1/weights/truncated_normal:0
w
layer2_1/biases/Variable:0layer2_1/biases/Variable/Assignlayer2_1/biases/Variable/read:02layer2_1/biases/Const:0
t
train_1/beta1_power:0train_1/beta1_power/Assigntrain_1/beta1_power/read:02#train_1/beta1_power/initial_value:0
t
train_1/beta2_power:0train_1/beta2_power/Assigntrain_1/beta2_power/read:02#train_1/beta2_power/initial_value:0
Є
 layer1_1/weights/Variable/Adam:0%layer1_1/weights/Variable/Adam/Assign%layer1_1/weights/Variable/Adam/read:022layer1_1/weights/Variable/Adam/Initializer/zeros:0
Ќ
"layer1_1/weights/Variable/Adam_1:0'layer1_1/weights/Variable/Adam_1/Assign'layer1_1/weights/Variable/Adam_1/read:024layer1_1/weights/Variable/Adam_1/Initializer/zeros:0
 
layer1_1/biases/Variable/Adam:0$layer1_1/biases/Variable/Adam/Assign$layer1_1/biases/Variable/Adam/read:021layer1_1/biases/Variable/Adam/Initializer/zeros:0
Ј
!layer1_1/biases/Variable/Adam_1:0&layer1_1/biases/Variable/Adam_1/Assign&layer1_1/biases/Variable/Adam_1/read:023layer1_1/biases/Variable/Adam_1/Initializer/zeros:0
Є
 layer2_1/weights/Variable/Adam:0%layer2_1/weights/Variable/Adam/Assign%layer2_1/weights/Variable/Adam/read:022layer2_1/weights/Variable/Adam/Initializer/zeros:0
Ќ
"layer2_1/weights/Variable/Adam_1:0'layer2_1/weights/Variable/Adam_1/Assign'layer2_1/weights/Variable/Adam_1/read:024layer2_1/weights/Variable/Adam_1/Initializer/zeros:0
 
layer2_1/biases/Variable/Adam:0$layer2_1/biases/Variable/Adam/Assign$layer2_1/biases/Variable/Adam/read:021layer2_1/biases/Variable/Adam/Initializer/zeros:0
Ј
!layer2_1/biases/Variable/Adam_1:0&layer2_1/biases/Variable/Adam_1/Assign&layer2_1/biases/Variable/Adam_1/read:023layer2_1/biases/Variable/Adam_1/Initializer/zeros:0

layer1_2/weights/Variable:0 layer1_2/weights/Variable/Assign layer1_2/weights/Variable/read:02#layer1_2/weights/truncated_normal:0
w
layer1_2/biases/Variable:0layer1_2/biases/Variable/Assignlayer1_2/biases/Variable/read:02layer1_2/biases/Const:0

layer2_2/weights/Variable:0 layer2_2/weights/Variable/Assign layer2_2/weights/Variable/read:02#layer2_2/weights/truncated_normal:0
w
layer2_2/biases/Variable:0layer2_2/biases/Variable/Assignlayer2_2/biases/Variable/read:02layer2_2/biases/Const:0
t
train_2/beta1_power:0train_2/beta1_power/Assigntrain_2/beta1_power/read:02#train_2/beta1_power/initial_value:0
t
train_2/beta2_power:0train_2/beta2_power/Assigntrain_2/beta2_power/read:02#train_2/beta2_power/initial_value:0
Є
 layer1_2/weights/Variable/Adam:0%layer1_2/weights/Variable/Adam/Assign%layer1_2/weights/Variable/Adam/read:022layer1_2/weights/Variable/Adam/Initializer/zeros:0
Ќ
"layer1_2/weights/Variable/Adam_1:0'layer1_2/weights/Variable/Adam_1/Assign'layer1_2/weights/Variable/Adam_1/read:024layer1_2/weights/Variable/Adam_1/Initializer/zeros:0
 
layer1_2/biases/Variable/Adam:0$layer1_2/biases/Variable/Adam/Assign$layer1_2/biases/Variable/Adam/read:021layer1_2/biases/Variable/Adam/Initializer/zeros:0
Ј
!layer1_2/biases/Variable/Adam_1:0&layer1_2/biases/Variable/Adam_1/Assign&layer1_2/biases/Variable/Adam_1/read:023layer1_2/biases/Variable/Adam_1/Initializer/zeros:0
Є
 layer2_2/weights/Variable/Adam:0%layer2_2/weights/Variable/Adam/Assign%layer2_2/weights/Variable/Adam/read:022layer2_2/weights/Variable/Adam/Initializer/zeros:0
Ќ
"layer2_2/weights/Variable/Adam_1:0'layer2_2/weights/Variable/Adam_1/Assign'layer2_2/weights/Variable/Adam_1/read:024layer2_2/weights/Variable/Adam_1/Initializer/zeros:0
 
layer2_2/biases/Variable/Adam:0$layer2_2/biases/Variable/Adam/Assign$layer2_2/biases/Variable/Adam/read:021layer2_2/biases/Variable/Adam/Initializer/zeros:0
Ј
!layer2_2/biases/Variable/Adam_1:0&layer2_2/biases/Variable/Adam_1/Assign&layer2_2/biases/Variable/Adam_1/read:023layer2_2/biases/Variable/Adam_1/Initializer/zeros:0

layer1_3/weights/Variable:0 layer1_3/weights/Variable/Assign layer1_3/weights/Variable/read:02#layer1_3/weights/truncated_normal:0
w
layer1_3/biases/Variable:0layer1_3/biases/Variable/Assignlayer1_3/biases/Variable/read:02layer1_3/biases/Const:0

layer2_3/weights/Variable:0 layer2_3/weights/Variable/Assign layer2_3/weights/Variable/read:02#layer2_3/weights/truncated_normal:0
w
layer2_3/biases/Variable:0layer2_3/biases/Variable/Assignlayer2_3/biases/Variable/read:02layer2_3/biases/Const:0
t
train_3/beta1_power:0train_3/beta1_power/Assigntrain_3/beta1_power/read:02#train_3/beta1_power/initial_value:0
t
train_3/beta2_power:0train_3/beta2_power/Assigntrain_3/beta2_power/read:02#train_3/beta2_power/initial_value:0
Є
 layer1_3/weights/Variable/Adam:0%layer1_3/weights/Variable/Adam/Assign%layer1_3/weights/Variable/Adam/read:022layer1_3/weights/Variable/Adam/Initializer/zeros:0
Ќ
"layer1_3/weights/Variable/Adam_1:0'layer1_3/weights/Variable/Adam_1/Assign'layer1_3/weights/Variable/Adam_1/read:024layer1_3/weights/Variable/Adam_1/Initializer/zeros:0
 
layer1_3/biases/Variable/Adam:0$layer1_3/biases/Variable/Adam/Assign$layer1_3/biases/Variable/Adam/read:021layer1_3/biases/Variable/Adam/Initializer/zeros:0
Ј
!layer1_3/biases/Variable/Adam_1:0&layer1_3/biases/Variable/Adam_1/Assign&layer1_3/biases/Variable/Adam_1/read:023layer1_3/biases/Variable/Adam_1/Initializer/zeros:0
Є
 layer2_3/weights/Variable/Adam:0%layer2_3/weights/Variable/Adam/Assign%layer2_3/weights/Variable/Adam/read:022layer2_3/weights/Variable/Adam/Initializer/zeros:0
Ќ
"layer2_3/weights/Variable/Adam_1:0'layer2_3/weights/Variable/Adam_1/Assign'layer2_3/weights/Variable/Adam_1/read:024layer2_3/weights/Variable/Adam_1/Initializer/zeros:0
 
layer2_3/biases/Variable/Adam:0$layer2_3/biases/Variable/Adam/Assign$layer2_3/biases/Variable/Adam/read:021layer2_3/biases/Variable/Adam/Initializer/zeros:0
Ј
!layer2_3/biases/Variable/Adam_1:0&layer2_3/biases/Variable/Adam_1/Assign&layer2_3/biases/Variable/Adam_1/read:023layer2_3/biases/Variable/Adam_1/Initializer/zeros:0

layer1_4/weights/Variable:0 layer1_4/weights/Variable/Assign layer1_4/weights/Variable/read:02#layer1_4/weights/truncated_normal:0
w
layer1_4/biases/Variable:0layer1_4/biases/Variable/Assignlayer1_4/biases/Variable/read:02layer1_4/biases/Const:0

layer2_4/weights/Variable:0 layer2_4/weights/Variable/Assign layer2_4/weights/Variable/read:02#layer2_4/weights/truncated_normal:0
w
layer2_4/biases/Variable:0layer2_4/biases/Variable/Assignlayer2_4/biases/Variable/read:02layer2_4/biases/Const:0
t
train_4/beta1_power:0train_4/beta1_power/Assigntrain_4/beta1_power/read:02#train_4/beta1_power/initial_value:0
t
train_4/beta2_power:0train_4/beta2_power/Assigntrain_4/beta2_power/read:02#train_4/beta2_power/initial_value:0
Є
 layer1_4/weights/Variable/Adam:0%layer1_4/weights/Variable/Adam/Assign%layer1_4/weights/Variable/Adam/read:022layer1_4/weights/Variable/Adam/Initializer/zeros:0
Ќ
"layer1_4/weights/Variable/Adam_1:0'layer1_4/weights/Variable/Adam_1/Assign'layer1_4/weights/Variable/Adam_1/read:024layer1_4/weights/Variable/Adam_1/Initializer/zeros:0
 
layer1_4/biases/Variable/Adam:0$layer1_4/biases/Variable/Adam/Assign$layer1_4/biases/Variable/Adam/read:021layer1_4/biases/Variable/Adam/Initializer/zeros:0
Ј
!layer1_4/biases/Variable/Adam_1:0&layer1_4/biases/Variable/Adam_1/Assign&layer1_4/biases/Variable/Adam_1/read:023layer1_4/biases/Variable/Adam_1/Initializer/zeros:0
Є
 layer2_4/weights/Variable/Adam:0%layer2_4/weights/Variable/Adam/Assign%layer2_4/weights/Variable/Adam/read:022layer2_4/weights/Variable/Adam/Initializer/zeros:0
Ќ
"layer2_4/weights/Variable/Adam_1:0'layer2_4/weights/Variable/Adam_1/Assign'layer2_4/weights/Variable/Adam_1/read:024layer2_4/weights/Variable/Adam_1/Initializer/zeros:0
 
layer2_4/biases/Variable/Adam:0$layer2_4/biases/Variable/Adam/Assign$layer2_4/biases/Variable/Adam/read:021layer2_4/biases/Variable/Adam/Initializer/zeros:0
Ј
!layer2_4/biases/Variable/Adam_1:0&layer2_4/biases/Variable/Adam_1/Assign&layer2_4/biases/Variable/Adam_1/read:023layer2_4/biases/Variable/Adam_1/Initializer/zeros:0"
trainable_variablesѕђ
~
layer1/weights/Variable:0layer1/weights/Variable/Assignlayer1/weights/Variable/read:02!layer1/weights/truncated_normal:0
o
layer1/biases/Variable:0layer1/biases/Variable/Assignlayer1/biases/Variable/read:02layer1/biases/Const:0
~
layer2/weights/Variable:0layer2/weights/Variable/Assignlayer2/weights/Variable/read:02!layer2/weights/truncated_normal:0
o
layer2/biases/Variable:0layer2/biases/Variable/Assignlayer2/biases/Variable/read:02layer2/biases/Const:0

layer1_1/weights/Variable:0 layer1_1/weights/Variable/Assign layer1_1/weights/Variable/read:02#layer1_1/weights/truncated_normal:0
w
layer1_1/biases/Variable:0layer1_1/biases/Variable/Assignlayer1_1/biases/Variable/read:02layer1_1/biases/Const:0

layer2_1/weights/Variable:0 layer2_1/weights/Variable/Assign layer2_1/weights/Variable/read:02#layer2_1/weights/truncated_normal:0
w
layer2_1/biases/Variable:0layer2_1/biases/Variable/Assignlayer2_1/biases/Variable/read:02layer2_1/biases/Const:0

layer1_2/weights/Variable:0 layer1_2/weights/Variable/Assign layer1_2/weights/Variable/read:02#layer1_2/weights/truncated_normal:0
w
layer1_2/biases/Variable:0layer1_2/biases/Variable/Assignlayer1_2/biases/Variable/read:02layer1_2/biases/Const:0

layer2_2/weights/Variable:0 layer2_2/weights/Variable/Assign layer2_2/weights/Variable/read:02#layer2_2/weights/truncated_normal:0
w
layer2_2/biases/Variable:0layer2_2/biases/Variable/Assignlayer2_2/biases/Variable/read:02layer2_2/biases/Const:0

layer1_3/weights/Variable:0 layer1_3/weights/Variable/Assign layer1_3/weights/Variable/read:02#layer1_3/weights/truncated_normal:0
w
layer1_3/biases/Variable:0layer1_3/biases/Variable/Assignlayer1_3/biases/Variable/read:02layer1_3/biases/Const:0

layer2_3/weights/Variable:0 layer2_3/weights/Variable/Assign layer2_3/weights/Variable/read:02#layer2_3/weights/truncated_normal:0
w
layer2_3/biases/Variable:0layer2_3/biases/Variable/Assignlayer2_3/biases/Variable/read:02layer2_3/biases/Const:0

layer1_4/weights/Variable:0 layer1_4/weights/Variable/Assign layer1_4/weights/Variable/read:02#layer1_4/weights/truncated_normal:0
w
layer1_4/biases/Variable:0layer1_4/biases/Variable/Assignlayer1_4/biases/Variable/read:02layer1_4/biases/Const:0

layer2_4/weights/Variable:0 layer2_4/weights/Variable/Assign layer2