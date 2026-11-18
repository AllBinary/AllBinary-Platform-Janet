# Generated Code Do Not Modify
# package javax.microedition.khronos.opengles

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../java/nio/Buffer :as Buffer)
(import ../../../../java/nio/FloatBuffer :as FloatBuffer)
(import ../../../../java/nio/IntBuffer :as IntBuffer)
(import ./GL10 :as GL10)

# Java class GL11
(var jproto nil)
(var jcell_GL_ACTIVE_TEXTURE :jnone)
(var jstatic_GL_ACTIVE_TEXTURE nil)
(var jsetstatic_GL_ACTIVE_TEXTURE nil)
(var jcell_GL_ADD_SIGNED :jnone)
(var jstatic_GL_ADD_SIGNED nil)
(var jsetstatic_GL_ADD_SIGNED nil)
(var jcell_GL_ALPHA_SCALE :jnone)
(var jstatic_GL_ALPHA_SCALE nil)
(var jsetstatic_GL_ALPHA_SCALE nil)
(var jcell_GL_ALPHA_TEST_FUNC :jnone)
(var jstatic_GL_ALPHA_TEST_FUNC nil)
(var jsetstatic_GL_ALPHA_TEST_FUNC nil)
(var jcell_GL_ALPHA_TEST_REF :jnone)
(var jstatic_GL_ALPHA_TEST_REF nil)
(var jsetstatic_GL_ALPHA_TEST_REF nil)
(var jcell_GL_ARRAY_BUFFER :jnone)
(var jstatic_GL_ARRAY_BUFFER nil)
(var jsetstatic_GL_ARRAY_BUFFER nil)
(var jcell_GL_ARRAY_BUFFER_BINDING :jnone)
(var jstatic_GL_ARRAY_BUFFER_BINDING nil)
(var jsetstatic_GL_ARRAY_BUFFER_BINDING nil)
(var jcell_GL_BLEND_DST :jnone)
(var jstatic_GL_BLEND_DST nil)
(var jsetstatic_GL_BLEND_DST nil)
(var jcell_GL_BLEND_SRC :jnone)
(var jstatic_GL_BLEND_SRC nil)
(var jsetstatic_GL_BLEND_SRC nil)
(var jcell_GL_BUFFER_ACCESS :jnone)
(var jstatic_GL_BUFFER_ACCESS nil)
(var jsetstatic_GL_BUFFER_ACCESS nil)
(var jcell_GL_BUFFER_SIZE :jnone)
(var jstatic_GL_BUFFER_SIZE nil)
(var jsetstatic_GL_BUFFER_SIZE nil)
(var jcell_GL_BUFFER_USAGE :jnone)
(var jstatic_GL_BUFFER_USAGE nil)
(var jsetstatic_GL_BUFFER_USAGE nil)
(var jcell_GL_CLIENT_ACTIVE_TEXTURE :jnone)
(var jstatic_GL_CLIENT_ACTIVE_TEXTURE nil)
(var jsetstatic_GL_CLIENT_ACTIVE_TEXTURE nil)
(var jcell_GL_CLIP_PLANE0 :jnone)
(var jstatic_GL_CLIP_PLANE0 nil)
(var jsetstatic_GL_CLIP_PLANE0 nil)
(var jcell_GL_CLIP_PLANE1 :jnone)
(var jstatic_GL_CLIP_PLANE1 nil)
(var jsetstatic_GL_CLIP_PLANE1 nil)
(var jcell_GL_CLIP_PLANE2 :jnone)
(var jstatic_GL_CLIP_PLANE2 nil)
(var jsetstatic_GL_CLIP_PLANE2 nil)
(var jcell_GL_CLIP_PLANE3 :jnone)
(var jstatic_GL_CLIP_PLANE3 nil)
(var jsetstatic_GL_CLIP_PLANE3 nil)
(var jcell_GL_CLIP_PLANE4 :jnone)
(var jstatic_GL_CLIP_PLANE4 nil)
(var jsetstatic_GL_CLIP_PLANE4 nil)
(var jcell_GL_CLIP_PLANE5 :jnone)
(var jstatic_GL_CLIP_PLANE5 nil)
(var jsetstatic_GL_CLIP_PLANE5 nil)
(var jcell_GL_COLOR_ARRAY_BUFFER_BINDING :jnone)
(var jstatic_GL_COLOR_ARRAY_BUFFER_BINDING nil)
(var jsetstatic_GL_COLOR_ARRAY_BUFFER_BINDING nil)
(var jcell_GL_COLOR_ARRAY_POINTER :jnone)
(var jstatic_GL_COLOR_ARRAY_POINTER nil)
(var jsetstatic_GL_COLOR_ARRAY_POINTER nil)
(var jcell_GL_COLOR_ARRAY_SIZE :jnone)
(var jstatic_GL_COLOR_ARRAY_SIZE nil)
(var jsetstatic_GL_COLOR_ARRAY_SIZE nil)
(var jcell_GL_COLOR_ARRAY_STRIDE :jnone)
(var jstatic_GL_COLOR_ARRAY_STRIDE nil)
(var jsetstatic_GL_COLOR_ARRAY_STRIDE nil)
(var jcell_GL_COLOR_ARRAY_TYPE :jnone)
(var jstatic_GL_COLOR_ARRAY_TYPE nil)
(var jsetstatic_GL_COLOR_ARRAY_TYPE nil)
(var jcell_GL_COLOR_CLEAR_VALUE :jnone)
(var jstatic_GL_COLOR_CLEAR_VALUE nil)
(var jsetstatic_GL_COLOR_CLEAR_VALUE nil)
(var jcell_GL_COLOR_WRITEMASK :jnone)
(var jstatic_GL_COLOR_WRITEMASK nil)
(var jsetstatic_GL_COLOR_WRITEMASK nil)
(var jcell_GL_COMBINE :jnone)
(var jstatic_GL_COMBINE nil)
(var jsetstatic_GL_COMBINE nil)
(var jcell_GL_COMBINE_ALPHA :jnone)
(var jstatic_GL_COMBINE_ALPHA nil)
(var jsetstatic_GL_COMBINE_ALPHA nil)
(var jcell_GL_COMBINE_RGB :jnone)
(var jstatic_GL_COMBINE_RGB nil)
(var jsetstatic_GL_COMBINE_RGB nil)
(var jcell_GL_CONSTANT :jnone)
(var jstatic_GL_CONSTANT nil)
(var jsetstatic_GL_CONSTANT nil)
(var jcell_GL_COORD_REPLACE_OES :jnone)
(var jstatic_GL_COORD_REPLACE_OES nil)
(var jsetstatic_GL_COORD_REPLACE_OES nil)
(var jcell_GL_CULL_FACE_MODE :jnone)
(var jstatic_GL_CULL_FACE_MODE nil)
(var jsetstatic_GL_CULL_FACE_MODE nil)
(var jcell_GL_CURRENT_COLOR :jnone)
(var jstatic_GL_CURRENT_COLOR nil)
(var jsetstatic_GL_CURRENT_COLOR nil)
(var jcell_GL_CURRENT_NORMAL :jnone)
(var jstatic_GL_CURRENT_NORMAL nil)
(var jsetstatic_GL_CURRENT_NORMAL nil)
(var jcell_GL_CURRENT_TEXTURE_COORDS :jnone)
(var jstatic_GL_CURRENT_TEXTURE_COORDS nil)
(var jsetstatic_GL_CURRENT_TEXTURE_COORDS nil)
(var jcell_GL_DEPTH_CLEAR_VALUE :jnone)
(var jstatic_GL_DEPTH_CLEAR_VALUE nil)
(var jsetstatic_GL_DEPTH_CLEAR_VALUE nil)
(var jcell_GL_DEPTH_FUNC :jnone)
(var jstatic_GL_DEPTH_FUNC nil)
(var jsetstatic_GL_DEPTH_FUNC nil)
(var jcell_GL_DEPTH_RANGE :jnone)
(var jstatic_GL_DEPTH_RANGE nil)
(var jsetstatic_GL_DEPTH_RANGE nil)
(var jcell_GL_DEPTH_WRITEMASK :jnone)
(var jstatic_GL_DEPTH_WRITEMASK nil)
(var jsetstatic_GL_DEPTH_WRITEMASK nil)
(var jcell_GL_DOT3_RGB :jnone)
(var jstatic_GL_DOT3_RGB nil)
(var jsetstatic_GL_DOT3_RGB nil)
(var jcell_GL_DOT3_RGBA :jnone)
(var jstatic_GL_DOT3_RGBA nil)
(var jsetstatic_GL_DOT3_RGBA nil)
(var jcell_GL_DYNAMIC_DRAW :jnone)
(var jstatic_GL_DYNAMIC_DRAW nil)
(var jsetstatic_GL_DYNAMIC_DRAW nil)
(var jcell_GL_ELEMENT_ARRAY_BUFFER :jnone)
(var jstatic_GL_ELEMENT_ARRAY_BUFFER nil)
(var jsetstatic_GL_ELEMENT_ARRAY_BUFFER nil)
(var jcell_GL_ELEMENT_ARRAY_BUFFER_BINDING :jnone)
(var jstatic_GL_ELEMENT_ARRAY_BUFFER_BINDING nil)
(var jsetstatic_GL_ELEMENT_ARRAY_BUFFER_BINDING nil)
(var jcell_GL_FRONT_FACE :jnone)
(var jstatic_GL_FRONT_FACE nil)
(var jsetstatic_GL_FRONT_FACE nil)
(var jcell_GL_GENERATE_MIPMAP :jnone)
(var jstatic_GL_GENERATE_MIPMAP nil)
(var jsetstatic_GL_GENERATE_MIPMAP nil)
(var jcell_GL_GENERATE_MIPMAP_HINT :jnone)
(var jstatic_GL_GENERATE_MIPMAP_HINT nil)
(var jsetstatic_GL_GENERATE_MIPMAP_HINT nil)
(var jcell_GL_INTERPOLATE :jnone)
(var jstatic_GL_INTERPOLATE nil)
(var jsetstatic_GL_INTERPOLATE nil)
(var jcell_GL_LINE_WIDTH :jnone)
(var jstatic_GL_LINE_WIDTH nil)
(var jsetstatic_GL_LINE_WIDTH nil)
(var jcell_GL_LOGIC_OP_MODE :jnone)
(var jstatic_GL_LOGIC_OP_MODE nil)
(var jsetstatic_GL_LOGIC_OP_MODE nil)
(var jcell_GL_MATRIX_MODE :jnone)
(var jstatic_GL_MATRIX_MODE nil)
(var jsetstatic_GL_MATRIX_MODE nil)
(var jcell_GL_MAX_CLIP_PLANES :jnone)
(var jstatic_GL_MAX_CLIP_PLANES nil)
(var jsetstatic_GL_MAX_CLIP_PLANES nil)
(var jcell_GL_MODELVIEW_MATRIX :jnone)
(var jstatic_GL_MODELVIEW_MATRIX nil)
(var jsetstatic_GL_MODELVIEW_MATRIX nil)
(var jcell_GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OES :jnone)
(var jstatic_GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OES nil)
(var jsetstatic_GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OES nil)
(var jcell_GL_MODELVIEW_STACK_DEPTH :jnone)
(var jstatic_GL_MODELVIEW_STACK_DEPTH nil)
(var jsetstatic_GL_MODELVIEW_STACK_DEPTH nil)
(var jcell_GL_NORMAL_ARRAY_BUFFER_BINDING :jnone)
(var jstatic_GL_NORMAL_ARRAY_BUFFER_BINDING nil)
(var jsetstatic_GL_NORMAL_ARRAY_BUFFER_BINDING nil)
(var jcell_GL_NORMAL_ARRAY_POINTER :jnone)
(var jstatic_GL_NORMAL_ARRAY_POINTER nil)
(var jsetstatic_GL_NORMAL_ARRAY_POINTER nil)
(var jcell_GL_NORMAL_ARRAY_STRIDE :jnone)
(var jstatic_GL_NORMAL_ARRAY_STRIDE nil)
(var jsetstatic_GL_NORMAL_ARRAY_STRIDE nil)
(var jcell_GL_NORMAL_ARRAY_TYPE :jnone)
(var jstatic_GL_NORMAL_ARRAY_TYPE nil)
(var jsetstatic_GL_NORMAL_ARRAY_TYPE nil)
(var jcell_GL_OPERAND0_ALPHA :jnone)
(var jstatic_GL_OPERAND0_ALPHA nil)
(var jsetstatic_GL_OPERAND0_ALPHA nil)
(var jcell_GL_OPERAND0_RGB :jnone)
(var jstatic_GL_OPERAND0_RGB nil)
(var jsetstatic_GL_OPERAND0_RGB nil)
(var jcell_GL_OPERAND1_ALPHA :jnone)
(var jstatic_GL_OPERAND1_ALPHA nil)
(var jsetstatic_GL_OPERAND1_ALPHA nil)
(var jcell_GL_OPERAND1_RGB :jnone)
(var jstatic_GL_OPERAND1_RGB nil)
(var jsetstatic_GL_OPERAND1_RGB nil)
(var jcell_GL_OPERAND2_ALPHA :jnone)
(var jstatic_GL_OPERAND2_ALPHA nil)
(var jsetstatic_GL_OPERAND2_ALPHA nil)
(var jcell_GL_OPERAND2_RGB :jnone)
(var jstatic_GL_OPERAND2_RGB nil)
(var jsetstatic_GL_OPERAND2_RGB nil)
(var jcell_GL_POINT_DISTANCE_ATTENUATION :jnone)
(var jstatic_GL_POINT_DISTANCE_ATTENUATION nil)
(var jsetstatic_GL_POINT_DISTANCE_ATTENUATION nil)
(var jcell_GL_POINT_FADE_THRESHOLD_SIZE :jnone)
(var jstatic_GL_POINT_FADE_THRESHOLD_SIZE nil)
(var jsetstatic_GL_POINT_FADE_THRESHOLD_SIZE nil)
(var jcell_GL_POINT_SIZE :jnone)
(var jstatic_GL_POINT_SIZE nil)
(var jsetstatic_GL_POINT_SIZE nil)
(var jcell_GL_POINT_SIZE_ARRAY_BUFFER_BINDING_OES :jnone)
(var jstatic_GL_POINT_SIZE_ARRAY_BUFFER_BINDING_OES nil)
(var jsetstatic_GL_POINT_SIZE_ARRAY_BUFFER_BINDING_OES nil)
(var jcell_GL_POINT_SIZE_ARRAY_OES :jnone)
(var jstatic_GL_POINT_SIZE_ARRAY_OES nil)
(var jsetstatic_GL_POINT_SIZE_ARRAY_OES nil)
(var jcell_GL_POINT_SIZE_ARRAY_POINTER_OES :jnone)
(var jstatic_GL_POINT_SIZE_ARRAY_POINTER_OES nil)
(var jsetstatic_GL_POINT_SIZE_ARRAY_POINTER_OES nil)
(var jcell_GL_POINT_SIZE_ARRAY_STRIDE_OES :jnone)
(var jstatic_GL_POINT_SIZE_ARRAY_STRIDE_OES nil)
(var jsetstatic_GL_POINT_SIZE_ARRAY_STRIDE_OES nil)
(var jcell_GL_POINT_SIZE_ARRAY_TYPE_OES :jnone)
(var jstatic_GL_POINT_SIZE_ARRAY_TYPE_OES nil)
(var jsetstatic_GL_POINT_SIZE_ARRAY_TYPE_OES nil)
(var jcell_GL_POINT_SIZE_MAX :jnone)
(var jstatic_GL_POINT_SIZE_MAX nil)
(var jsetstatic_GL_POINT_SIZE_MAX nil)
(var jcell_GL_POINT_SIZE_MIN :jnone)
(var jstatic_GL_POINT_SIZE_MIN nil)
(var jsetstatic_GL_POINT_SIZE_MIN nil)
(var jcell_GL_POINT_SPRITE_OES :jnone)
(var jstatic_GL_POINT_SPRITE_OES nil)
(var jsetstatic_GL_POINT_SPRITE_OES nil)
(var jcell_GL_POLYGON_OFFSET_FACTOR :jnone)
(var jstatic_GL_POLYGON_OFFSET_FACTOR nil)
(var jsetstatic_GL_POLYGON_OFFSET_FACTOR nil)
(var jcell_GL_POLYGON_OFFSET_UNITS :jnone)
(var jstatic_GL_POLYGON_OFFSET_UNITS nil)
(var jsetstatic_GL_POLYGON_OFFSET_UNITS nil)
(var jcell_GL_PREVIOUS :jnone)
(var jstatic_GL_PREVIOUS nil)
(var jsetstatic_GL_PREVIOUS nil)
(var jcell_GL_PRIMARY_COLOR :jnone)
(var jstatic_GL_PRIMARY_COLOR nil)
(var jsetstatic_GL_PRIMARY_COLOR nil)
(var jcell_GL_PROJECTION_MATRIX :jnone)
(var jstatic_GL_PROJECTION_MATRIX nil)
(var jsetstatic_GL_PROJECTION_MATRIX nil)
(var jcell_GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OES :jnone)
(var jstatic_GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OES nil)
(var jsetstatic_GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OES nil)
(var jcell_GL_PROJECTION_STACK_DEPTH :jnone)
(var jstatic_GL_PROJECTION_STACK_DEPTH nil)
(var jsetstatic_GL_PROJECTION_STACK_DEPTH nil)
(var jcell_GL_RGB_SCALE :jnone)
(var jstatic_GL_RGB_SCALE nil)
(var jsetstatic_GL_RGB_SCALE nil)
(var jcell_GL_SAMPLE_BUFFERS :jnone)
(var jstatic_GL_SAMPLE_BUFFERS nil)
(var jsetstatic_GL_SAMPLE_BUFFERS nil)
(var jcell_GL_SAMPLE_COVERAGE_INVERT :jnone)
(var jstatic_GL_SAMPLE_COVERAGE_INVERT nil)
(var jsetstatic_GL_SAMPLE_COVERAGE_INVERT nil)
(var jcell_GL_SAMPLE_COVERAGE_VALUE :jnone)
(var jstatic_GL_SAMPLE_COVERAGE_VALUE nil)
(var jsetstatic_GL_SAMPLE_COVERAGE_VALUE nil)
(var jcell_GL_SAMPLES :jnone)
(var jstatic_GL_SAMPLES nil)
(var jsetstatic_GL_SAMPLES nil)
(var jcell_GL_SCISSOR_BOX :jnone)
(var jstatic_GL_SCISSOR_BOX nil)
(var jsetstatic_GL_SCISSOR_BOX nil)
(var jcell_GL_SHADE_MODEL :jnone)
(var jstatic_GL_SHADE_MODEL nil)
(var jsetstatic_GL_SHADE_MODEL nil)
(var jcell_GL_SRC0_ALPHA :jnone)
(var jstatic_GL_SRC0_ALPHA nil)
(var jsetstatic_GL_SRC0_ALPHA nil)
(var jcell_GL_SRC0_RGB :jnone)
(var jstatic_GL_SRC0_RGB nil)
(var jsetstatic_GL_SRC0_RGB nil)
(var jcell_GL_SRC1_ALPHA :jnone)
(var jstatic_GL_SRC1_ALPHA nil)
(var jsetstatic_GL_SRC1_ALPHA nil)
(var jcell_GL_SRC1_RGB :jnone)
(var jstatic_GL_SRC1_RGB nil)
(var jsetstatic_GL_SRC1_RGB nil)
(var jcell_GL_SRC2_ALPHA :jnone)
(var jstatic_GL_SRC2_ALPHA nil)
(var jsetstatic_GL_SRC2_ALPHA nil)
(var jcell_GL_SRC2_RGB :jnone)
(var jstatic_GL_SRC2_RGB nil)
(var jsetstatic_GL_SRC2_RGB nil)
(var jcell_GL_STATIC_DRAW :jnone)
(var jstatic_GL_STATIC_DRAW nil)
(var jsetstatic_GL_STATIC_DRAW nil)
(var jcell_GL_STENCIL_CLEAR_VALUE :jnone)
(var jstatic_GL_STENCIL_CLEAR_VALUE nil)
(var jsetstatic_GL_STENCIL_CLEAR_VALUE nil)
(var jcell_GL_STENCIL_FAIL :jnone)
(var jstatic_GL_STENCIL_FAIL nil)
(var jsetstatic_GL_STENCIL_FAIL nil)
(var jcell_GL_STENCIL_FUNC :jnone)
(var jstatic_GL_STENCIL_FUNC nil)
(var jsetstatic_GL_STENCIL_FUNC nil)
(var jcell_GL_STENCIL_PASS_DEPTH_FAIL :jnone)
(var jstatic_GL_STENCIL_PASS_DEPTH_FAIL nil)
(var jsetstatic_GL_STENCIL_PASS_DEPTH_FAIL nil)
(var jcell_GL_STENCIL_PASS_DEPTH_PASS :jnone)
(var jstatic_GL_STENCIL_PASS_DEPTH_PASS nil)
(var jsetstatic_GL_STENCIL_PASS_DEPTH_PASS nil)
(var jcell_GL_STENCIL_REF :jnone)
(var jstatic_GL_STENCIL_REF nil)
(var jsetstatic_GL_STENCIL_REF nil)
(var jcell_GL_STENCIL_VALUE_MASK :jnone)
(var jstatic_GL_STENCIL_VALUE_MASK nil)
(var jsetstatic_GL_STENCIL_VALUE_MASK nil)
(var jcell_GL_STENCIL_WRITEMASK :jnone)
(var jstatic_GL_STENCIL_WRITEMASK nil)
(var jsetstatic_GL_STENCIL_WRITEMASK nil)
(var jcell_GL_SUBTRACT :jnone)
(var jstatic_GL_SUBTRACT nil)
(var jsetstatic_GL_SUBTRACT nil)
(var jcell_GL_TEXTURE_BINDING_2D :jnone)
(var jstatic_GL_TEXTURE_BINDING_2D nil)
(var jsetstatic_GL_TEXTURE_BINDING_2D nil)
(var jcell_GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING :jnone)
(var jstatic_GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING nil)
(var jsetstatic_GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING nil)
(var jcell_GL_TEXTURE_COORD_ARRAY_POINTER :jnone)
(var jstatic_GL_TEXTURE_COORD_ARRAY_POINTER nil)
(var jsetstatic_GL_TEXTURE_COORD_ARRAY_POINTER nil)
(var jcell_GL_TEXTURE_COORD_ARRAY_SIZE :jnone)
(var jstatic_GL_TEXTURE_COORD_ARRAY_SIZE nil)
(var jsetstatic_GL_TEXTURE_COORD_ARRAY_SIZE nil)
(var jcell_GL_TEXTURE_COORD_ARRAY_STRIDE :jnone)
(var jstatic_GL_TEXTURE_COORD_ARRAY_STRIDE nil)
(var jsetstatic_GL_TEXTURE_COORD_ARRAY_STRIDE nil)
(var jcell_GL_TEXTURE_COORD_ARRAY_TYPE :jnone)
(var jstatic_GL_TEXTURE_COORD_ARRAY_TYPE nil)
(var jsetstatic_GL_TEXTURE_COORD_ARRAY_TYPE nil)
(var jcell_GL_TEXTURE_MATRIX :jnone)
(var jstatic_GL_TEXTURE_MATRIX nil)
(var jsetstatic_GL_TEXTURE_MATRIX nil)
(var jcell_GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OES :jnone)
(var jstatic_GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OES nil)
(var jsetstatic_GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OES nil)
(var jcell_GL_TEXTURE_STACK_DEPTH :jnone)
(var jstatic_GL_TEXTURE_STACK_DEPTH nil)
(var jsetstatic_GL_TEXTURE_STACK_DEPTH nil)
(var jcell_GL_VERTEX_ARRAY_BUFFER_BINDING :jnone)
(var jstatic_GL_VERTEX_ARRAY_BUFFER_BINDING nil)
(var jsetstatic_GL_VERTEX_ARRAY_BUFFER_BINDING nil)
(var jcell_GL_VERTEX_ARRAY_POINTER :jnone)
(var jstatic_GL_VERTEX_ARRAY_POINTER nil)
(var jsetstatic_GL_VERTEX_ARRAY_POINTER nil)
(var jcell_GL_VERTEX_ARRAY_SIZE :jnone)
(var jstatic_GL_VERTEX_ARRAY_SIZE nil)
(var jsetstatic_GL_VERTEX_ARRAY_SIZE nil)
(var jcell_GL_VERTEX_ARRAY_STRIDE :jnone)
(var jstatic_GL_VERTEX_ARRAY_STRIDE nil)
(var jsetstatic_GL_VERTEX_ARRAY_STRIDE nil)
(var jcell_GL_VERTEX_ARRAY_TYPE :jnone)
(var jstatic_GL_VERTEX_ARRAY_TYPE nil)
(var jsetstatic_GL_VERTEX_ARRAY_TYPE nil)
(var jcell_GL_VIEWPORT :jnone)
(var jstatic_GL_VIEWPORT nil)
(var jsetstatic_GL_VIEWPORT nil)
(var jcell_GL_WRITE_ONLY :jnone)
(var jstatic_GL_WRITE_ONLY nil)
(var jsetstatic_GL_WRITE_ONLY nil)
(var jnew_0 nil)
(var jm_glBindBuffer nil)
(var jm_glBufferData nil)
(var jm_glBufferSubData nil)
(var jm_glClipPlanef_3 nil)
(var jm_glClipPlanef_2 nil)
(var jm_glColor4ub nil)
(var jm_glColorPointer nil)
(var jm_glDeleteBuffers_3 nil)
(var jm_glDeleteBuffers_2 nil)
(var jm_glDrawElements nil)
(var jm_glGenBuffers_3 nil)
(var jm_glGenBuffers_2 nil)
(var jm_glGetBufferParameteriv_4 nil)
(var jm_glGetBufferParameteriv_3 nil)
(var jm_glGetClipPlanef_3 nil)
(var jm_glGetClipPlanef_2 nil)
(var jm_glGetFloatv_3 nil)
(var jm_glGetFloatv_2 nil)
(var jm_glGetLightfv_4 nil)
(var jm_glGetLightfv_3 nil)
(var jm_glGetMaterialfv_4 nil)
(var jm_glGetMaterialfv_3 nil)
(var jm_glGetTexEnviv_4 nil)
(var jm_glGetTexEnviv_3 nil)
(var jm_glGetTexParameterfv_4 nil)
(var jm_glGetTexParameterfv_3 nil)
(var jm_glGetTexParameteriv_4 nil)
(var jm_glGetTexParameteriv_3 nil)
(var jm_glIsBuffer nil)
(var jm_glIsEnabled nil)
(var jm_glIsTexture nil)
(var jm_glNormalPointer nil)
(var jm_glPointParameterf nil)
(var jm_glPointParameterfv_3 nil)
(var jm_glPointParameterfv_2 nil)
(var jm_glTexCoordPointer nil)
(var jm_glTexEnvi nil)
(var jm_glTexEnviv_4 nil)
(var jm_glTexEnviv_3 nil)
(var jm_glTexParameterfv_4 nil)
(var jm_glTexParameterfv_3 nil)
(var jm_glTexParameteriv_4 nil)
(var jm_glTexParameteriv_3 nil)
(var jm_glVertexPointer nil)

(set jstatic_GL_ACTIVE_TEXTURE (fn jstatic_GL_ACTIVE_TEXTURE []
  (when (= jcell_GL_ACTIVE_TEXTURE :jnone) (set jcell_GL_ACTIVE_TEXTURE 34016))
  jcell_GL_ACTIVE_TEXTURE))
(set jsetstatic_GL_ACTIVE_TEXTURE (fn jsetstatic_GL_ACTIVE_TEXTURE [value] (set jcell_GL_ACTIVE_TEXTURE value)))

(set jstatic_GL_ADD_SIGNED (fn jstatic_GL_ADD_SIGNED []
  (when (= jcell_GL_ADD_SIGNED :jnone) (set jcell_GL_ADD_SIGNED 34164))
  jcell_GL_ADD_SIGNED))
(set jsetstatic_GL_ADD_SIGNED (fn jsetstatic_GL_ADD_SIGNED [value] (set jcell_GL_ADD_SIGNED value)))

(set jstatic_GL_ALPHA_SCALE (fn jstatic_GL_ALPHA_SCALE []
  (when (= jcell_GL_ALPHA_SCALE :jnone) (set jcell_GL_ALPHA_SCALE 3356))
  jcell_GL_ALPHA_SCALE))
(set jsetstatic_GL_ALPHA_SCALE (fn jsetstatic_GL_ALPHA_SCALE [value] (set jcell_GL_ALPHA_SCALE value)))

(set jstatic_GL_ALPHA_TEST_FUNC (fn jstatic_GL_ALPHA_TEST_FUNC []
  (when (= jcell_GL_ALPHA_TEST_FUNC :jnone) (set jcell_GL_ALPHA_TEST_FUNC 3009))
  jcell_GL_ALPHA_TEST_FUNC))
(set jsetstatic_GL_ALPHA_TEST_FUNC (fn jsetstatic_GL_ALPHA_TEST_FUNC [value] (set jcell_GL_ALPHA_TEST_FUNC value)))

(set jstatic_GL_ALPHA_TEST_REF (fn jstatic_GL_ALPHA_TEST_REF []
  (when (= jcell_GL_ALPHA_TEST_REF :jnone) (set jcell_GL_ALPHA_TEST_REF 3010))
  jcell_GL_ALPHA_TEST_REF))
(set jsetstatic_GL_ALPHA_TEST_REF (fn jsetstatic_GL_ALPHA_TEST_REF [value] (set jcell_GL_ALPHA_TEST_REF value)))

(set jstatic_GL_ARRAY_BUFFER (fn jstatic_GL_ARRAY_BUFFER []
  (when (= jcell_GL_ARRAY_BUFFER :jnone) (set jcell_GL_ARRAY_BUFFER 34962))
  jcell_GL_ARRAY_BUFFER))
(set jsetstatic_GL_ARRAY_BUFFER (fn jsetstatic_GL_ARRAY_BUFFER [value] (set jcell_GL_ARRAY_BUFFER value)))

(set jstatic_GL_ARRAY_BUFFER_BINDING (fn jstatic_GL_ARRAY_BUFFER_BINDING []
  (when (= jcell_GL_ARRAY_BUFFER_BINDING :jnone) (set jcell_GL_ARRAY_BUFFER_BINDING 34964))
  jcell_GL_ARRAY_BUFFER_BINDING))
(set jsetstatic_GL_ARRAY_BUFFER_BINDING (fn jsetstatic_GL_ARRAY_BUFFER_BINDING [value] (set jcell_GL_ARRAY_BUFFER_BINDING value)))

(set jstatic_GL_BLEND_DST (fn jstatic_GL_BLEND_DST []
  (when (= jcell_GL_BLEND_DST :jnone) (set jcell_GL_BLEND_DST 3040))
  jcell_GL_BLEND_DST))
(set jsetstatic_GL_BLEND_DST (fn jsetstatic_GL_BLEND_DST [value] (set jcell_GL_BLEND_DST value)))

(set jstatic_GL_BLEND_SRC (fn jstatic_GL_BLEND_SRC []
  (when (= jcell_GL_BLEND_SRC :jnone) (set jcell_GL_BLEND_SRC 3041))
  jcell_GL_BLEND_SRC))
(set jsetstatic_GL_BLEND_SRC (fn jsetstatic_GL_BLEND_SRC [value] (set jcell_GL_BLEND_SRC value)))

(set jstatic_GL_BUFFER_ACCESS (fn jstatic_GL_BUFFER_ACCESS []
  (when (= jcell_GL_BUFFER_ACCESS :jnone) (set jcell_GL_BUFFER_ACCESS 35003))
  jcell_GL_BUFFER_ACCESS))
(set jsetstatic_GL_BUFFER_ACCESS (fn jsetstatic_GL_BUFFER_ACCESS [value] (set jcell_GL_BUFFER_ACCESS value)))

(set jstatic_GL_BUFFER_SIZE (fn jstatic_GL_BUFFER_SIZE []
  (when (= jcell_GL_BUFFER_SIZE :jnone) (set jcell_GL_BUFFER_SIZE 34660))
  jcell_GL_BUFFER_SIZE))
(set jsetstatic_GL_BUFFER_SIZE (fn jsetstatic_GL_BUFFER_SIZE [value] (set jcell_GL_BUFFER_SIZE value)))

(set jstatic_GL_BUFFER_USAGE (fn jstatic_GL_BUFFER_USAGE []
  (when (= jcell_GL_BUFFER_USAGE :jnone) (set jcell_GL_BUFFER_USAGE 34661))
  jcell_GL_BUFFER_USAGE))
(set jsetstatic_GL_BUFFER_USAGE (fn jsetstatic_GL_BUFFER_USAGE [value] (set jcell_GL_BUFFER_USAGE value)))

(set jstatic_GL_CLIENT_ACTIVE_TEXTURE (fn jstatic_GL_CLIENT_ACTIVE_TEXTURE []
  (when (= jcell_GL_CLIENT_ACTIVE_TEXTURE :jnone) (set jcell_GL_CLIENT_ACTIVE_TEXTURE 34017))
  jcell_GL_CLIENT_ACTIVE_TEXTURE))
(set jsetstatic_GL_CLIENT_ACTIVE_TEXTURE (fn jsetstatic_GL_CLIENT_ACTIVE_TEXTURE [value] (set jcell_GL_CLIENT_ACTIVE_TEXTURE value)))

(set jstatic_GL_CLIP_PLANE0 (fn jstatic_GL_CLIP_PLANE0 []
  (when (= jcell_GL_CLIP_PLANE0 :jnone) (set jcell_GL_CLIP_PLANE0 12288))
  jcell_GL_CLIP_PLANE0))
(set jsetstatic_GL_CLIP_PLANE0 (fn jsetstatic_GL_CLIP_PLANE0 [value] (set jcell_GL_CLIP_PLANE0 value)))

(set jstatic_GL_CLIP_PLANE1 (fn jstatic_GL_CLIP_PLANE1 []
  (when (= jcell_GL_CLIP_PLANE1 :jnone) (set jcell_GL_CLIP_PLANE1 12289))
  jcell_GL_CLIP_PLANE1))
(set jsetstatic_GL_CLIP_PLANE1 (fn jsetstatic_GL_CLIP_PLANE1 [value] (set jcell_GL_CLIP_PLANE1 value)))

(set jstatic_GL_CLIP_PLANE2 (fn jstatic_GL_CLIP_PLANE2 []
  (when (= jcell_GL_CLIP_PLANE2 :jnone) (set jcell_GL_CLIP_PLANE2 12290))
  jcell_GL_CLIP_PLANE2))
(set jsetstatic_GL_CLIP_PLANE2 (fn jsetstatic_GL_CLIP_PLANE2 [value] (set jcell_GL_CLIP_PLANE2 value)))

(set jstatic_GL_CLIP_PLANE3 (fn jstatic_GL_CLIP_PLANE3 []
  (when (= jcell_GL_CLIP_PLANE3 :jnone) (set jcell_GL_CLIP_PLANE3 12291))
  jcell_GL_CLIP_PLANE3))
(set jsetstatic_GL_CLIP_PLANE3 (fn jsetstatic_GL_CLIP_PLANE3 [value] (set jcell_GL_CLIP_PLANE3 value)))

(set jstatic_GL_CLIP_PLANE4 (fn jstatic_GL_CLIP_PLANE4 []
  (when (= jcell_GL_CLIP_PLANE4 :jnone) (set jcell_GL_CLIP_PLANE4 12292))
  jcell_GL_CLIP_PLANE4))
(set jsetstatic_GL_CLIP_PLANE4 (fn jsetstatic_GL_CLIP_PLANE4 [value] (set jcell_GL_CLIP_PLANE4 value)))

(set jstatic_GL_CLIP_PLANE5 (fn jstatic_GL_CLIP_PLANE5 []
  (when (= jcell_GL_CLIP_PLANE5 :jnone) (set jcell_GL_CLIP_PLANE5 12293))
  jcell_GL_CLIP_PLANE5))
(set jsetstatic_GL_CLIP_PLANE5 (fn jsetstatic_GL_CLIP_PLANE5 [value] (set jcell_GL_CLIP_PLANE5 value)))

(set jstatic_GL_COLOR_ARRAY_BUFFER_BINDING (fn jstatic_GL_COLOR_ARRAY_BUFFER_BINDING []
  (when (= jcell_GL_COLOR_ARRAY_BUFFER_BINDING :jnone) (set jcell_GL_COLOR_ARRAY_BUFFER_BINDING 34968))
  jcell_GL_COLOR_ARRAY_BUFFER_BINDING))
(set jsetstatic_GL_COLOR_ARRAY_BUFFER_BINDING (fn jsetstatic_GL_COLOR_ARRAY_BUFFER_BINDING [value] (set jcell_GL_COLOR_ARRAY_BUFFER_BINDING value)))

(set jstatic_GL_COLOR_ARRAY_POINTER (fn jstatic_GL_COLOR_ARRAY_POINTER []
  (when (= jcell_GL_COLOR_ARRAY_POINTER :jnone) (set jcell_GL_COLOR_ARRAY_POINTER 32912))
  jcell_GL_COLOR_ARRAY_POINTER))
(set jsetstatic_GL_COLOR_ARRAY_POINTER (fn jsetstatic_GL_COLOR_ARRAY_POINTER [value] (set jcell_GL_COLOR_ARRAY_POINTER value)))

(set jstatic_GL_COLOR_ARRAY_SIZE (fn jstatic_GL_COLOR_ARRAY_SIZE []
  (when (= jcell_GL_COLOR_ARRAY_SIZE :jnone) (set jcell_GL_COLOR_ARRAY_SIZE 32897))
  jcell_GL_COLOR_ARRAY_SIZE))
(set jsetstatic_GL_COLOR_ARRAY_SIZE (fn jsetstatic_GL_COLOR_ARRAY_SIZE [value] (set jcell_GL_COLOR_ARRAY_SIZE value)))

(set jstatic_GL_COLOR_ARRAY_STRIDE (fn jstatic_GL_COLOR_ARRAY_STRIDE []
  (when (= jcell_GL_COLOR_ARRAY_STRIDE :jnone) (set jcell_GL_COLOR_ARRAY_STRIDE 32899))
  jcell_GL_COLOR_ARRAY_STRIDE))
(set jsetstatic_GL_COLOR_ARRAY_STRIDE (fn jsetstatic_GL_COLOR_ARRAY_STRIDE [value] (set jcell_GL_COLOR_ARRAY_STRIDE value)))

(set jstatic_GL_COLOR_ARRAY_TYPE (fn jstatic_GL_COLOR_ARRAY_TYPE []
  (when (= jcell_GL_COLOR_ARRAY_TYPE :jnone) (set jcell_GL_COLOR_ARRAY_TYPE 32898))
  jcell_GL_COLOR_ARRAY_TYPE))
(set jsetstatic_GL_COLOR_ARRAY_TYPE (fn jsetstatic_GL_COLOR_ARRAY_TYPE [value] (set jcell_GL_COLOR_ARRAY_TYPE value)))

(set jstatic_GL_COLOR_CLEAR_VALUE (fn jstatic_GL_COLOR_CLEAR_VALUE []
  (when (= jcell_GL_COLOR_CLEAR_VALUE :jnone) (set jcell_GL_COLOR_CLEAR_VALUE 3106))
  jcell_GL_COLOR_CLEAR_VALUE))
(set jsetstatic_GL_COLOR_CLEAR_VALUE (fn jsetstatic_GL_COLOR_CLEAR_VALUE [value] (set jcell_GL_COLOR_CLEAR_VALUE value)))

(set jstatic_GL_COLOR_WRITEMASK (fn jstatic_GL_COLOR_WRITEMASK []
  (when (= jcell_GL_COLOR_WRITEMASK :jnone) (set jcell_GL_COLOR_WRITEMASK 3107))
  jcell_GL_COLOR_WRITEMASK))
(set jsetstatic_GL_COLOR_WRITEMASK (fn jsetstatic_GL_COLOR_WRITEMASK [value] (set jcell_GL_COLOR_WRITEMASK value)))

(set jstatic_GL_COMBINE (fn jstatic_GL_COMBINE []
  (when (= jcell_GL_COMBINE :jnone) (set jcell_GL_COMBINE 34160))
  jcell_GL_COMBINE))
(set jsetstatic_GL_COMBINE (fn jsetstatic_GL_COMBINE [value] (set jcell_GL_COMBINE value)))

(set jstatic_GL_COMBINE_ALPHA (fn jstatic_GL_COMBINE_ALPHA []
  (when (= jcell_GL_COMBINE_ALPHA :jnone) (set jcell_GL_COMBINE_ALPHA 34162))
  jcell_GL_COMBINE_ALPHA))
(set jsetstatic_GL_COMBINE_ALPHA (fn jsetstatic_GL_COMBINE_ALPHA [value] (set jcell_GL_COMBINE_ALPHA value)))

(set jstatic_GL_COMBINE_RGB (fn jstatic_GL_COMBINE_RGB []
  (when (= jcell_GL_COMBINE_RGB :jnone) (set jcell_GL_COMBINE_RGB 34161))
  jcell_GL_COMBINE_RGB))
(set jsetstatic_GL_COMBINE_RGB (fn jsetstatic_GL_COMBINE_RGB [value] (set jcell_GL_COMBINE_RGB value)))

(set jstatic_GL_CONSTANT (fn jstatic_GL_CONSTANT []
  (when (= jcell_GL_CONSTANT :jnone) (set jcell_GL_CONSTANT 34166))
  jcell_GL_CONSTANT))
(set jsetstatic_GL_CONSTANT (fn jsetstatic_GL_CONSTANT [value] (set jcell_GL_CONSTANT value)))

(set jstatic_GL_COORD_REPLACE_OES (fn jstatic_GL_COORD_REPLACE_OES []
  (when (= jcell_GL_COORD_REPLACE_OES :jnone) (set jcell_GL_COORD_REPLACE_OES 34914))
  jcell_GL_COORD_REPLACE_OES))
(set jsetstatic_GL_COORD_REPLACE_OES (fn jsetstatic_GL_COORD_REPLACE_OES [value] (set jcell_GL_COORD_REPLACE_OES value)))

(set jstatic_GL_CULL_FACE_MODE (fn jstatic_GL_CULL_FACE_MODE []
  (when (= jcell_GL_CULL_FACE_MODE :jnone) (set jcell_GL_CULL_FACE_MODE 2885))
  jcell_GL_CULL_FACE_MODE))
(set jsetstatic_GL_CULL_FACE_MODE (fn jsetstatic_GL_CULL_FACE_MODE [value] (set jcell_GL_CULL_FACE_MODE value)))

(set jstatic_GL_CURRENT_COLOR (fn jstatic_GL_CURRENT_COLOR []
  (when (= jcell_GL_CURRENT_COLOR :jnone) (set jcell_GL_CURRENT_COLOR 2816))
  jcell_GL_CURRENT_COLOR))
(set jsetstatic_GL_CURRENT_COLOR (fn jsetstatic_GL_CURRENT_COLOR [value] (set jcell_GL_CURRENT_COLOR value)))

(set jstatic_GL_CURRENT_NORMAL (fn jstatic_GL_CURRENT_NORMAL []
  (when (= jcell_GL_CURRENT_NORMAL :jnone) (set jcell_GL_CURRENT_NORMAL 2818))
  jcell_GL_CURRENT_NORMAL))
(set jsetstatic_GL_CURRENT_NORMAL (fn jsetstatic_GL_CURRENT_NORMAL [value] (set jcell_GL_CURRENT_NORMAL value)))

(set jstatic_GL_CURRENT_TEXTURE_COORDS (fn jstatic_GL_CURRENT_TEXTURE_COORDS []
  (when (= jcell_GL_CURRENT_TEXTURE_COORDS :jnone) (set jcell_GL_CURRENT_TEXTURE_COORDS 2819))
  jcell_GL_CURRENT_TEXTURE_COORDS))
(set jsetstatic_GL_CURRENT_TEXTURE_COORDS (fn jsetstatic_GL_CURRENT_TEXTURE_COORDS [value] (set jcell_GL_CURRENT_TEXTURE_COORDS value)))

(set jstatic_GL_DEPTH_CLEAR_VALUE (fn jstatic_GL_DEPTH_CLEAR_VALUE []
  (when (= jcell_GL_DEPTH_CLEAR_VALUE :jnone) (set jcell_GL_DEPTH_CLEAR_VALUE 2931))
  jcell_GL_DEPTH_CLEAR_VALUE))
(set jsetstatic_GL_DEPTH_CLEAR_VALUE (fn jsetstatic_GL_DEPTH_CLEAR_VALUE [value] (set jcell_GL_DEPTH_CLEAR_VALUE value)))

(set jstatic_GL_DEPTH_FUNC (fn jstatic_GL_DEPTH_FUNC []
  (when (= jcell_GL_DEPTH_FUNC :jnone) (set jcell_GL_DEPTH_FUNC 2932))
  jcell_GL_DEPTH_FUNC))
(set jsetstatic_GL_DEPTH_FUNC (fn jsetstatic_GL_DEPTH_FUNC [value] (set jcell_GL_DEPTH_FUNC value)))

(set jstatic_GL_DEPTH_RANGE (fn jstatic_GL_DEPTH_RANGE []
  (when (= jcell_GL_DEPTH_RANGE :jnone) (set jcell_GL_DEPTH_RANGE 2928))
  jcell_GL_DEPTH_RANGE))
(set jsetstatic_GL_DEPTH_RANGE (fn jsetstatic_GL_DEPTH_RANGE [value] (set jcell_GL_DEPTH_RANGE value)))

(set jstatic_GL_DEPTH_WRITEMASK (fn jstatic_GL_DEPTH_WRITEMASK []
  (when (= jcell_GL_DEPTH_WRITEMASK :jnone) (set jcell_GL_DEPTH_WRITEMASK 2930))
  jcell_GL_DEPTH_WRITEMASK))
(set jsetstatic_GL_DEPTH_WRITEMASK (fn jsetstatic_GL_DEPTH_WRITEMASK [value] (set jcell_GL_DEPTH_WRITEMASK value)))

(set jstatic_GL_DOT3_RGB (fn jstatic_GL_DOT3_RGB []
  (when (= jcell_GL_DOT3_RGB :jnone) (set jcell_GL_DOT3_RGB 34478))
  jcell_GL_DOT3_RGB))
(set jsetstatic_GL_DOT3_RGB (fn jsetstatic_GL_DOT3_RGB [value] (set jcell_GL_DOT3_RGB value)))

(set jstatic_GL_DOT3_RGBA (fn jstatic_GL_DOT3_RGBA []
  (when (= jcell_GL_DOT3_RGBA :jnone) (set jcell_GL_DOT3_RGBA 34479))
  jcell_GL_DOT3_RGBA))
(set jsetstatic_GL_DOT3_RGBA (fn jsetstatic_GL_DOT3_RGBA [value] (set jcell_GL_DOT3_RGBA value)))

(set jstatic_GL_DYNAMIC_DRAW (fn jstatic_GL_DYNAMIC_DRAW []
  (when (= jcell_GL_DYNAMIC_DRAW :jnone) (set jcell_GL_DYNAMIC_DRAW 35048))
  jcell_GL_DYNAMIC_DRAW))
(set jsetstatic_GL_DYNAMIC_DRAW (fn jsetstatic_GL_DYNAMIC_DRAW [value] (set jcell_GL_DYNAMIC_DRAW value)))

(set jstatic_GL_ELEMENT_ARRAY_BUFFER (fn jstatic_GL_ELEMENT_ARRAY_BUFFER []
  (when (= jcell_GL_ELEMENT_ARRAY_BUFFER :jnone) (set jcell_GL_ELEMENT_ARRAY_BUFFER 34963))
  jcell_GL_ELEMENT_ARRAY_BUFFER))
(set jsetstatic_GL_ELEMENT_ARRAY_BUFFER (fn jsetstatic_GL_ELEMENT_ARRAY_BUFFER [value] (set jcell_GL_ELEMENT_ARRAY_BUFFER value)))

(set jstatic_GL_ELEMENT_ARRAY_BUFFER_BINDING (fn jstatic_GL_ELEMENT_ARRAY_BUFFER_BINDING []
  (when (= jcell_GL_ELEMENT_ARRAY_BUFFER_BINDING :jnone) (set jcell_GL_ELEMENT_ARRAY_BUFFER_BINDING 34965))
  jcell_GL_ELEMENT_ARRAY_BUFFER_BINDING))
(set jsetstatic_GL_ELEMENT_ARRAY_BUFFER_BINDING (fn jsetstatic_GL_ELEMENT_ARRAY_BUFFER_BINDING [value] (set jcell_GL_ELEMENT_ARRAY_BUFFER_BINDING value)))

(set jstatic_GL_FRONT_FACE (fn jstatic_GL_FRONT_FACE []
  (when (= jcell_GL_FRONT_FACE :jnone) (set jcell_GL_FRONT_FACE 2886))
  jcell_GL_FRONT_FACE))
(set jsetstatic_GL_FRONT_FACE (fn jsetstatic_GL_FRONT_FACE [value] (set jcell_GL_FRONT_FACE value)))

(set jstatic_GL_GENERATE_MIPMAP (fn jstatic_GL_GENERATE_MIPMAP []
  (when (= jcell_GL_GENERATE_MIPMAP :jnone) (set jcell_GL_GENERATE_MIPMAP 33169))
  jcell_GL_GENERATE_MIPMAP))
(set jsetstatic_GL_GENERATE_MIPMAP (fn jsetstatic_GL_GENERATE_MIPMAP [value] (set jcell_GL_GENERATE_MIPMAP value)))

(set jstatic_GL_GENERATE_MIPMAP_HINT (fn jstatic_GL_GENERATE_MIPMAP_HINT []
  (when (= jcell_GL_GENERATE_MIPMAP_HINT :jnone) (set jcell_GL_GENERATE_MIPMAP_HINT 33170))
  jcell_GL_GENERATE_MIPMAP_HINT))
(set jsetstatic_GL_GENERATE_MIPMAP_HINT (fn jsetstatic_GL_GENERATE_MIPMAP_HINT [value] (set jcell_GL_GENERATE_MIPMAP_HINT value)))

(set jstatic_GL_INTERPOLATE (fn jstatic_GL_INTERPOLATE []
  (when (= jcell_GL_INTERPOLATE :jnone) (set jcell_GL_INTERPOLATE 34165))
  jcell_GL_INTERPOLATE))
(set jsetstatic_GL_INTERPOLATE (fn jsetstatic_GL_INTERPOLATE [value] (set jcell_GL_INTERPOLATE value)))

(set jstatic_GL_LINE_WIDTH (fn jstatic_GL_LINE_WIDTH []
  (when (= jcell_GL_LINE_WIDTH :jnone) (set jcell_GL_LINE_WIDTH 2849))
  jcell_GL_LINE_WIDTH))
(set jsetstatic_GL_LINE_WIDTH (fn jsetstatic_GL_LINE_WIDTH [value] (set jcell_GL_LINE_WIDTH value)))

(set jstatic_GL_LOGIC_OP_MODE (fn jstatic_GL_LOGIC_OP_MODE []
  (when (= jcell_GL_LOGIC_OP_MODE :jnone) (set jcell_GL_LOGIC_OP_MODE 3056))
  jcell_GL_LOGIC_OP_MODE))
(set jsetstatic_GL_LOGIC_OP_MODE (fn jsetstatic_GL_LOGIC_OP_MODE [value] (set jcell_GL_LOGIC_OP_MODE value)))

(set jstatic_GL_MATRIX_MODE (fn jstatic_GL_MATRIX_MODE []
  (when (= jcell_GL_MATRIX_MODE :jnone) (set jcell_GL_MATRIX_MODE 2976))
  jcell_GL_MATRIX_MODE))
(set jsetstatic_GL_MATRIX_MODE (fn jsetstatic_GL_MATRIX_MODE [value] (set jcell_GL_MATRIX_MODE value)))

(set jstatic_GL_MAX_CLIP_PLANES (fn jstatic_GL_MAX_CLIP_PLANES []
  (when (= jcell_GL_MAX_CLIP_PLANES :jnone) (set jcell_GL_MAX_CLIP_PLANES 3378))
  jcell_GL_MAX_CLIP_PLANES))
(set jsetstatic_GL_MAX_CLIP_PLANES (fn jsetstatic_GL_MAX_CLIP_PLANES [value] (set jcell_GL_MAX_CLIP_PLANES value)))

(set jstatic_GL_MODELVIEW_MATRIX (fn jstatic_GL_MODELVIEW_MATRIX []
  (when (= jcell_GL_MODELVIEW_MATRIX :jnone) (set jcell_GL_MODELVIEW_MATRIX 2982))
  jcell_GL_MODELVIEW_MATRIX))
(set jsetstatic_GL_MODELVIEW_MATRIX (fn jsetstatic_GL_MODELVIEW_MATRIX [value] (set jcell_GL_MODELVIEW_MATRIX value)))

(set jstatic_GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OES (fn jstatic_GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OES []
  (when (= jcell_GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OES :jnone) (set jcell_GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OES 35213))
  jcell_GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OES))
(set jsetstatic_GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OES (fn jsetstatic_GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OES [value] (set jcell_GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OES value)))

(set jstatic_GL_MODELVIEW_STACK_DEPTH (fn jstatic_GL_MODELVIEW_STACK_DEPTH []
  (when (= jcell_GL_MODELVIEW_STACK_DEPTH :jnone) (set jcell_GL_MODELVIEW_STACK_DEPTH 2979))
  jcell_GL_MODELVIEW_STACK_DEPTH))
(set jsetstatic_GL_MODELVIEW_STACK_DEPTH (fn jsetstatic_GL_MODELVIEW_STACK_DEPTH [value] (set jcell_GL_MODELVIEW_STACK_DEPTH value)))

(set jstatic_GL_NORMAL_ARRAY_BUFFER_BINDING (fn jstatic_GL_NORMAL_ARRAY_BUFFER_BINDING []
  (when (= jcell_GL_NORMAL_ARRAY_BUFFER_BINDING :jnone) (set jcell_GL_NORMAL_ARRAY_BUFFER_BINDING 34967))
  jcell_GL_NORMAL_ARRAY_BUFFER_BINDING))
(set jsetstatic_GL_NORMAL_ARRAY_BUFFER_BINDING (fn jsetstatic_GL_NORMAL_ARRAY_BUFFER_BINDING [value] (set jcell_GL_NORMAL_ARRAY_BUFFER_BINDING value)))

(set jstatic_GL_NORMAL_ARRAY_POINTER (fn jstatic_GL_NORMAL_ARRAY_POINTER []
  (when (= jcell_GL_NORMAL_ARRAY_POINTER :jnone) (set jcell_GL_NORMAL_ARRAY_POINTER 32911))
  jcell_GL_NORMAL_ARRAY_POINTER))
(set jsetstatic_GL_NORMAL_ARRAY_POINTER (fn jsetstatic_GL_NORMAL_ARRAY_POINTER [value] (set jcell_GL_NORMAL_ARRAY_POINTER value)))

(set jstatic_GL_NORMAL_ARRAY_STRIDE (fn jstatic_GL_NORMAL_ARRAY_STRIDE []
  (when (= jcell_GL_NORMAL_ARRAY_STRIDE :jnone) (set jcell_GL_NORMAL_ARRAY_STRIDE 32895))
  jcell_GL_NORMAL_ARRAY_STRIDE))
(set jsetstatic_GL_NORMAL_ARRAY_STRIDE (fn jsetstatic_GL_NORMAL_ARRAY_STRIDE [value] (set jcell_GL_NORMAL_ARRAY_STRIDE value)))

(set jstatic_GL_NORMAL_ARRAY_TYPE (fn jstatic_GL_NORMAL_ARRAY_TYPE []
  (when (= jcell_GL_NORMAL_ARRAY_TYPE :jnone) (set jcell_GL_NORMAL_ARRAY_TYPE 32894))
  jcell_GL_NORMAL_ARRAY_TYPE))
(set jsetstatic_GL_NORMAL_ARRAY_TYPE (fn jsetstatic_GL_NORMAL_ARRAY_TYPE [value] (set jcell_GL_NORMAL_ARRAY_TYPE value)))

(set jstatic_GL_OPERAND0_ALPHA (fn jstatic_GL_OPERAND0_ALPHA []
  (when (= jcell_GL_OPERAND0_ALPHA :jnone) (set jcell_GL_OPERAND0_ALPHA 34200))
  jcell_GL_OPERAND0_ALPHA))
(set jsetstatic_GL_OPERAND0_ALPHA (fn jsetstatic_GL_OPERAND0_ALPHA [value] (set jcell_GL_OPERAND0_ALPHA value)))

(set jstatic_GL_OPERAND0_RGB (fn jstatic_GL_OPERAND0_RGB []
  (when (= jcell_GL_OPERAND0_RGB :jnone) (set jcell_GL_OPERAND0_RGB 34192))
  jcell_GL_OPERAND0_RGB))
(set jsetstatic_GL_OPERAND0_RGB (fn jsetstatic_GL_OPERAND0_RGB [value] (set jcell_GL_OPERAND0_RGB value)))

(set jstatic_GL_OPERAND1_ALPHA (fn jstatic_GL_OPERAND1_ALPHA []
  (when (= jcell_GL_OPERAND1_ALPHA :jnone) (set jcell_GL_OPERAND1_ALPHA 34201))
  jcell_GL_OPERAND1_ALPHA))
(set jsetstatic_GL_OPERAND1_ALPHA (fn jsetstatic_GL_OPERAND1_ALPHA [value] (set jcell_GL_OPERAND1_ALPHA value)))

(set jstatic_GL_OPERAND1_RGB (fn jstatic_GL_OPERAND1_RGB []
  (when (= jcell_GL_OPERAND1_RGB :jnone) (set jcell_GL_OPERAND1_RGB 34193))
  jcell_GL_OPERAND1_RGB))
(set jsetstatic_GL_OPERAND1_RGB (fn jsetstatic_GL_OPERAND1_RGB [value] (set jcell_GL_OPERAND1_RGB value)))

(set jstatic_GL_OPERAND2_ALPHA (fn jstatic_GL_OPERAND2_ALPHA []
  (when (= jcell_GL_OPERAND2_ALPHA :jnone) (set jcell_GL_OPERAND2_ALPHA 34202))
  jcell_GL_OPERAND2_ALPHA))
(set jsetstatic_GL_OPERAND2_ALPHA (fn jsetstatic_GL_OPERAND2_ALPHA [value] (set jcell_GL_OPERAND2_ALPHA value)))

(set jstatic_GL_OPERAND2_RGB (fn jstatic_GL_OPERAND2_RGB []
  (when (= jcell_GL_OPERAND2_RGB :jnone) (set jcell_GL_OPERAND2_RGB 34194))
  jcell_GL_OPERAND2_RGB))
(set jsetstatic_GL_OPERAND2_RGB (fn jsetstatic_GL_OPERAND2_RGB [value] (set jcell_GL_OPERAND2_RGB value)))

(set jstatic_GL_POINT_DISTANCE_ATTENUATION (fn jstatic_GL_POINT_DISTANCE_ATTENUATION []
  (when (= jcell_GL_POINT_DISTANCE_ATTENUATION :jnone) (set jcell_GL_POINT_DISTANCE_ATTENUATION 33065))
  jcell_GL_POINT_DISTANCE_ATTENUATION))
(set jsetstatic_GL_POINT_DISTANCE_ATTENUATION (fn jsetstatic_GL_POINT_DISTANCE_ATTENUATION [value] (set jcell_GL_POINT_DISTANCE_ATTENUATION value)))

(set jstatic_GL_POINT_FADE_THRESHOLD_SIZE (fn jstatic_GL_POINT_FADE_THRESHOLD_SIZE []
  (when (= jcell_GL_POINT_FADE_THRESHOLD_SIZE :jnone) (set jcell_GL_POINT_FADE_THRESHOLD_SIZE 33064))
  jcell_GL_POINT_FADE_THRESHOLD_SIZE))
(set jsetstatic_GL_POINT_FADE_THRESHOLD_SIZE (fn jsetstatic_GL_POINT_FADE_THRESHOLD_SIZE [value] (set jcell_GL_POINT_FADE_THRESHOLD_SIZE value)))

(set jstatic_GL_POINT_SIZE (fn jstatic_GL_POINT_SIZE []
  (when (= jcell_GL_POINT_SIZE :jnone) (set jcell_GL_POINT_SIZE 2833))
  jcell_GL_POINT_SIZE))
(set jsetstatic_GL_POINT_SIZE (fn jsetstatic_GL_POINT_SIZE [value] (set jcell_GL_POINT_SIZE value)))

(set jstatic_GL_POINT_SIZE_ARRAY_BUFFER_BINDING_OES (fn jstatic_GL_POINT_SIZE_ARRAY_BUFFER_BINDING_OES []
  (when (= jcell_GL_POINT_SIZE_ARRAY_BUFFER_BINDING_OES :jnone) (set jcell_GL_POINT_SIZE_ARRAY_BUFFER_BINDING_OES 35743))
  jcell_GL_POINT_SIZE_ARRAY_BUFFER_BINDING_OES))
(set jsetstatic_GL_POINT_SIZE_ARRAY_BUFFER_BINDING_OES (fn jsetstatic_GL_POINT_SIZE_ARRAY_BUFFER_BINDING_OES [value] (set jcell_GL_POINT_SIZE_ARRAY_BUFFER_BINDING_OES value)))

(set jstatic_GL_POINT_SIZE_ARRAY_OES (fn jstatic_GL_POINT_SIZE_ARRAY_OES []
  (when (= jcell_GL_POINT_SIZE_ARRAY_OES :jnone) (set jcell_GL_POINT_SIZE_ARRAY_OES 35740))
  jcell_GL_POINT_SIZE_ARRAY_OES))
(set jsetstatic_GL_POINT_SIZE_ARRAY_OES (fn jsetstatic_GL_POINT_SIZE_ARRAY_OES [value] (set jcell_GL_POINT_SIZE_ARRAY_OES value)))

(set jstatic_GL_POINT_SIZE_ARRAY_POINTER_OES (fn jstatic_GL_POINT_SIZE_ARRAY_POINTER_OES []
  (when (= jcell_GL_POINT_SIZE_ARRAY_POINTER_OES :jnone) (set jcell_GL_POINT_SIZE_ARRAY_POINTER_OES 35212))
  jcell_GL_POINT_SIZE_ARRAY_POINTER_OES))
(set jsetstatic_GL_POINT_SIZE_ARRAY_POINTER_OES (fn jsetstatic_GL_POINT_SIZE_ARRAY_POINTER_OES [value] (set jcell_GL_POINT_SIZE_ARRAY_POINTER_OES value)))

(set jstatic_GL_POINT_SIZE_ARRAY_STRIDE_OES (fn jstatic_GL_POINT_SIZE_ARRAY_STRIDE_OES []
  (when (= jcell_GL_POINT_SIZE_ARRAY_STRIDE_OES :jnone) (set jcell_GL_POINT_SIZE_ARRAY_STRIDE_OES 35211))
  jcell_GL_POINT_SIZE_ARRAY_STRIDE_OES))
(set jsetstatic_GL_POINT_SIZE_ARRAY_STRIDE_OES (fn jsetstatic_GL_POINT_SIZE_ARRAY_STRIDE_OES [value] (set jcell_GL_POINT_SIZE_ARRAY_STRIDE_OES value)))

(set jstatic_GL_POINT_SIZE_ARRAY_TYPE_OES (fn jstatic_GL_POINT_SIZE_ARRAY_TYPE_OES []
  (when (= jcell_GL_POINT_SIZE_ARRAY_TYPE_OES :jnone) (set jcell_GL_POINT_SIZE_ARRAY_TYPE_OES 35210))
  jcell_GL_POINT_SIZE_ARRAY_TYPE_OES))
(set jsetstatic_GL_POINT_SIZE_ARRAY_TYPE_OES (fn jsetstatic_GL_POINT_SIZE_ARRAY_TYPE_OES [value] (set jcell_GL_POINT_SIZE_ARRAY_TYPE_OES value)))

(set jstatic_GL_POINT_SIZE_MAX (fn jstatic_GL_POINT_SIZE_MAX []
  (when (= jcell_GL_POINT_SIZE_MAX :jnone) (set jcell_GL_POINT_SIZE_MAX 33063))
  jcell_GL_POINT_SIZE_MAX))
(set jsetstatic_GL_POINT_SIZE_MAX (fn jsetstatic_GL_POINT_SIZE_MAX [value] (set jcell_GL_POINT_SIZE_MAX value)))

(set jstatic_GL_POINT_SIZE_MIN (fn jstatic_GL_POINT_SIZE_MIN []
  (when (= jcell_GL_POINT_SIZE_MIN :jnone) (set jcell_GL_POINT_SIZE_MIN 33062))
  jcell_GL_POINT_SIZE_MIN))
(set jsetstatic_GL_POINT_SIZE_MIN (fn jsetstatic_GL_POINT_SIZE_MIN [value] (set jcell_GL_POINT_SIZE_MIN value)))

(set jstatic_GL_POINT_SPRITE_OES (fn jstatic_GL_POINT_SPRITE_OES []
  (when (= jcell_GL_POINT_SPRITE_OES :jnone) (set jcell_GL_POINT_SPRITE_OES 34913))
  jcell_GL_POINT_SPRITE_OES))
(set jsetstatic_GL_POINT_SPRITE_OES (fn jsetstatic_GL_POINT_SPRITE_OES [value] (set jcell_GL_POINT_SPRITE_OES value)))

(set jstatic_GL_POLYGON_OFFSET_FACTOR (fn jstatic_GL_POLYGON_OFFSET_FACTOR []
  (when (= jcell_GL_POLYGON_OFFSET_FACTOR :jnone) (set jcell_GL_POLYGON_OFFSET_FACTOR 32824))
  jcell_GL_POLYGON_OFFSET_FACTOR))
(set jsetstatic_GL_POLYGON_OFFSET_FACTOR (fn jsetstatic_GL_POLYGON_OFFSET_FACTOR [value] (set jcell_GL_POLYGON_OFFSET_FACTOR value)))

(set jstatic_GL_POLYGON_OFFSET_UNITS (fn jstatic_GL_POLYGON_OFFSET_UNITS []
  (when (= jcell_GL_POLYGON_OFFSET_UNITS :jnone) (set jcell_GL_POLYGON_OFFSET_UNITS 10752))
  jcell_GL_POLYGON_OFFSET_UNITS))
(set jsetstatic_GL_POLYGON_OFFSET_UNITS (fn jsetstatic_GL_POLYGON_OFFSET_UNITS [value] (set jcell_GL_POLYGON_OFFSET_UNITS value)))

(set jstatic_GL_PREVIOUS (fn jstatic_GL_PREVIOUS []
  (when (= jcell_GL_PREVIOUS :jnone) (set jcell_GL_PREVIOUS 34168))
  jcell_GL_PREVIOUS))
(set jsetstatic_GL_PREVIOUS (fn jsetstatic_GL_PREVIOUS [value] (set jcell_GL_PREVIOUS value)))

(set jstatic_GL_PRIMARY_COLOR (fn jstatic_GL_PRIMARY_COLOR []
  (when (= jcell_GL_PRIMARY_COLOR :jnone) (set jcell_GL_PRIMARY_COLOR 34167))
  jcell_GL_PRIMARY_COLOR))
(set jsetstatic_GL_PRIMARY_COLOR (fn jsetstatic_GL_PRIMARY_COLOR [value] (set jcell_GL_PRIMARY_COLOR value)))

(set jstatic_GL_PROJECTION_MATRIX (fn jstatic_GL_PROJECTION_MATRIX []
  (when (= jcell_GL_PROJECTION_MATRIX :jnone) (set jcell_GL_PROJECTION_MATRIX 2983))
  jcell_GL_PROJECTION_MATRIX))
(set jsetstatic_GL_PROJECTION_MATRIX (fn jsetstatic_GL_PROJECTION_MATRIX [value] (set jcell_GL_PROJECTION_MATRIX value)))

(set jstatic_GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OES (fn jstatic_GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OES []
  (when (= jcell_GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OES :jnone) (set jcell_GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OES 35214))
  jcell_GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OES))
(set jsetstatic_GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OES (fn jsetstatic_GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OES [value] (set jcell_GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OES value)))

(set jstatic_GL_PROJECTION_STACK_DEPTH (fn jstatic_GL_PROJECTION_STACK_DEPTH []
  (when (= jcell_GL_PROJECTION_STACK_DEPTH :jnone) (set jcell_GL_PROJECTION_STACK_DEPTH 2980))
  jcell_GL_PROJECTION_STACK_DEPTH))
(set jsetstatic_GL_PROJECTION_STACK_DEPTH (fn jsetstatic_GL_PROJECTION_STACK_DEPTH [value] (set jcell_GL_PROJECTION_STACK_DEPTH value)))

(set jstatic_GL_RGB_SCALE (fn jstatic_GL_RGB_SCALE []
  (when (= jcell_GL_RGB_SCALE :jnone) (set jcell_GL_RGB_SCALE 34163))
  jcell_GL_RGB_SCALE))
(set jsetstatic_GL_RGB_SCALE (fn jsetstatic_GL_RGB_SCALE [value] (set jcell_GL_RGB_SCALE value)))

(set jstatic_GL_SAMPLE_BUFFERS (fn jstatic_GL_SAMPLE_BUFFERS []
  (when (= jcell_GL_SAMPLE_BUFFERS :jnone) (set jcell_GL_SAMPLE_BUFFERS 32936))
  jcell_GL_SAMPLE_BUFFERS))
(set jsetstatic_GL_SAMPLE_BUFFERS (fn jsetstatic_GL_SAMPLE_BUFFERS [value] (set jcell_GL_SAMPLE_BUFFERS value)))

(set jstatic_GL_SAMPLE_COVERAGE_INVERT (fn jstatic_GL_SAMPLE_COVERAGE_INVERT []
  (when (= jcell_GL_SAMPLE_COVERAGE_INVERT :jnone) (set jcell_GL_SAMPLE_COVERAGE_INVERT 32939))
  jcell_GL_SAMPLE_COVERAGE_INVERT))
(set jsetstatic_GL_SAMPLE_COVERAGE_INVERT (fn jsetstatic_GL_SAMPLE_COVERAGE_INVERT [value] (set jcell_GL_SAMPLE_COVERAGE_INVERT value)))

(set jstatic_GL_SAMPLE_COVERAGE_VALUE (fn jstatic_GL_SAMPLE_COVERAGE_VALUE []
  (when (= jcell_GL_SAMPLE_COVERAGE_VALUE :jnone) (set jcell_GL_SAMPLE_COVERAGE_VALUE 32938))
  jcell_GL_SAMPLE_COVERAGE_VALUE))
(set jsetstatic_GL_SAMPLE_COVERAGE_VALUE (fn jsetstatic_GL_SAMPLE_COVERAGE_VALUE [value] (set jcell_GL_SAMPLE_COVERAGE_VALUE value)))

(set jstatic_GL_SAMPLES (fn jstatic_GL_SAMPLES []
  (when (= jcell_GL_SAMPLES :jnone) (set jcell_GL_SAMPLES 32937))
  jcell_GL_SAMPLES))
(set jsetstatic_GL_SAMPLES (fn jsetstatic_GL_SAMPLES [value] (set jcell_GL_SAMPLES value)))

(set jstatic_GL_SCISSOR_BOX (fn jstatic_GL_SCISSOR_BOX []
  (when (= jcell_GL_SCISSOR_BOX :jnone) (set jcell_GL_SCISSOR_BOX 3088))
  jcell_GL_SCISSOR_BOX))
(set jsetstatic_GL_SCISSOR_BOX (fn jsetstatic_GL_SCISSOR_BOX [value] (set jcell_GL_SCISSOR_BOX value)))

(set jstatic_GL_SHADE_MODEL (fn jstatic_GL_SHADE_MODEL []
  (when (= jcell_GL_SHADE_MODEL :jnone) (set jcell_GL_SHADE_MODEL 2900))
  jcell_GL_SHADE_MODEL))
(set jsetstatic_GL_SHADE_MODEL (fn jsetstatic_GL_SHADE_MODEL [value] (set jcell_GL_SHADE_MODEL value)))

(set jstatic_GL_SRC0_ALPHA (fn jstatic_GL_SRC0_ALPHA []
  (when (= jcell_GL_SRC0_ALPHA :jnone) (set jcell_GL_SRC0_ALPHA 34184))
  jcell_GL_SRC0_ALPHA))
(set jsetstatic_GL_SRC0_ALPHA (fn jsetstatic_GL_SRC0_ALPHA [value] (set jcell_GL_SRC0_ALPHA value)))

(set jstatic_GL_SRC0_RGB (fn jstatic_GL_SRC0_RGB []
  (when (= jcell_GL_SRC0_RGB :jnone) (set jcell_GL_SRC0_RGB 34176))
  jcell_GL_SRC0_RGB))
(set jsetstatic_GL_SRC0_RGB (fn jsetstatic_GL_SRC0_RGB [value] (set jcell_GL_SRC0_RGB value)))

(set jstatic_GL_SRC1_ALPHA (fn jstatic_GL_SRC1_ALPHA []
  (when (= jcell_GL_SRC1_ALPHA :jnone) (set jcell_GL_SRC1_ALPHA 34185))
  jcell_GL_SRC1_ALPHA))
(set jsetstatic_GL_SRC1_ALPHA (fn jsetstatic_GL_SRC1_ALPHA [value] (set jcell_GL_SRC1_ALPHA value)))

(set jstatic_GL_SRC1_RGB (fn jstatic_GL_SRC1_RGB []
  (when (= jcell_GL_SRC1_RGB :jnone) (set jcell_GL_SRC1_RGB 34177))
  jcell_GL_SRC1_RGB))
(set jsetstatic_GL_SRC1_RGB (fn jsetstatic_GL_SRC1_RGB [value] (set jcell_GL_SRC1_RGB value)))

(set jstatic_GL_SRC2_ALPHA (fn jstatic_GL_SRC2_ALPHA []
  (when (= jcell_GL_SRC2_ALPHA :jnone) (set jcell_GL_SRC2_ALPHA 34186))
  jcell_GL_SRC2_ALPHA))
(set jsetstatic_GL_SRC2_ALPHA (fn jsetstatic_GL_SRC2_ALPHA [value] (set jcell_GL_SRC2_ALPHA value)))

(set jstatic_GL_SRC2_RGB (fn jstatic_GL_SRC2_RGB []
  (when (= jcell_GL_SRC2_RGB :jnone) (set jcell_GL_SRC2_RGB 34178))
  jcell_GL_SRC2_RGB))
(set jsetstatic_GL_SRC2_RGB (fn jsetstatic_GL_SRC2_RGB [value] (set jcell_GL_SRC2_RGB value)))

(set jstatic_GL_STATIC_DRAW (fn jstatic_GL_STATIC_DRAW []
  (when (= jcell_GL_STATIC_DRAW :jnone) (set jcell_GL_STATIC_DRAW 35044))
  jcell_GL_STATIC_DRAW))
(set jsetstatic_GL_STATIC_DRAW (fn jsetstatic_GL_STATIC_DRAW [value] (set jcell_GL_STATIC_DRAW value)))

(set jstatic_GL_STENCIL_CLEAR_VALUE (fn jstatic_GL_STENCIL_CLEAR_VALUE []
  (when (= jcell_GL_STENCIL_CLEAR_VALUE :jnone) (set jcell_GL_STENCIL_CLEAR_VALUE 2961))
  jcell_GL_STENCIL_CLEAR_VALUE))
(set jsetstatic_GL_STENCIL_CLEAR_VALUE (fn jsetstatic_GL_STENCIL_CLEAR_VALUE [value] (set jcell_GL_STENCIL_CLEAR_VALUE value)))

(set jstatic_GL_STENCIL_FAIL (fn jstatic_GL_STENCIL_FAIL []
  (when (= jcell_GL_STENCIL_FAIL :jnone) (set jcell_GL_STENCIL_FAIL 2964))
  jcell_GL_STENCIL_FAIL))
(set jsetstatic_GL_STENCIL_FAIL (fn jsetstatic_GL_STENCIL_FAIL [value] (set jcell_GL_STENCIL_FAIL value)))

(set jstatic_GL_STENCIL_FUNC (fn jstatic_GL_STENCIL_FUNC []
  (when (= jcell_GL_STENCIL_FUNC :jnone) (set jcell_GL_STENCIL_FUNC 2962))
  jcell_GL_STENCIL_FUNC))
(set jsetstatic_GL_STENCIL_FUNC (fn jsetstatic_GL_STENCIL_FUNC [value] (set jcell_GL_STENCIL_FUNC value)))

(set jstatic_GL_STENCIL_PASS_DEPTH_FAIL (fn jstatic_GL_STENCIL_PASS_DEPTH_FAIL []
  (when (= jcell_GL_STENCIL_PASS_DEPTH_FAIL :jnone) (set jcell_GL_STENCIL_PASS_DEPTH_FAIL 2965))
  jcell_GL_STENCIL_PASS_DEPTH_FAIL))
(set jsetstatic_GL_STENCIL_PASS_DEPTH_FAIL (fn jsetstatic_GL_STENCIL_PASS_DEPTH_FAIL [value] (set jcell_GL_STENCIL_PASS_DEPTH_FAIL value)))

(set jstatic_GL_STENCIL_PASS_DEPTH_PASS (fn jstatic_GL_STENCIL_PASS_DEPTH_PASS []
  (when (= jcell_GL_STENCIL_PASS_DEPTH_PASS :jnone) (set jcell_GL_STENCIL_PASS_DEPTH_PASS 2966))
  jcell_GL_STENCIL_PASS_DEPTH_PASS))
(set jsetstatic_GL_STENCIL_PASS_DEPTH_PASS (fn jsetstatic_GL_STENCIL_PASS_DEPTH_PASS [value] (set jcell_GL_STENCIL_PASS_DEPTH_PASS value)))

(set jstatic_GL_STENCIL_REF (fn jstatic_GL_STENCIL_REF []
  (when (= jcell_GL_STENCIL_REF :jnone) (set jcell_GL_STENCIL_REF 2967))
  jcell_GL_STENCIL_REF))
(set jsetstatic_GL_STENCIL_REF (fn jsetstatic_GL_STENCIL_REF [value] (set jcell_GL_STENCIL_REF value)))

(set jstatic_GL_STENCIL_VALUE_MASK (fn jstatic_GL_STENCIL_VALUE_MASK []
  (when (= jcell_GL_STENCIL_VALUE_MASK :jnone) (set jcell_GL_STENCIL_VALUE_MASK 2963))
  jcell_GL_STENCIL_VALUE_MASK))
(set jsetstatic_GL_STENCIL_VALUE_MASK (fn jsetstatic_GL_STENCIL_VALUE_MASK [value] (set jcell_GL_STENCIL_VALUE_MASK value)))

(set jstatic_GL_STENCIL_WRITEMASK (fn jstatic_GL_STENCIL_WRITEMASK []
  (when (= jcell_GL_STENCIL_WRITEMASK :jnone) (set jcell_GL_STENCIL_WRITEMASK 2968))
  jcell_GL_STENCIL_WRITEMASK))
(set jsetstatic_GL_STENCIL_WRITEMASK (fn jsetstatic_GL_STENCIL_WRITEMASK [value] (set jcell_GL_STENCIL_WRITEMASK value)))

(set jstatic_GL_SUBTRACT (fn jstatic_GL_SUBTRACT []
  (when (= jcell_GL_SUBTRACT :jnone) (set jcell_GL_SUBTRACT 34023))
  jcell_GL_SUBTRACT))
(set jsetstatic_GL_SUBTRACT (fn jsetstatic_GL_SUBTRACT [value] (set jcell_GL_SUBTRACT value)))

(set jstatic_GL_TEXTURE_BINDING_2D (fn jstatic_GL_TEXTURE_BINDING_2D []
  (when (= jcell_GL_TEXTURE_BINDING_2D :jnone) (set jcell_GL_TEXTURE_BINDING_2D 32873))
  jcell_GL_TEXTURE_BINDING_2D))
(set jsetstatic_GL_TEXTURE_BINDING_2D (fn jsetstatic_GL_TEXTURE_BINDING_2D [value] (set jcell_GL_TEXTURE_BINDING_2D value)))

(set jstatic_GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING (fn jstatic_GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING []
  (when (= jcell_GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING :jnone) (set jcell_GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING 34970))
  jcell_GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING))
(set jsetstatic_GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING (fn jsetstatic_GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING [value] (set jcell_GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING value)))

(set jstatic_GL_TEXTURE_COORD_ARRAY_POINTER (fn jstatic_GL_TEXTURE_COORD_ARRAY_POINTER []
  (when (= jcell_GL_TEXTURE_COORD_ARRAY_POINTER :jnone) (set jcell_GL_TEXTURE_COORD_ARRAY_POINTER 32914))
  jcell_GL_TEXTURE_COORD_ARRAY_POINTER))
(set jsetstatic_GL_TEXTURE_COORD_ARRAY_POINTER (fn jsetstatic_GL_TEXTURE_COORD_ARRAY_POINTER [value] (set jcell_GL_TEXTURE_COORD_ARRAY_POINTER value)))

(set jstatic_GL_TEXTURE_COORD_ARRAY_SIZE (fn jstatic_GL_TEXTURE_COORD_ARRAY_SIZE []
  (when (= jcell_GL_TEXTURE_COORD_ARRAY_SIZE :jnone) (set jcell_GL_TEXTURE_COORD_ARRAY_SIZE 32904))
  jcell_GL_TEXTURE_COORD_ARRAY_SIZE))
(set jsetstatic_GL_TEXTURE_COORD_ARRAY_SIZE (fn jsetstatic_GL_TEXTURE_COORD_ARRAY_SIZE [value] (set jcell_GL_TEXTURE_COORD_ARRAY_SIZE value)))

(set jstatic_GL_TEXTURE_COORD_ARRAY_STRIDE (fn jstatic_GL_TEXTURE_COORD_ARRAY_STRIDE []
  (when (= jcell_GL_TEXTURE_COORD_ARRAY_STRIDE :jnone) (set jcell_GL_TEXTURE_COORD_ARRAY_STRIDE 32906))
  jcell_GL_TEXTURE_COORD_ARRAY_STRIDE))
(set jsetstatic_GL_TEXTURE_COORD_ARRAY_STRIDE (fn jsetstatic_GL_TEXTURE_COORD_ARRAY_STRIDE [value] (set jcell_GL_TEXTURE_COORD_ARRAY_STRIDE value)))

(set jstatic_GL_TEXTURE_COORD_ARRAY_TYPE (fn jstatic_GL_TEXTURE_COORD_ARRAY_TYPE []
  (when (= jcell_GL_TEXTURE_COORD_ARRAY_TYPE :jnone) (set jcell_GL_TEXTURE_COORD_ARRAY_TYPE 32905))
  jcell_GL_TEXTURE_COORD_ARRAY_TYPE))
(set jsetstatic_GL_TEXTURE_COORD_ARRAY_TYPE (fn jsetstatic_GL_TEXTURE_COORD_ARRAY_TYPE [value] (set jcell_GL_TEXTURE_COORD_ARRAY_TYPE value)))

(set jstatic_GL_TEXTURE_MATRIX (fn jstatic_GL_TEXTURE_MATRIX []
  (when (= jcell_GL_TEXTURE_MATRIX :jnone) (set jcell_GL_TEXTURE_MATRIX 2984))
  jcell_GL_TEXTURE_MATRIX))
(set jsetstatic_GL_TEXTURE_MATRIX (fn jsetstatic_GL_TEXTURE_MATRIX [value] (set jcell_GL_TEXTURE_MATRIX value)))

(set jstatic_GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OES (fn jstatic_GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OES []
  (when (= jcell_GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OES :jnone) (set jcell_GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OES 35215))
  jcell_GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OES))
(set jsetstatic_GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OES (fn jsetstatic_GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OES [value] (set jcell_GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OES value)))

(set jstatic_GL_TEXTURE_STACK_DEPTH (fn jstatic_GL_TEXTURE_STACK_DEPTH []
  (when (= jcell_GL_TEXTURE_STACK_DEPTH :jnone) (set jcell_GL_TEXTURE_STACK_DEPTH 2981))
  jcell_GL_TEXTURE_STACK_DEPTH))
(set jsetstatic_GL_TEXTURE_STACK_DEPTH (fn jsetstatic_GL_TEXTURE_STACK_DEPTH [value] (set jcell_GL_TEXTURE_STACK_DEPTH value)))

(set jstatic_GL_VERTEX_ARRAY_BUFFER_BINDING (fn jstatic_GL_VERTEX_ARRAY_BUFFER_BINDING []
  (when (= jcell_GL_VERTEX_ARRAY_BUFFER_BINDING :jnone) (set jcell_GL_VERTEX_ARRAY_BUFFER_BINDING 34966))
  jcell_GL_VERTEX_ARRAY_BUFFER_BINDING))
(set jsetstatic_GL_VERTEX_ARRAY_BUFFER_BINDING (fn jsetstatic_GL_VERTEX_ARRAY_BUFFER_BINDING [value] (set jcell_GL_VERTEX_ARRAY_BUFFER_BINDING value)))

(set jstatic_GL_VERTEX_ARRAY_POINTER (fn jstatic_GL_VERTEX_ARRAY_POINTER []
  (when (= jcell_GL_VERTEX_ARRAY_POINTER :jnone) (set jcell_GL_VERTEX_ARRAY_POINTER 32910))
  jcell_GL_VERTEX_ARRAY_POINTER))
(set jsetstatic_GL_VERTEX_ARRAY_POINTER (fn jsetstatic_GL_VERTEX_ARRAY_POINTER [value] (set jcell_GL_VERTEX_ARRAY_POINTER value)))

(set jstatic_GL_VERTEX_ARRAY_SIZE (fn jstatic_GL_VERTEX_ARRAY_SIZE []
  (when (= jcell_GL_VERTEX_ARRAY_SIZE :jnone) (set jcell_GL_VERTEX_ARRAY_SIZE 32890))
  jcell_GL_VERTEX_ARRAY_SIZE))
(set jsetstatic_GL_VERTEX_ARRAY_SIZE (fn jsetstatic_GL_VERTEX_ARRAY_SIZE [value] (set jcell_GL_VERTEX_ARRAY_SIZE value)))

(set jstatic_GL_VERTEX_ARRAY_STRIDE (fn jstatic_GL_VERTEX_ARRAY_STRIDE []
  (when (= jcell_GL_VERTEX_ARRAY_STRIDE :jnone) (set jcell_GL_VERTEX_ARRAY_STRIDE 32892))
  jcell_GL_VERTEX_ARRAY_STRIDE))
(set jsetstatic_GL_VERTEX_ARRAY_STRIDE (fn jsetstatic_GL_VERTEX_ARRAY_STRIDE [value] (set jcell_GL_VERTEX_ARRAY_STRIDE value)))

(set jstatic_GL_VERTEX_ARRAY_TYPE (fn jstatic_GL_VERTEX_ARRAY_TYPE []
  (when (= jcell_GL_VERTEX_ARRAY_TYPE :jnone) (set jcell_GL_VERTEX_ARRAY_TYPE 32891))
  jcell_GL_VERTEX_ARRAY_TYPE))
(set jsetstatic_GL_VERTEX_ARRAY_TYPE (fn jsetstatic_GL_VERTEX_ARRAY_TYPE [value] (set jcell_GL_VERTEX_ARRAY_TYPE value)))

(set jstatic_GL_VIEWPORT (fn jstatic_GL_VIEWPORT []
  (when (= jcell_GL_VIEWPORT :jnone) (set jcell_GL_VIEWPORT 2978))
  jcell_GL_VIEWPORT))
(set jsetstatic_GL_VIEWPORT (fn jsetstatic_GL_VIEWPORT [value] (set jcell_GL_VIEWPORT value)))

(set jstatic_GL_WRITE_ONLY (fn jstatic_GL_WRITE_ONLY []
  (when (= jcell_GL_WRITE_ONLY :jnone) (set jcell_GL_WRITE_ONLY 35001))
  jcell_GL_WRITE_ONLY))
(set jsetstatic_GL_WRITE_ONLY (fn jsetstatic_GL_WRITE_ONLY [value] (set jcell_GL_WRITE_ONLY value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "GL11"} jproto))
    this))

    
(set jm_glBindBuffer (fn jm_glBindBuffer [this _target _buffer]
    (error (JR/newException "AbstractMethodError" "glBindBuffer"))))
    
(set jm_glBufferData (fn jm_glBufferData [this _target _size _data _usage]
    (error (JR/newException "AbstractMethodError" "glBufferData"))))
    
(set jm_glBufferSubData (fn jm_glBufferSubData [this _target _offset _size _data]
    (error (JR/newException "AbstractMethodError" "glBufferSubData"))))
    
(set jm_glClipPlanef_3 (fn jm_glClipPlanef_3 [this _plane _equation _offset]
    (error (JR/newException "AbstractMethodError" "glClipPlanef"))))
    
(set jm_glClipPlanef_2 (fn jm_glClipPlanef_2 [this _plane _equation]
    (error (JR/newException "AbstractMethodError" "glClipPlanef"))))
    
(set jm_glColor4ub (fn jm_glColor4ub [this _red _green _blue _alpha]
    (error (JR/newException "AbstractMethodError" "glColor4ub"))))
    
(set jm_glColorPointer (fn jm_glColorPointer [this _size _type _stride _offset]
    (error (JR/newException "AbstractMethodError" "glColorPointer"))))
    
(set jm_glDeleteBuffers_3 (fn jm_glDeleteBuffers_3 [this _n _buffers _offset]
    (error (JR/newException "AbstractMethodError" "glDeleteBuffers"))))
    
(set jm_glDeleteBuffers_2 (fn jm_glDeleteBuffers_2 [this _n _buffers]
    (error (JR/newException "AbstractMethodError" "glDeleteBuffers"))))
    
(set jm_glDrawElements (fn jm_glDrawElements [this _mode _count _type _offset]
    (error (JR/newException "AbstractMethodError" "glDrawElements"))))
    
(set jm_glGenBuffers_3 (fn jm_glGenBuffers_3 [this _n _buffers _offset]
    (error (JR/newException "AbstractMethodError" "glGenBuffers"))))
    
(set jm_glGenBuffers_2 (fn jm_glGenBuffers_2 [this _n _buffers]
    (error (JR/newException "AbstractMethodError" "glGenBuffers"))))
    
(set jm_glGetBufferParameteriv_4 (fn jm_glGetBufferParameteriv_4 [this _target _pname _params _offset]
    (error (JR/newException "AbstractMethodError" "glGetBufferParameteriv"))))
    
(set jm_glGetBufferParameteriv_3 (fn jm_glGetBufferParameteriv_3 [this _target _pname _params]
    (error (JR/newException "AbstractMethodError" "glGetBufferParameteriv"))))
    
(set jm_glGetClipPlanef_3 (fn jm_glGetClipPlanef_3 [this _pname _eqn _offset]
    (error (JR/newException "AbstractMethodError" "glGetClipPlanef"))))
    
(set jm_glGetClipPlanef_2 (fn jm_glGetClipPlanef_2 [this _pname _eqn]
    (error (JR/newException "AbstractMethodError" "glGetClipPlanef"))))
    
(set jm_glGetFloatv_3 (fn jm_glGetFloatv_3 [this _pname _params _offset]
    (error (JR/newException "AbstractMethodError" "glGetFloatv"))))
    
(set jm_glGetFloatv_2 (fn jm_glGetFloatv_2 [this _pname _params]
    (error (JR/newException "AbstractMethodError" "glGetFloatv"))))
    
(set jm_glGetLightfv_4 (fn jm_glGetLightfv_4 [this _light _pname _params _offset]
    (error (JR/newException "AbstractMethodError" "glGetLightfv"))))
    
(set jm_glGetLightfv_3 (fn jm_glGetLightfv_3 [this _light _pname _params]
    (error (JR/newException "AbstractMethodError" "glGetLightfv"))))
    
(set jm_glGetMaterialfv_4 (fn jm_glGetMaterialfv_4 [this _face _pname _params _offset]
    (error (JR/newException "AbstractMethodError" "glGetMaterialfv"))))
    
(set jm_glGetMaterialfv_3 (fn jm_glGetMaterialfv_3 [this _face _pname _params]
    (error (JR/newException "AbstractMethodError" "glGetMaterialfv"))))
    
(set jm_glGetTexEnviv_4 (fn jm_glGetTexEnviv_4 [this _env _pname _params _offset]
    (error (JR/newException "AbstractMethodError" "glGetTexEnviv"))))
    
(set jm_glGetTexEnviv_3 (fn jm_glGetTexEnviv_3 [this _env _pname _params]
    (error (JR/newException "AbstractMethodError" "glGetTexEnviv"))))
    
(set jm_glGetTexParameterfv_4 (fn jm_glGetTexParameterfv_4 [this _target _pname _params _offset]
    (error (JR/newException "AbstractMethodError" "glGetTexParameterfv"))))
    
(set jm_glGetTexParameterfv_3 (fn jm_glGetTexParameterfv_3 [this _target _pname _params]
    (error (JR/newException "AbstractMethodError" "glGetTexParameterfv"))))
    
(set jm_glGetTexParameteriv_4 (fn jm_glGetTexParameteriv_4 [this _target _pname _params _offset]
    (error (JR/newException "AbstractMethodError" "glGetTexParameteriv"))))
    
(set jm_glGetTexParameteriv_3 (fn jm_glGetTexParameteriv_3 [this _target _pname _params]
    (error (JR/newException "AbstractMethodError" "glGetTexParameteriv"))))
    
(set jm_glIsBuffer (fn jm_glIsBuffer [this _buffer]
    (error (JR/newException "AbstractMethodError" "glIsBuffer"))))
    
(set jm_glIsEnabled (fn jm_glIsEnabled [this _cap]
    (error (JR/newException "AbstractMethodError" "glIsEnabled"))))
    
(set jm_glIsTexture (fn jm_glIsTexture [this _texture]
    (error (JR/newException "AbstractMethodError" "glIsTexture"))))
    
(set jm_glNormalPointer (fn jm_glNormalPointer [this _type _stride _offset]
    (error (JR/newException "AbstractMethodError" "glNormalPointer"))))
    
(set jm_glPointParameterf (fn jm_glPointParameterf [this _pname _param]
    (error (JR/newException "AbstractMethodError" "glPointParameterf"))))
    
(set jm_glPointParameterfv_3 (fn jm_glPointParameterfv_3 [this _pname _params _offset]
    (error (JR/newException "AbstractMethodError" "glPointParameterfv"))))
    
(set jm_glPointParameterfv_2 (fn jm_glPointParameterfv_2 [this _pname _params]
    (error (JR/newException "AbstractMethodError" "glPointParameterfv"))))
    
(set jm_glTexCoordPointer (fn jm_glTexCoordPointer [this _size _type _stride _offset]
    (error (JR/newException "AbstractMethodError" "glTexCoordPointer"))))
    
(set jm_glTexEnvi (fn jm_glTexEnvi [this _target _pname _param]
    (error (JR/newException "AbstractMethodError" "glTexEnvi"))))
    
(set jm_glTexEnviv_4 (fn jm_glTexEnviv_4 [this _target _pname _params _offset]
    (error (JR/newException "AbstractMethodError" "glTexEnviv"))))
    
(set jm_glTexEnviv_3 (fn jm_glTexEnviv_3 [this _target _pname _params]
    (error (JR/newException "AbstractMethodError" "glTexEnviv"))))
    
(set jm_glTexParameterfv_4 (fn jm_glTexParameterfv_4 [this _target _pname _params _offset]
    (error (JR/newException "AbstractMethodError" "glTexParameterfv"))))
    
(set jm_glTexParameterfv_3 (fn jm_glTexParameterfv_3 [this _target _pname _params]
    (error (JR/newException "AbstractMethodError" "glTexParameterfv"))))
    
(set jm_glTexParameteriv_4 (fn jm_glTexParameteriv_4 [this _target _pname _params _offset]
    (error (JR/newException "AbstractMethodError" "glTexParameteriv"))))
    
(set jm_glTexParameteriv_3 (fn jm_glTexParameteriv_3 [this _target _pname _params]
    (error (JR/newException "AbstractMethodError" "glTexParameteriv"))))
    
(set jm_glVertexPointer (fn jm_glVertexPointer [this _size _type _stride _offset]
    (error (JR/newException "AbstractMethodError" "glVertexPointer"))))

(set jproto @{:jm_glBindBuffer jm_glBindBuffer :jm_glBufferData jm_glBufferData :jm_glBufferSubData jm_glBufferSubData :jm_glClipPlanef_3 jm_glClipPlanef_3 :jm_glClipPlanef_2 jm_glClipPlanef_2 :jm_glColor4ub jm_glColor4ub :jm_glColorPointer jm_glColorPointer :jm_glDeleteBuffers_3 jm_glDeleteBuffers_3 :jm_glDeleteBuffers_2 jm_glDeleteBuffers_2 :jm_glDrawElements jm_glDrawElements :jm_glGenBuffers_3 jm_glGenBuffers_3 :jm_glGenBuffers_2 jm_glGenBuffers_2 :jm_glGetBufferParameteriv_4 jm_glGetBufferParameteriv_4 :jm_glGetBufferParameteriv_3 jm_glGetBufferParameteriv_3 :jm_glGetClipPlanef_3 jm_glGetClipPlanef_3 :jm_glGetClipPlanef_2 jm_glGetClipPlanef_2 :jm_glGetFloatv_3 jm_glGetFloatv_3 :jm_glGetFloatv_2 jm_glGetFloatv_2 :jm_glGetLightfv_4 jm_glGetLightfv_4 :jm_glGetLightfv_3 jm_glGetLightfv_3 :jm_glGetMaterialfv_4 jm_glGetMaterialfv_4 :jm_glGetMaterialfv_3 jm_glGetMaterialfv_3 :jm_glGetTexEnviv_4 jm_glGetTexEnviv_4 :jm_glGetTexEnviv_3 jm_glGetTexEnviv_3 :jm_glGetTexParameterfv_4 jm_glGetTexParameterfv_4 :jm_glGetTexParameterfv_3 jm_glGetTexParameterfv_3 :jm_glGetTexParameteriv_4 jm_glGetTexParameteriv_4 :jm_glGetTexParameteriv_3 jm_glGetTexParameteriv_3 :jm_glIsBuffer jm_glIsBuffer :jm_glIsEnabled jm_glIsEnabled :jm_glIsTexture jm_glIsTexture :jm_glNormalPointer jm_glNormalPointer :jm_glPointParameterf jm_glPointParameterf :jm_glPointParameterfv_3 jm_glPointParameterfv_3 :jm_glPointParameterfv_2 jm_glPointParameterfv_2 :jm_glTexCoordPointer jm_glTexCoordPointer :jm_glTexEnvi jm_glTexEnvi :jm_glTexEnviv_4 jm_glTexEnviv_4 :jm_glTexEnviv_3 jm_glTexEnviv_3 :jm_glTexParameterfv_4 jm_glTexParameterfv_4 :jm_glTexParameterfv_3 jm_glTexParameterfv_3 :jm_glTexParameteriv_4 jm_glTexParameteriv_4 :jm_glTexParameteriv_3 jm_glTexParameteriv_3 :jm_glVertexPointer jm_glVertexPointer})


