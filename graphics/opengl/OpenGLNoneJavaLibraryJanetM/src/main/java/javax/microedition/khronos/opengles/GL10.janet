# Generated Code Do Not Modify
# package javax.microedition.khronos.opengles

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../java/nio/Buffer :as Buffer)
(import ../../../../java/nio/FloatBuffer :as FloatBuffer)
(import ../../../../java/nio/IntBuffer :as IntBuffer)
(import ./GL :as GL)

# Java class GL10
(var jproto nil)
(var jcell_GL_ADD :jnone)
(var jstatic_GL_ADD nil)
(var jsetstatic_GL_ADD nil)
(var jcell_GL_ALIASED_LINE_WIDTH_RANGE :jnone)
(var jstatic_GL_ALIASED_LINE_WIDTH_RANGE nil)
(var jsetstatic_GL_ALIASED_LINE_WIDTH_RANGE nil)
(var jcell_GL_ALIASED_POINT_SIZE_RANGE :jnone)
(var jstatic_GL_ALIASED_POINT_SIZE_RANGE nil)
(var jsetstatic_GL_ALIASED_POINT_SIZE_RANGE nil)
(var jcell_GL_ALPHA :jnone)
(var jstatic_GL_ALPHA nil)
(var jsetstatic_GL_ALPHA nil)
(var jcell_GL_ALPHA_BITS :jnone)
(var jstatic_GL_ALPHA_BITS nil)
(var jsetstatic_GL_ALPHA_BITS nil)
(var jcell_GL_ALPHA_TEST :jnone)
(var jstatic_GL_ALPHA_TEST nil)
(var jsetstatic_GL_ALPHA_TEST nil)
(var jcell_GL_ALWAYS :jnone)
(var jstatic_GL_ALWAYS nil)
(var jsetstatic_GL_ALWAYS nil)
(var jcell_GL_AMBIENT :jnone)
(var jstatic_GL_AMBIENT nil)
(var jsetstatic_GL_AMBIENT nil)
(var jcell_GL_AMBIENT_AND_DIFFUSE :jnone)
(var jstatic_GL_AMBIENT_AND_DIFFUSE nil)
(var jsetstatic_GL_AMBIENT_AND_DIFFUSE nil)
(var jcell_GL_AND :jnone)
(var jstatic_GL_AND nil)
(var jsetstatic_GL_AND nil)
(var jcell_GL_AND_INVERTED :jnone)
(var jstatic_GL_AND_INVERTED nil)
(var jsetstatic_GL_AND_INVERTED nil)
(var jcell_GL_AND_REVERSE :jnone)
(var jstatic_GL_AND_REVERSE nil)
(var jsetstatic_GL_AND_REVERSE nil)
(var jcell_GL_BACK :jnone)
(var jstatic_GL_BACK nil)
(var jsetstatic_GL_BACK nil)
(var jcell_GL_BLEND :jnone)
(var jstatic_GL_BLEND nil)
(var jsetstatic_GL_BLEND nil)
(var jcell_GL_BLUE_BITS :jnone)
(var jstatic_GL_BLUE_BITS nil)
(var jsetstatic_GL_BLUE_BITS nil)
(var jcell_GL_BYTE :jnone)
(var jstatic_GL_BYTE nil)
(var jsetstatic_GL_BYTE nil)
(var jcell_GL_CCW :jnone)
(var jstatic_GL_CCW nil)
(var jsetstatic_GL_CCW nil)
(var jcell_GL_CLAMP_TO_EDGE :jnone)
(var jstatic_GL_CLAMP_TO_EDGE nil)
(var jsetstatic_GL_CLAMP_TO_EDGE nil)
(var jcell_GL_CLEAR :jnone)
(var jstatic_GL_CLEAR nil)
(var jsetstatic_GL_CLEAR nil)
(var jcell_GL_COLOR_ARRAY :jnone)
(var jstatic_GL_COLOR_ARRAY nil)
(var jsetstatic_GL_COLOR_ARRAY nil)
(var jcell_GL_COLOR_BUFFER_BIT :jnone)
(var jstatic_GL_COLOR_BUFFER_BIT nil)
(var jsetstatic_GL_COLOR_BUFFER_BIT nil)
(var jcell_GL_COLOR_LOGIC_OP :jnone)
(var jstatic_GL_COLOR_LOGIC_OP nil)
(var jsetstatic_GL_COLOR_LOGIC_OP nil)
(var jcell_GL_COLOR_MATERIAL :jnone)
(var jstatic_GL_COLOR_MATERIAL nil)
(var jsetstatic_GL_COLOR_MATERIAL nil)
(var jcell_GL_COMPRESSED_TEXTURE_FORMATS :jnone)
(var jstatic_GL_COMPRESSED_TEXTURE_FORMATS nil)
(var jsetstatic_GL_COMPRESSED_TEXTURE_FORMATS nil)
(var jcell_GL_CONSTANT_ATTENUATION :jnone)
(var jstatic_GL_CONSTANT_ATTENUATION nil)
(var jsetstatic_GL_CONSTANT_ATTENUATION nil)
(var jcell_GL_COPY :jnone)
(var jstatic_GL_COPY nil)
(var jsetstatic_GL_COPY nil)
(var jcell_GL_COPY_INVERTED :jnone)
(var jstatic_GL_COPY_INVERTED nil)
(var jsetstatic_GL_COPY_INVERTED nil)
(var jcell_GL_CULL_FACE :jnone)
(var jstatic_GL_CULL_FACE nil)
(var jsetstatic_GL_CULL_FACE nil)
(var jcell_GL_CW :jnone)
(var jstatic_GL_CW nil)
(var jsetstatic_GL_CW nil)
(var jcell_GL_DECAL :jnone)
(var jstatic_GL_DECAL nil)
(var jsetstatic_GL_DECAL nil)
(var jcell_GL_DECR :jnone)
(var jstatic_GL_DECR nil)
(var jsetstatic_GL_DECR nil)
(var jcell_GL_DEPTH_BITS :jnone)
(var jstatic_GL_DEPTH_BITS nil)
(var jsetstatic_GL_DEPTH_BITS nil)
(var jcell_GL_DEPTH_BUFFER_BIT :jnone)
(var jstatic_GL_DEPTH_BUFFER_BIT nil)
(var jsetstatic_GL_DEPTH_BUFFER_BIT nil)
(var jcell_GL_DEPTH_TEST :jnone)
(var jstatic_GL_DEPTH_TEST nil)
(var jsetstatic_GL_DEPTH_TEST nil)
(var jcell_GL_DIFFUSE :jnone)
(var jstatic_GL_DIFFUSE nil)
(var jsetstatic_GL_DIFFUSE nil)
(var jcell_GL_DITHER :jnone)
(var jstatic_GL_DITHER nil)
(var jsetstatic_GL_DITHER nil)
(var jcell_GL_DONT_CARE :jnone)
(var jstatic_GL_DONT_CARE nil)
(var jsetstatic_GL_DONT_CARE nil)
(var jcell_GL_DST_ALPHA :jnone)
(var jstatic_GL_DST_ALPHA nil)
(var jsetstatic_GL_DST_ALPHA nil)
(var jcell_GL_DST_COLOR :jnone)
(var jstatic_GL_DST_COLOR nil)
(var jsetstatic_GL_DST_COLOR nil)
(var jcell_GL_EMISSION :jnone)
(var jstatic_GL_EMISSION nil)
(var jsetstatic_GL_EMISSION nil)
(var jcell_GL_EQUAL :jnone)
(var jstatic_GL_EQUAL nil)
(var jsetstatic_GL_EQUAL nil)
(var jcell_GL_EQUIV :jnone)
(var jstatic_GL_EQUIV nil)
(var jsetstatic_GL_EQUIV nil)
(var jcell_GL_EXP :jnone)
(var jstatic_GL_EXP nil)
(var jsetstatic_GL_EXP nil)
(var jcell_GL_EXP2 :jnone)
(var jstatic_GL_EXP2 nil)
(var jsetstatic_GL_EXP2 nil)
(var jcell_GL_EXTENSIONS :jnone)
(var jstatic_GL_EXTENSIONS nil)
(var jsetstatic_GL_EXTENSIONS nil)
(var jcell_GL_FALSE :jnone)
(var jstatic_GL_FALSE nil)
(var jsetstatic_GL_FALSE nil)
(var jcell_GL_FASTEST :jnone)
(var jstatic_GL_FASTEST nil)
(var jsetstatic_GL_FASTEST nil)
(var jcell_GL_FIXED :jnone)
(var jstatic_GL_FIXED nil)
(var jsetstatic_GL_FIXED nil)
(var jcell_GL_FLAT :jnone)
(var jstatic_GL_FLAT nil)
(var jsetstatic_GL_FLAT nil)
(var jcell_GL_FLOAT :jnone)
(var jstatic_GL_FLOAT nil)
(var jsetstatic_GL_FLOAT nil)
(var jcell_GL_FOG :jnone)
(var jstatic_GL_FOG nil)
(var jsetstatic_GL_FOG nil)
(var jcell_GL_FOG_COLOR :jnone)
(var jstatic_GL_FOG_COLOR nil)
(var jsetstatic_GL_FOG_COLOR nil)
(var jcell_GL_FOG_DENSITY :jnone)
(var jstatic_GL_FOG_DENSITY nil)
(var jsetstatic_GL_FOG_DENSITY nil)
(var jcell_GL_FOG_END :jnone)
(var jstatic_GL_FOG_END nil)
(var jsetstatic_GL_FOG_END nil)
(var jcell_GL_FOG_HINT :jnone)
(var jstatic_GL_FOG_HINT nil)
(var jsetstatic_GL_FOG_HINT nil)
(var jcell_GL_FOG_MODE :jnone)
(var jstatic_GL_FOG_MODE nil)
(var jsetstatic_GL_FOG_MODE nil)
(var jcell_GL_FOG_START :jnone)
(var jstatic_GL_FOG_START nil)
(var jsetstatic_GL_FOG_START nil)
(var jcell_GL_FRONT :jnone)
(var jstatic_GL_FRONT nil)
(var jsetstatic_GL_FRONT nil)
(var jcell_GL_FRONT_AND_BACK :jnone)
(var jstatic_GL_FRONT_AND_BACK nil)
(var jsetstatic_GL_FRONT_AND_BACK nil)
(var jcell_GL_GEQUAL :jnone)
(var jstatic_GL_GEQUAL nil)
(var jsetstatic_GL_GEQUAL nil)
(var jcell_GL_GREATER :jnone)
(var jstatic_GL_GREATER nil)
(var jsetstatic_GL_GREATER nil)
(var jcell_GL_GREEN_BITS :jnone)
(var jstatic_GL_GREEN_BITS nil)
(var jsetstatic_GL_GREEN_BITS nil)
(var jcell_GL_IMPLEMENTATION_COLOR_READ_FORMAT_OES :jnone)
(var jstatic_GL_IMPLEMENTATION_COLOR_READ_FORMAT_OES nil)
(var jsetstatic_GL_IMPLEMENTATION_COLOR_READ_FORMAT_OES nil)
(var jcell_GL_IMPLEMENTATION_COLOR_READ_TYPE_OES :jnone)
(var jstatic_GL_IMPLEMENTATION_COLOR_READ_TYPE_OES nil)
(var jsetstatic_GL_IMPLEMENTATION_COLOR_READ_TYPE_OES nil)
(var jcell_GL_INCR :jnone)
(var jstatic_GL_INCR nil)
(var jsetstatic_GL_INCR nil)
(var jcell_GL_INVALID_ENUM :jnone)
(var jstatic_GL_INVALID_ENUM nil)
(var jsetstatic_GL_INVALID_ENUM nil)
(var jcell_GL_INVALID_OPERATION :jnone)
(var jstatic_GL_INVALID_OPERATION nil)
(var jsetstatic_GL_INVALID_OPERATION nil)
(var jcell_GL_INVALID_VALUE :jnone)
(var jstatic_GL_INVALID_VALUE nil)
(var jsetstatic_GL_INVALID_VALUE nil)
(var jcell_GL_INVERT :jnone)
(var jstatic_GL_INVERT nil)
(var jsetstatic_GL_INVERT nil)
(var jcell_GL_KEEP :jnone)
(var jstatic_GL_KEEP nil)
(var jsetstatic_GL_KEEP nil)
(var jcell_GL_LEQUAL :jnone)
(var jstatic_GL_LEQUAL nil)
(var jsetstatic_GL_LEQUAL nil)
(var jcell_GL_LESS :jnone)
(var jstatic_GL_LESS nil)
(var jsetstatic_GL_LESS nil)
(var jcell_GL_LIGHT_MODEL_AMBIENT :jnone)
(var jstatic_GL_LIGHT_MODEL_AMBIENT nil)
(var jsetstatic_GL_LIGHT_MODEL_AMBIENT nil)
(var jcell_GL_LIGHT_MODEL_TWO_SIDE :jnone)
(var jstatic_GL_LIGHT_MODEL_TWO_SIDE nil)
(var jsetstatic_GL_LIGHT_MODEL_TWO_SIDE nil)
(var jcell_GL_LIGHT0 :jnone)
(var jstatic_GL_LIGHT0 nil)
(var jsetstatic_GL_LIGHT0 nil)
(var jcell_GL_LIGHT1 :jnone)
(var jstatic_GL_LIGHT1 nil)
(var jsetstatic_GL_LIGHT1 nil)
(var jcell_GL_LIGHT2 :jnone)
(var jstatic_GL_LIGHT2 nil)
(var jsetstatic_GL_LIGHT2 nil)
(var jcell_GL_LIGHT3 :jnone)
(var jstatic_GL_LIGHT3 nil)
(var jsetstatic_GL_LIGHT3 nil)
(var jcell_GL_LIGHT4 :jnone)
(var jstatic_GL_LIGHT4 nil)
(var jsetstatic_GL_LIGHT4 nil)
(var jcell_GL_LIGHT5 :jnone)
(var jstatic_GL_LIGHT5 nil)
(var jsetstatic_GL_LIGHT5 nil)
(var jcell_GL_LIGHT6 :jnone)
(var jstatic_GL_LIGHT6 nil)
(var jsetstatic_GL_LIGHT6 nil)
(var jcell_GL_LIGHT7 :jnone)
(var jstatic_GL_LIGHT7 nil)
(var jsetstatic_GL_LIGHT7 nil)
(var jcell_GL_LIGHTING :jnone)
(var jstatic_GL_LIGHTING nil)
(var jsetstatic_GL_LIGHTING nil)
(var jcell_GL_LINE_LOOP :jnone)
(var jstatic_GL_LINE_LOOP nil)
(var jsetstatic_GL_LINE_LOOP nil)
(var jcell_GL_LINE_SMOOTH :jnone)
(var jstatic_GL_LINE_SMOOTH nil)
(var jsetstatic_GL_LINE_SMOOTH nil)
(var jcell_GL_LINE_SMOOTH_HINT :jnone)
(var jstatic_GL_LINE_SMOOTH_HINT nil)
(var jsetstatic_GL_LINE_SMOOTH_HINT nil)
(var jcell_GL_LINE_STRIP :jnone)
(var jstatic_GL_LINE_STRIP nil)
(var jsetstatic_GL_LINE_STRIP nil)
(var jcell_GL_LINEAR :jnone)
(var jstatic_GL_LINEAR nil)
(var jsetstatic_GL_LINEAR nil)
(var jcell_GL_LINEAR_ATTENUATION :jnone)
(var jstatic_GL_LINEAR_ATTENUATION nil)
(var jsetstatic_GL_LINEAR_ATTENUATION nil)
(var jcell_GL_LINEAR_MIPMAP_LINEAR :jnone)
(var jstatic_GL_LINEAR_MIPMAP_LINEAR nil)
(var jsetstatic_GL_LINEAR_MIPMAP_LINEAR nil)
(var jcell_GL_LINEAR_MIPMAP_NEAREST :jnone)
(var jstatic_GL_LINEAR_MIPMAP_NEAREST nil)
(var jsetstatic_GL_LINEAR_MIPMAP_NEAREST nil)
(var jcell_GL_LINES :jnone)
(var jstatic_GL_LINES nil)
(var jsetstatic_GL_LINES nil)
(var jcell_GL_LUMINANCE :jnone)
(var jstatic_GL_LUMINANCE nil)
(var jsetstatic_GL_LUMINANCE nil)
(var jcell_GL_LUMINANCE_ALPHA :jnone)
(var jstatic_GL_LUMINANCE_ALPHA nil)
(var jsetstatic_GL_LUMINANCE_ALPHA nil)
(var jcell_GL_MAX_ELEMENTS_INDICES :jnone)
(var jstatic_GL_MAX_ELEMENTS_INDICES nil)
(var jsetstatic_GL_MAX_ELEMENTS_INDICES nil)
(var jcell_GL_MAX_ELEMENTS_VERTICES :jnone)
(var jstatic_GL_MAX_ELEMENTS_VERTICES nil)
(var jsetstatic_GL_MAX_ELEMENTS_VERTICES nil)
(var jcell_GL_MAX_LIGHTS :jnone)
(var jstatic_GL_MAX_LIGHTS nil)
(var jsetstatic_GL_MAX_LIGHTS nil)
(var jcell_GL_MAX_MODELVIEW_STACK_DEPTH :jnone)
(var jstatic_GL_MAX_MODELVIEW_STACK_DEPTH nil)
(var jsetstatic_GL_MAX_MODELVIEW_STACK_DEPTH nil)
(var jcell_GL_MAX_PROJECTION_STACK_DEPTH :jnone)
(var jstatic_GL_MAX_PROJECTION_STACK_DEPTH nil)
(var jsetstatic_GL_MAX_PROJECTION_STACK_DEPTH nil)
(var jcell_GL_MAX_TEXTURE_SIZE :jnone)
(var jstatic_GL_MAX_TEXTURE_SIZE nil)
(var jsetstatic_GL_MAX_TEXTURE_SIZE nil)
(var jcell_GL_MAX_TEXTURE_STACK_DEPTH :jnone)
(var jstatic_GL_MAX_TEXTURE_STACK_DEPTH nil)
(var jsetstatic_GL_MAX_TEXTURE_STACK_DEPTH nil)
(var jcell_GL_MAX_TEXTURE_UNITS :jnone)
(var jstatic_GL_MAX_TEXTURE_UNITS nil)
(var jsetstatic_GL_MAX_TEXTURE_UNITS nil)
(var jcell_GL_MAX_VIEWPORT_DIMS :jnone)
(var jstatic_GL_MAX_VIEWPORT_DIMS nil)
(var jsetstatic_GL_MAX_VIEWPORT_DIMS nil)
(var jcell_GL_MODELVIEW :jnone)
(var jstatic_GL_MODELVIEW nil)
(var jsetstatic_GL_MODELVIEW nil)
(var jcell_GL_MODULATE :jnone)
(var jstatic_GL_MODULATE nil)
(var jsetstatic_GL_MODULATE nil)
(var jcell_GL_MULTISAMPLE :jnone)
(var jstatic_GL_MULTISAMPLE nil)
(var jsetstatic_GL_MULTISAMPLE nil)
(var jcell_GL_NAND :jnone)
(var jstatic_GL_NAND nil)
(var jsetstatic_GL_NAND nil)
(var jcell_GL_NEAREST :jnone)
(var jstatic_GL_NEAREST nil)
(var jsetstatic_GL_NEAREST nil)
(var jcell_GL_NEAREST_MIPMAP_LINEAR :jnone)
(var jstatic_GL_NEAREST_MIPMAP_LINEAR nil)
(var jsetstatic_GL_NEAREST_MIPMAP_LINEAR nil)
(var jcell_GL_NEAREST_MIPMAP_NEAREST :jnone)
(var jstatic_GL_NEAREST_MIPMAP_NEAREST nil)
(var jsetstatic_GL_NEAREST_MIPMAP_NEAREST nil)
(var jcell_GL_NEVER :jnone)
(var jstatic_GL_NEVER nil)
(var jsetstatic_GL_NEVER nil)
(var jcell_GL_NICEST :jnone)
(var jstatic_GL_NICEST nil)
(var jsetstatic_GL_NICEST nil)
(var jcell_GL_NO_ERROR :jnone)
(var jstatic_GL_NO_ERROR nil)
(var jsetstatic_GL_NO_ERROR nil)
(var jcell_GL_NOOP :jnone)
(var jstatic_GL_NOOP nil)
(var jsetstatic_GL_NOOP nil)
(var jcell_GL_NOR :jnone)
(var jstatic_GL_NOR nil)
(var jsetstatic_GL_NOR nil)
(var jcell_GL_NORMAL_ARRAY :jnone)
(var jstatic_GL_NORMAL_ARRAY nil)
(var jsetstatic_GL_NORMAL_ARRAY nil)
(var jcell_GL_NORMALIZE :jnone)
(var jstatic_GL_NORMALIZE nil)
(var jsetstatic_GL_NORMALIZE nil)
(var jcell_GL_NOTEQUAL :jnone)
(var jstatic_GL_NOTEQUAL nil)
(var jsetstatic_GL_NOTEQUAL nil)
(var jcell_GL_NUM_COMPRESSED_TEXTURE_FORMATS :jnone)
(var jstatic_GL_NUM_COMPRESSED_TEXTURE_FORMATS nil)
(var jsetstatic_GL_NUM_COMPRESSED_TEXTURE_FORMATS nil)
(var jcell_GL_ONE :jnone)
(var jstatic_GL_ONE nil)
(var jsetstatic_GL_ONE nil)
(var jcell_GL_ONE_MINUS_DST_ALPHA :jnone)
(var jstatic_GL_ONE_MINUS_DST_ALPHA nil)
(var jsetstatic_GL_ONE_MINUS_DST_ALPHA nil)
(var jcell_GL_ONE_MINUS_DST_COLOR :jnone)
(var jstatic_GL_ONE_MINUS_DST_COLOR nil)
(var jsetstatic_GL_ONE_MINUS_DST_COLOR nil)
(var jcell_GL_ONE_MINUS_SRC_ALPHA :jnone)
(var jstatic_GL_ONE_MINUS_SRC_ALPHA nil)
(var jsetstatic_GL_ONE_MINUS_SRC_ALPHA nil)
(var jcell_GL_ONE_MINUS_SRC_COLOR :jnone)
(var jstatic_GL_ONE_MINUS_SRC_COLOR nil)
(var jsetstatic_GL_ONE_MINUS_SRC_COLOR nil)
(var jcell_GL_OR :jnone)
(var jstatic_GL_OR nil)
(var jsetstatic_GL_OR nil)
(var jcell_GL_OR_INVERTED :jnone)
(var jstatic_GL_OR_INVERTED nil)
(var jsetstatic_GL_OR_INVERTED nil)
(var jcell_GL_OR_REVERSE :jnone)
(var jstatic_GL_OR_REVERSE nil)
(var jsetstatic_GL_OR_REVERSE nil)
(var jcell_GL_OUT_OF_MEMORY :jnone)
(var jstatic_GL_OUT_OF_MEMORY nil)
(var jsetstatic_GL_OUT_OF_MEMORY nil)
(var jcell_GL_PACK_ALIGNMENT :jnone)
(var jstatic_GL_PACK_ALIGNMENT nil)
(var jsetstatic_GL_PACK_ALIGNMENT nil)
(var jcell_GL_PALETTE4_R5_G6_B5_OES :jnone)
(var jstatic_GL_PALETTE4_R5_G6_B5_OES nil)
(var jsetstatic_GL_PALETTE4_R5_G6_B5_OES nil)
(var jcell_GL_PALETTE4_RGB5_A1_OES :jnone)
(var jstatic_GL_PALETTE4_RGB5_A1_OES nil)
(var jsetstatic_GL_PALETTE4_RGB5_A1_OES nil)
(var jcell_GL_PALETTE4_RGB8_OES :jnone)
(var jstatic_GL_PALETTE4_RGB8_OES nil)
(var jsetstatic_GL_PALETTE4_RGB8_OES nil)
(var jcell_GL_PALETTE4_RGBA4_OES :jnone)
(var jstatic_GL_PALETTE4_RGBA4_OES nil)
(var jsetstatic_GL_PALETTE4_RGBA4_OES nil)
(var jcell_GL_PALETTE4_RGBA8_OES :jnone)
(var jstatic_GL_PALETTE4_RGBA8_OES nil)
(var jsetstatic_GL_PALETTE4_RGBA8_OES nil)
(var jcell_GL_PALETTE8_R5_G6_B5_OES :jnone)
(var jstatic_GL_PALETTE8_R5_G6_B5_OES nil)
(var jsetstatic_GL_PALETTE8_R5_G6_B5_OES nil)
(var jcell_GL_PALETTE8_RGB5_A1_OES :jnone)
(var jstatic_GL_PALETTE8_RGB5_A1_OES nil)
(var jsetstatic_GL_PALETTE8_RGB5_A1_OES nil)
(var jcell_GL_PALETTE8_RGB8_OES :jnone)
(var jstatic_GL_PALETTE8_RGB8_OES nil)
(var jsetstatic_GL_PALETTE8_RGB8_OES nil)
(var jcell_GL_PALETTE8_RGBA4_OES :jnone)
(var jstatic_GL_PALETTE8_RGBA4_OES nil)
(var jsetstatic_GL_PALETTE8_RGBA4_OES nil)
(var jcell_GL_PALETTE8_RGBA8_OES :jnone)
(var jstatic_GL_PALETTE8_RGBA8_OES nil)
(var jsetstatic_GL_PALETTE8_RGBA8_OES nil)
(var jcell_GL_PERSPECTIVE_CORRECTION_HINT :jnone)
(var jstatic_GL_PERSPECTIVE_CORRECTION_HINT nil)
(var jsetstatic_GL_PERSPECTIVE_CORRECTION_HINT nil)
(var jcell_GL_POINT_SMOOTH :jnone)
(var jstatic_GL_POINT_SMOOTH nil)
(var jsetstatic_GL_POINT_SMOOTH nil)
(var jcell_GL_POINT_SMOOTH_HINT :jnone)
(var jstatic_GL_POINT_SMOOTH_HINT nil)
(var jsetstatic_GL_POINT_SMOOTH_HINT nil)
(var jcell_GL_POINTS :jnone)
(var jstatic_GL_POINTS nil)
(var jsetstatic_GL_POINTS nil)
(var jcell_GL_POINT_FADE_THRESHOLD_SIZE :jnone)
(var jstatic_GL_POINT_FADE_THRESHOLD_SIZE nil)
(var jsetstatic_GL_POINT_FADE_THRESHOLD_SIZE nil)
(var jcell_GL_POINT_SIZE :jnone)
(var jstatic_GL_POINT_SIZE nil)
(var jsetstatic_GL_POINT_SIZE nil)
(var jcell_GL_POLYGON_OFFSET_FILL :jnone)
(var jstatic_GL_POLYGON_OFFSET_FILL nil)
(var jsetstatic_GL_POLYGON_OFFSET_FILL nil)
(var jcell_GL_POLYGON_SMOOTH_HINT :jnone)
(var jstatic_GL_POLYGON_SMOOTH_HINT nil)
(var jsetstatic_GL_POLYGON_SMOOTH_HINT nil)
(var jcell_GL_POSITION :jnone)
(var jstatic_GL_POSITION nil)
(var jsetstatic_GL_POSITION nil)
(var jcell_GL_PROJECTION :jnone)
(var jstatic_GL_PROJECTION nil)
(var jsetstatic_GL_PROJECTION nil)
(var jcell_GL_QUADRATIC_ATTENUATION :jnone)
(var jstatic_GL_QUADRATIC_ATTENUATION nil)
(var jsetstatic_GL_QUADRATIC_ATTENUATION nil)
(var jcell_GL_RED_BITS :jnone)
(var jstatic_GL_RED_BITS nil)
(var jsetstatic_GL_RED_BITS nil)
(var jcell_GL_RENDERER :jnone)
(var jstatic_GL_RENDERER nil)
(var jsetstatic_GL_RENDERER nil)
(var jcell_GL_REPEAT :jnone)
(var jstatic_GL_REPEAT nil)
(var jsetstatic_GL_REPEAT nil)
(var jcell_GL_REPLACE :jnone)
(var jstatic_GL_REPLACE nil)
(var jsetstatic_GL_REPLACE nil)
(var jcell_GL_RESCALE_NORMAL :jnone)
(var jstatic_GL_RESCALE_NORMAL nil)
(var jsetstatic_GL_RESCALE_NORMAL nil)
(var jcell_GL_RGB :jnone)
(var jstatic_GL_RGB nil)
(var jsetstatic_GL_RGB nil)
(var jcell_GL_RGBA :jnone)
(var jstatic_GL_RGBA nil)
(var jsetstatic_GL_RGBA nil)
(var jcell_GL_SAMPLE_ALPHA_TO_COVERAGE :jnone)
(var jstatic_GL_SAMPLE_ALPHA_TO_COVERAGE nil)
(var jsetstatic_GL_SAMPLE_ALPHA_TO_COVERAGE nil)
(var jcell_GL_SAMPLE_ALPHA_TO_ONE :jnone)
(var jstatic_GL_SAMPLE_ALPHA_TO_ONE nil)
(var jsetstatic_GL_SAMPLE_ALPHA_TO_ONE nil)
(var jcell_GL_SAMPLE_COVERAGE :jnone)
(var jstatic_GL_SAMPLE_COVERAGE nil)
(var jsetstatic_GL_SAMPLE_COVERAGE nil)
(var jcell_GL_SCISSOR_TEST :jnone)
(var jstatic_GL_SCISSOR_TEST nil)
(var jsetstatic_GL_SCISSOR_TEST nil)
(var jcell_GL_SET :jnone)
(var jstatic_GL_SET nil)
(var jsetstatic_GL_SET nil)
(var jcell_GL_SHININESS :jnone)
(var jstatic_GL_SHININESS nil)
(var jsetstatic_GL_SHININESS nil)
(var jcell_GL_SHORT :jnone)
(var jstatic_GL_SHORT nil)
(var jsetstatic_GL_SHORT nil)
(var jcell_GL_SMOOTH :jnone)
(var jstatic_GL_SMOOTH nil)
(var jsetstatic_GL_SMOOTH nil)
(var jcell_GL_SMOOTH_LINE_WIDTH_RANGE :jnone)
(var jstatic_GL_SMOOTH_LINE_WIDTH_RANGE nil)
(var jsetstatic_GL_SMOOTH_LINE_WIDTH_RANGE nil)
(var jcell_GL_SMOOTH_POINT_SIZE_RANGE :jnone)
(var jstatic_GL_SMOOTH_POINT_SIZE_RANGE nil)
(var jsetstatic_GL_SMOOTH_POINT_SIZE_RANGE nil)
(var jcell_GL_SPECULAR :jnone)
(var jstatic_GL_SPECULAR nil)
(var jsetstatic_GL_SPECULAR nil)
(var jcell_GL_SPOT_CUTOFF :jnone)
(var jstatic_GL_SPOT_CUTOFF nil)
(var jsetstatic_GL_SPOT_CUTOFF nil)
(var jcell_GL_SPOT_DIRECTION :jnone)
(var jstatic_GL_SPOT_DIRECTION nil)
(var jsetstatic_GL_SPOT_DIRECTION nil)
(var jcell_GL_SPOT_EXPONENT :jnone)
(var jstatic_GL_SPOT_EXPONENT nil)
(var jsetstatic_GL_SPOT_EXPONENT nil)
(var jcell_GL_SRC_ALPHA :jnone)
(var jstatic_GL_SRC_ALPHA nil)
(var jsetstatic_GL_SRC_ALPHA nil)
(var jcell_GL_SRC_ALPHA_SATURATE :jnone)
(var jstatic_GL_SRC_ALPHA_SATURATE nil)
(var jsetstatic_GL_SRC_ALPHA_SATURATE nil)
(var jcell_GL_SRC_COLOR :jnone)
(var jstatic_GL_SRC_COLOR nil)
(var jsetstatic_GL_SRC_COLOR nil)
(var jcell_GL_STACK_OVERFLOW :jnone)
(var jstatic_GL_STACK_OVERFLOW nil)
(var jsetstatic_GL_STACK_OVERFLOW nil)
(var jcell_GL_STACK_UNDERFLOW :jnone)
(var jstatic_GL_STACK_UNDERFLOW nil)
(var jsetstatic_GL_STACK_UNDERFLOW nil)
(var jcell_GL_STENCIL_BITS :jnone)
(var jstatic_GL_STENCIL_BITS nil)
(var jsetstatic_GL_STENCIL_BITS nil)
(var jcell_GL_STENCIL_BUFFER_BIT :jnone)
(var jstatic_GL_STENCIL_BUFFER_BIT nil)
(var jsetstatic_GL_STENCIL_BUFFER_BIT nil)
(var jcell_GL_STENCIL_TEST :jnone)
(var jstatic_GL_STENCIL_TEST nil)
(var jsetstatic_GL_STENCIL_TEST nil)
(var jcell_GL_SUBPIXEL_BITS :jnone)
(var jstatic_GL_SUBPIXEL_BITS nil)
(var jsetstatic_GL_SUBPIXEL_BITS nil)
(var jcell_GL_TEXTURE :jnone)
(var jstatic_GL_TEXTURE nil)
(var jsetstatic_GL_TEXTURE nil)
(var jcell_GL_TEXTURE_2D :jnone)
(var jstatic_GL_TEXTURE_2D nil)
(var jsetstatic_GL_TEXTURE_2D nil)
(var jcell_GL_TEXTURE_COORD_ARRAY :jnone)
(var jstatic_GL_TEXTURE_COORD_ARRAY nil)
(var jsetstatic_GL_TEXTURE_COORD_ARRAY nil)
(var jcell_GL_TEXTURE_ENV :jnone)
(var jstatic_GL_TEXTURE_ENV nil)
(var jsetstatic_GL_TEXTURE_ENV nil)
(var jcell_GL_TEXTURE_ENV_COLOR :jnone)
(var jstatic_GL_TEXTURE_ENV_COLOR nil)
(var jsetstatic_GL_TEXTURE_ENV_COLOR nil)
(var jcell_GL_TEXTURE_ENV_MODE :jnone)
(var jstatic_GL_TEXTURE_ENV_MODE nil)
(var jsetstatic_GL_TEXTURE_ENV_MODE nil)
(var jcell_GL_TEXTURE_MAG_FILTER :jnone)
(var jstatic_GL_TEXTURE_MAG_FILTER nil)
(var jsetstatic_GL_TEXTURE_MAG_FILTER nil)
(var jcell_GL_TEXTURE_MIN_FILTER :jnone)
(var jstatic_GL_TEXTURE_MIN_FILTER nil)
(var jsetstatic_GL_TEXTURE_MIN_FILTER nil)
(var jcell_GL_TEXTURE_WRAP_S :jnone)
(var jstatic_GL_TEXTURE_WRAP_S nil)
(var jsetstatic_GL_TEXTURE_WRAP_S nil)
(var jcell_GL_TEXTURE_WRAP_T :jnone)
(var jstatic_GL_TEXTURE_WRAP_T nil)
(var jsetstatic_GL_TEXTURE_WRAP_T nil)
(var jcell_GL_TEXTURE0 :jnone)
(var jstatic_GL_TEXTURE0 nil)
(var jsetstatic_GL_TEXTURE0 nil)
(var jcell_GL_TEXTURE1 :jnone)
(var jstatic_GL_TEXTURE1 nil)
(var jsetstatic_GL_TEXTURE1 nil)
(var jcell_GL_TEXTURE2 :jnone)
(var jstatic_GL_TEXTURE2 nil)
(var jsetstatic_GL_TEXTURE2 nil)
(var jcell_GL_TEXTURE3 :jnone)
(var jstatic_GL_TEXTURE3 nil)
(var jsetstatic_GL_TEXTURE3 nil)
(var jcell_GL_TEXTURE4 :jnone)
(var jstatic_GL_TEXTURE4 nil)
(var jsetstatic_GL_TEXTURE4 nil)
(var jcell_GL_TEXTURE5 :jnone)
(var jstatic_GL_TEXTURE5 nil)
(var jsetstatic_GL_TEXTURE5 nil)
(var jcell_GL_TEXTURE6 :jnone)
(var jstatic_GL_TEXTURE6 nil)
(var jsetstatic_GL_TEXTURE6 nil)
(var jcell_GL_TEXTURE7 :jnone)
(var jstatic_GL_TEXTURE7 nil)
(var jsetstatic_GL_TEXTURE7 nil)
(var jcell_GL_TEXTURE8 :jnone)
(var jstatic_GL_TEXTURE8 nil)
(var jsetstatic_GL_TEXTURE8 nil)
(var jcell_GL_TEXTURE9 :jnone)
(var jstatic_GL_TEXTURE9 nil)
(var jsetstatic_GL_TEXTURE9 nil)
(var jcell_GL_TEXTURE10 :jnone)
(var jstatic_GL_TEXTURE10 nil)
(var jsetstatic_GL_TEXTURE10 nil)
(var jcell_GL_TEXTURE11 :jnone)
(var jstatic_GL_TEXTURE11 nil)
(var jsetstatic_GL_TEXTURE11 nil)
(var jcell_GL_TEXTURE12 :jnone)
(var jstatic_GL_TEXTURE12 nil)
(var jsetstatic_GL_TEXTURE12 nil)
(var jcell_GL_TEXTURE13 :jnone)
(var jstatic_GL_TEXTURE13 nil)
(var jsetstatic_GL_TEXTURE13 nil)
(var jcell_GL_TEXTURE14 :jnone)
(var jstatic_GL_TEXTURE14 nil)
(var jsetstatic_GL_TEXTURE14 nil)
(var jcell_GL_TEXTURE15 :jnone)
(var jstatic_GL_TEXTURE15 nil)
(var jsetstatic_GL_TEXTURE15 nil)
(var jcell_GL_TEXTURE16 :jnone)
(var jstatic_GL_TEXTURE16 nil)
(var jsetstatic_GL_TEXTURE16 nil)
(var jcell_GL_TEXTURE17 :jnone)
(var jstatic_GL_TEXTURE17 nil)
(var jsetstatic_GL_TEXTURE17 nil)
(var jcell_GL_TEXTURE18 :jnone)
(var jstatic_GL_TEXTURE18 nil)
(var jsetstatic_GL_TEXTURE18 nil)
(var jcell_GL_TEXTURE19 :jnone)
(var jstatic_GL_TEXTURE19 nil)
(var jsetstatic_GL_TEXTURE19 nil)
(var jcell_GL_TEXTURE20 :jnone)
(var jstatic_GL_TEXTURE20 nil)
(var jsetstatic_GL_TEXTURE20 nil)
(var jcell_GL_TEXTURE21 :jnone)
(var jstatic_GL_TEXTURE21 nil)
(var jsetstatic_GL_TEXTURE21 nil)
(var jcell_GL_TEXTURE22 :jnone)
(var jstatic_GL_TEXTURE22 nil)
(var jsetstatic_GL_TEXTURE22 nil)
(var jcell_GL_TEXTURE23 :jnone)
(var jstatic_GL_TEXTURE23 nil)
(var jsetstatic_GL_TEXTURE23 nil)
(var jcell_GL_TEXTURE24 :jnone)
(var jstatic_GL_TEXTURE24 nil)
(var jsetstatic_GL_TEXTURE24 nil)
(var jcell_GL_TEXTURE25 :jnone)
(var jstatic_GL_TEXTURE25 nil)
(var jsetstatic_GL_TEXTURE25 nil)
(var jcell_GL_TEXTURE26 :jnone)
(var jstatic_GL_TEXTURE26 nil)
(var jsetstatic_GL_TEXTURE26 nil)
(var jcell_GL_TEXTURE27 :jnone)
(var jstatic_GL_TEXTURE27 nil)
(var jsetstatic_GL_TEXTURE27 nil)
(var jcell_GL_TEXTURE28 :jnone)
(var jstatic_GL_TEXTURE28 nil)
(var jsetstatic_GL_TEXTURE28 nil)
(var jcell_GL_TEXTURE29 :jnone)
(var jstatic_GL_TEXTURE29 nil)
(var jsetstatic_GL_TEXTURE29 nil)
(var jcell_GL_TEXTURE30 :jnone)
(var jstatic_GL_TEXTURE30 nil)
(var jsetstatic_GL_TEXTURE30 nil)
(var jcell_GL_TEXTURE31 :jnone)
(var jstatic_GL_TEXTURE31 nil)
(var jsetstatic_GL_TEXTURE31 nil)
(var jcell_GL_TRIANGLE_FAN :jnone)
(var jstatic_GL_TRIANGLE_FAN nil)
(var jsetstatic_GL_TRIANGLE_FAN nil)
(var jcell_GL_TRIANGLE_STRIP :jnone)
(var jstatic_GL_TRIANGLE_STRIP nil)
(var jsetstatic_GL_TRIANGLE_STRIP nil)
(var jcell_GL_TRIANGLES :jnone)
(var jstatic_GL_TRIANGLES nil)
(var jsetstatic_GL_TRIANGLES nil)
(var jcell_GL_TRUE :jnone)
(var jstatic_GL_TRUE nil)
(var jsetstatic_GL_TRUE nil)
(var jcell_GL_UNPACK_ALIGNMENT :jnone)
(var jstatic_GL_UNPACK_ALIGNMENT nil)
(var jsetstatic_GL_UNPACK_ALIGNMENT nil)
(var jcell_GL_UNSIGNED_BYTE :jnone)
(var jstatic_GL_UNSIGNED_BYTE nil)
(var jsetstatic_GL_UNSIGNED_BYTE nil)
(var jcell_GL_UNSIGNED_SHORT :jnone)
(var jstatic_GL_UNSIGNED_SHORT nil)
(var jsetstatic_GL_UNSIGNED_SHORT nil)
(var jcell_GL_UNSIGNED_SHORT_4_4_4_4 :jnone)
(var jstatic_GL_UNSIGNED_SHORT_4_4_4_4 nil)
(var jsetstatic_GL_UNSIGNED_SHORT_4_4_4_4 nil)
(var jcell_GL_UNSIGNED_SHORT_5_5_5_1 :jnone)
(var jstatic_GL_UNSIGNED_SHORT_5_5_5_1 nil)
(var jsetstatic_GL_UNSIGNED_SHORT_5_5_5_1 nil)
(var jcell_GL_UNSIGNED_SHORT_5_6_5 :jnone)
(var jstatic_GL_UNSIGNED_SHORT_5_6_5 nil)
(var jsetstatic_GL_UNSIGNED_SHORT_5_6_5 nil)
(var jcell_GL_VENDOR :jnone)
(var jstatic_GL_VENDOR nil)
(var jsetstatic_GL_VENDOR nil)
(var jcell_GL_VERSION :jnone)
(var jstatic_GL_VERSION nil)
(var jsetstatic_GL_VERSION nil)
(var jcell_GL_VERTEX_ARRAY :jnone)
(var jstatic_GL_VERTEX_ARRAY nil)
(var jsetstatic_GL_VERTEX_ARRAY nil)
(var jcell_GL_XOR :jnone)
(var jstatic_GL_XOR nil)
(var jsetstatic_GL_XOR nil)
(var jcell_GL_ZERO :jnone)
(var jstatic_GL_ZERO nil)
(var jsetstatic_GL_ZERO nil)
(var jnew_0 nil)
(var jm_glActiveTexture nil)
(var jm_glAlphaFunc nil)
(var jm_glBindTexture nil)
(var jm_glBlendFunc nil)
(var jm_glClear nil)
(var jm_glClearColor nil)
(var jm_glClearDepthf nil)
(var jm_glClearStencil nil)
(var jm_glClientActiveTexture nil)
(var jm_glColor4f nil)
(var jm_glColorMask nil)
(var jm_glColorPointer nil)
(var jm_glCompressedTexImage2D nil)
(var jm_glCompressedTexSubImage2D nil)
(var jm_glCopyTexImage2D nil)
(var jm_glCopyTexSubImage2D nil)
(var jm_glCullFace nil)
(var jm_glDeleteTextures_3 nil)
(var jm_glDeleteTextures_2 nil)
(var jm_glDepthFunc nil)
(var jm_glDepthMask nil)
(var jm_glDepthRangef nil)
(var jm_glDisable nil)
(var jm_glDisableClientState nil)
(var jm_glDrawArrays nil)
(var jm_glDrawElements nil)
(var jm_glEnable nil)
(var jm_glEnableClientState nil)
(var jm_glFinish nil)
(var jm_glFlush nil)
(var jm_glFogf nil)
(var jm_glFogfv_3 nil)
(var jm_glFogfv_2 nil)
(var jm_glFrontFace nil)
(var jm_glFrustumf nil)
(var jm_glGenTextures_3 nil)
(var jm_glGenTextures_2 nil)
(var jm_glGetError nil)
(var jm_glGetIntegerv_3 nil)
(var jm_glGetIntegerv_2 nil)
(var jm_glGetString nil)
(var jm_glHint nil)
(var jm_glLightModelf nil)
(var jm_glLightModelfv_3 nil)
(var jm_glLightModelfv_2 nil)
(var jm_glLightf nil)
(var jm_glLightfv_4 nil)
(var jm_glLightfv_3 nil)
(var jm_glLineWidth nil)
(var jm_glLoadIdentity nil)
(var jm_glLoadMatrixf_2 nil)
(var jm_glLoadMatrixf_1 nil)
(var jm_glLogicOp nil)
(var jm_glMaterialf nil)
(var jm_glMaterialfv_4 nil)
(var jm_glMaterialfv_3 nil)
(var jm_glMatrixMode nil)
(var jm_glMultMatrixf_2 nil)
(var jm_glMultMatrixf_1 nil)
(var jm_glMultiTexCoord4f nil)
(var jm_glNormal3f nil)
(var jm_glNormalPointer nil)
(var jm_glOrthof nil)
(var jm_glPixelStorei nil)
(var jm_glPointSize nil)
(var jm_glPolygonOffset nil)
(var jm_glPopMatrix nil)
(var jm_glPushMatrix nil)
(var jm_glReadPixels nil)
(var jm_glRotatef nil)
(var jm_glRotatex nil)
(var jm_glSampleCoverage nil)
(var jm_glScalef nil)
(var jm_glScalex nil)
(var jm_glScissor nil)
(var jm_glShadeModel nil)
(var jm_glStencilFunc nil)
(var jm_glStencilMask nil)
(var jm_glStencilOp nil)
(var jm_glTexCoordPointer nil)
(var jm_glTexEnvf nil)
(var jm_glTexEnvfv_4 nil)
(var jm_glTexEnvfv_3 nil)
(var jm_glTexImage2D nil)
(var jm_glTexParameterf nil)
(var jm_glTexParameteri nil)
(var jm_glTexSubImage2D nil)
(var jm_glTranslatef nil)
(var jm_glVertexPointer nil)
(var jm_glViewport nil)
(var jm_glBegin nil)
(var jm_glEnd nil)
(var jm_glVertex3f nil)
(var jm_glPolygonMode nil)

(set jstatic_GL_ADD (fn jstatic_GL_ADD []
  (when (= jcell_GL_ADD :jnone) (set jcell_GL_ADD 260))
  jcell_GL_ADD))
(set jsetstatic_GL_ADD (fn jsetstatic_GL_ADD [value] (set jcell_GL_ADD value)))

(set jstatic_GL_ALIASED_LINE_WIDTH_RANGE (fn jstatic_GL_ALIASED_LINE_WIDTH_RANGE []
  (when (= jcell_GL_ALIASED_LINE_WIDTH_RANGE :jnone) (set jcell_GL_ALIASED_LINE_WIDTH_RANGE 33902))
  jcell_GL_ALIASED_LINE_WIDTH_RANGE))
(set jsetstatic_GL_ALIASED_LINE_WIDTH_RANGE (fn jsetstatic_GL_ALIASED_LINE_WIDTH_RANGE [value] (set jcell_GL_ALIASED_LINE_WIDTH_RANGE value)))

(set jstatic_GL_ALIASED_POINT_SIZE_RANGE (fn jstatic_GL_ALIASED_POINT_SIZE_RANGE []
  (when (= jcell_GL_ALIASED_POINT_SIZE_RANGE :jnone) (set jcell_GL_ALIASED_POINT_SIZE_RANGE 33901))
  jcell_GL_ALIASED_POINT_SIZE_RANGE))
(set jsetstatic_GL_ALIASED_POINT_SIZE_RANGE (fn jsetstatic_GL_ALIASED_POINT_SIZE_RANGE [value] (set jcell_GL_ALIASED_POINT_SIZE_RANGE value)))

(set jstatic_GL_ALPHA (fn jstatic_GL_ALPHA []
  (when (= jcell_GL_ALPHA :jnone) (set jcell_GL_ALPHA 6406))
  jcell_GL_ALPHA))
(set jsetstatic_GL_ALPHA (fn jsetstatic_GL_ALPHA [value] (set jcell_GL_ALPHA value)))

(set jstatic_GL_ALPHA_BITS (fn jstatic_GL_ALPHA_BITS []
  (when (= jcell_GL_ALPHA_BITS :jnone) (set jcell_GL_ALPHA_BITS 3413))
  jcell_GL_ALPHA_BITS))
(set jsetstatic_GL_ALPHA_BITS (fn jsetstatic_GL_ALPHA_BITS [value] (set jcell_GL_ALPHA_BITS value)))

(set jstatic_GL_ALPHA_TEST (fn jstatic_GL_ALPHA_TEST []
  (when (= jcell_GL_ALPHA_TEST :jnone) (set jcell_GL_ALPHA_TEST 3008))
  jcell_GL_ALPHA_TEST))
(set jsetstatic_GL_ALPHA_TEST (fn jsetstatic_GL_ALPHA_TEST [value] (set jcell_GL_ALPHA_TEST value)))

(set jstatic_GL_ALWAYS (fn jstatic_GL_ALWAYS []
  (when (= jcell_GL_ALWAYS :jnone) (set jcell_GL_ALWAYS 519))
  jcell_GL_ALWAYS))
(set jsetstatic_GL_ALWAYS (fn jsetstatic_GL_ALWAYS [value] (set jcell_GL_ALWAYS value)))

(set jstatic_GL_AMBIENT (fn jstatic_GL_AMBIENT []
  (when (= jcell_GL_AMBIENT :jnone) (set jcell_GL_AMBIENT 4608))
  jcell_GL_AMBIENT))
(set jsetstatic_GL_AMBIENT (fn jsetstatic_GL_AMBIENT [value] (set jcell_GL_AMBIENT value)))

(set jstatic_GL_AMBIENT_AND_DIFFUSE (fn jstatic_GL_AMBIENT_AND_DIFFUSE []
  (when (= jcell_GL_AMBIENT_AND_DIFFUSE :jnone) (set jcell_GL_AMBIENT_AND_DIFFUSE 5634))
  jcell_GL_AMBIENT_AND_DIFFUSE))
(set jsetstatic_GL_AMBIENT_AND_DIFFUSE (fn jsetstatic_GL_AMBIENT_AND_DIFFUSE [value] (set jcell_GL_AMBIENT_AND_DIFFUSE value)))

(set jstatic_GL_AND (fn jstatic_GL_AND []
  (when (= jcell_GL_AND :jnone) (set jcell_GL_AND 5377))
  jcell_GL_AND))
(set jsetstatic_GL_AND (fn jsetstatic_GL_AND [value] (set jcell_GL_AND value)))

(set jstatic_GL_AND_INVERTED (fn jstatic_GL_AND_INVERTED []
  (when (= jcell_GL_AND_INVERTED :jnone) (set jcell_GL_AND_INVERTED 5380))
  jcell_GL_AND_INVERTED))
(set jsetstatic_GL_AND_INVERTED (fn jsetstatic_GL_AND_INVERTED [value] (set jcell_GL_AND_INVERTED value)))

(set jstatic_GL_AND_REVERSE (fn jstatic_GL_AND_REVERSE []
  (when (= jcell_GL_AND_REVERSE :jnone) (set jcell_GL_AND_REVERSE 5378))
  jcell_GL_AND_REVERSE))
(set jsetstatic_GL_AND_REVERSE (fn jsetstatic_GL_AND_REVERSE [value] (set jcell_GL_AND_REVERSE value)))

(set jstatic_GL_BACK (fn jstatic_GL_BACK []
  (when (= jcell_GL_BACK :jnone) (set jcell_GL_BACK 1029))
  jcell_GL_BACK))
(set jsetstatic_GL_BACK (fn jsetstatic_GL_BACK [value] (set jcell_GL_BACK value)))

(set jstatic_GL_BLEND (fn jstatic_GL_BLEND []
  (when (= jcell_GL_BLEND :jnone) (set jcell_GL_BLEND 3042))
  jcell_GL_BLEND))
(set jsetstatic_GL_BLEND (fn jsetstatic_GL_BLEND [value] (set jcell_GL_BLEND value)))

(set jstatic_GL_BLUE_BITS (fn jstatic_GL_BLUE_BITS []
  (when (= jcell_GL_BLUE_BITS :jnone) (set jcell_GL_BLUE_BITS 3412))
  jcell_GL_BLUE_BITS))
(set jsetstatic_GL_BLUE_BITS (fn jsetstatic_GL_BLUE_BITS [value] (set jcell_GL_BLUE_BITS value)))

(set jstatic_GL_BYTE (fn jstatic_GL_BYTE []
  (when (= jcell_GL_BYTE :jnone) (set jcell_GL_BYTE 5120))
  jcell_GL_BYTE))
(set jsetstatic_GL_BYTE (fn jsetstatic_GL_BYTE [value] (set jcell_GL_BYTE value)))

(set jstatic_GL_CCW (fn jstatic_GL_CCW []
  (when (= jcell_GL_CCW :jnone) (set jcell_GL_CCW 2305))
  jcell_GL_CCW))
(set jsetstatic_GL_CCW (fn jsetstatic_GL_CCW [value] (set jcell_GL_CCW value)))

(set jstatic_GL_CLAMP_TO_EDGE (fn jstatic_GL_CLAMP_TO_EDGE []
  (when (= jcell_GL_CLAMP_TO_EDGE :jnone) (set jcell_GL_CLAMP_TO_EDGE 33071))
  jcell_GL_CLAMP_TO_EDGE))
(set jsetstatic_GL_CLAMP_TO_EDGE (fn jsetstatic_GL_CLAMP_TO_EDGE [value] (set jcell_GL_CLAMP_TO_EDGE value)))

(set jstatic_GL_CLEAR (fn jstatic_GL_CLEAR []
  (when (= jcell_GL_CLEAR :jnone) (set jcell_GL_CLEAR 5376))
  jcell_GL_CLEAR))
(set jsetstatic_GL_CLEAR (fn jsetstatic_GL_CLEAR [value] (set jcell_GL_CLEAR value)))

(set jstatic_GL_COLOR_ARRAY (fn jstatic_GL_COLOR_ARRAY []
  (when (= jcell_GL_COLOR_ARRAY :jnone) (set jcell_GL_COLOR_ARRAY 32886))
  jcell_GL_COLOR_ARRAY))
(set jsetstatic_GL_COLOR_ARRAY (fn jsetstatic_GL_COLOR_ARRAY [value] (set jcell_GL_COLOR_ARRAY value)))

(set jstatic_GL_COLOR_BUFFER_BIT (fn jstatic_GL_COLOR_BUFFER_BIT []
  (when (= jcell_GL_COLOR_BUFFER_BIT :jnone) (set jcell_GL_COLOR_BUFFER_BIT 16384))
  jcell_GL_COLOR_BUFFER_BIT))
(set jsetstatic_GL_COLOR_BUFFER_BIT (fn jsetstatic_GL_COLOR_BUFFER_BIT [value] (set jcell_GL_COLOR_BUFFER_BIT value)))

(set jstatic_GL_COLOR_LOGIC_OP (fn jstatic_GL_COLOR_LOGIC_OP []
  (when (= jcell_GL_COLOR_LOGIC_OP :jnone) (set jcell_GL_COLOR_LOGIC_OP 3058))
  jcell_GL_COLOR_LOGIC_OP))
(set jsetstatic_GL_COLOR_LOGIC_OP (fn jsetstatic_GL_COLOR_LOGIC_OP [value] (set jcell_GL_COLOR_LOGIC_OP value)))

(set jstatic_GL_COLOR_MATERIAL (fn jstatic_GL_COLOR_MATERIAL []
  (when (= jcell_GL_COLOR_MATERIAL :jnone) (set jcell_GL_COLOR_MATERIAL 2903))
  jcell_GL_COLOR_MATERIAL))
(set jsetstatic_GL_COLOR_MATERIAL (fn jsetstatic_GL_COLOR_MATERIAL [value] (set jcell_GL_COLOR_MATERIAL value)))

(set jstatic_GL_COMPRESSED_TEXTURE_FORMATS (fn jstatic_GL_COMPRESSED_TEXTURE_FORMATS []
  (when (= jcell_GL_COMPRESSED_TEXTURE_FORMATS :jnone) (set jcell_GL_COMPRESSED_TEXTURE_FORMATS 34467))
  jcell_GL_COMPRESSED_TEXTURE_FORMATS))
(set jsetstatic_GL_COMPRESSED_TEXTURE_FORMATS (fn jsetstatic_GL_COMPRESSED_TEXTURE_FORMATS [value] (set jcell_GL_COMPRESSED_TEXTURE_FORMATS value)))

(set jstatic_GL_CONSTANT_ATTENUATION (fn jstatic_GL_CONSTANT_ATTENUATION []
  (when (= jcell_GL_CONSTANT_ATTENUATION :jnone) (set jcell_GL_CONSTANT_ATTENUATION 4615))
  jcell_GL_CONSTANT_ATTENUATION))
(set jsetstatic_GL_CONSTANT_ATTENUATION (fn jsetstatic_GL_CONSTANT_ATTENUATION [value] (set jcell_GL_CONSTANT_ATTENUATION value)))

(set jstatic_GL_COPY (fn jstatic_GL_COPY []
  (when (= jcell_GL_COPY :jnone) (set jcell_GL_COPY 5379))
  jcell_GL_COPY))
(set jsetstatic_GL_COPY (fn jsetstatic_GL_COPY [value] (set jcell_GL_COPY value)))

(set jstatic_GL_COPY_INVERTED (fn jstatic_GL_COPY_INVERTED []
  (when (= jcell_GL_COPY_INVERTED :jnone) (set jcell_GL_COPY_INVERTED 5388))
  jcell_GL_COPY_INVERTED))
(set jsetstatic_GL_COPY_INVERTED (fn jsetstatic_GL_COPY_INVERTED [value] (set jcell_GL_COPY_INVERTED value)))

(set jstatic_GL_CULL_FACE (fn jstatic_GL_CULL_FACE []
  (when (= jcell_GL_CULL_FACE :jnone) (set jcell_GL_CULL_FACE 2884))
  jcell_GL_CULL_FACE))
(set jsetstatic_GL_CULL_FACE (fn jsetstatic_GL_CULL_FACE [value] (set jcell_GL_CULL_FACE value)))

(set jstatic_GL_CW (fn jstatic_GL_CW []
  (when (= jcell_GL_CW :jnone) (set jcell_GL_CW 2304))
  jcell_GL_CW))
(set jsetstatic_GL_CW (fn jsetstatic_GL_CW [value] (set jcell_GL_CW value)))

(set jstatic_GL_DECAL (fn jstatic_GL_DECAL []
  (when (= jcell_GL_DECAL :jnone) (set jcell_GL_DECAL 8449))
  jcell_GL_DECAL))
(set jsetstatic_GL_DECAL (fn jsetstatic_GL_DECAL [value] (set jcell_GL_DECAL value)))

(set jstatic_GL_DECR (fn jstatic_GL_DECR []
  (when (= jcell_GL_DECR :jnone) (set jcell_GL_DECR 7683))
  jcell_GL_DECR))
(set jsetstatic_GL_DECR (fn jsetstatic_GL_DECR [value] (set jcell_GL_DECR value)))

(set jstatic_GL_DEPTH_BITS (fn jstatic_GL_DEPTH_BITS []
  (when (= jcell_GL_DEPTH_BITS :jnone) (set jcell_GL_DEPTH_BITS 3414))
  jcell_GL_DEPTH_BITS))
(set jsetstatic_GL_DEPTH_BITS (fn jsetstatic_GL_DEPTH_BITS [value] (set jcell_GL_DEPTH_BITS value)))

(set jstatic_GL_DEPTH_BUFFER_BIT (fn jstatic_GL_DEPTH_BUFFER_BIT []
  (when (= jcell_GL_DEPTH_BUFFER_BIT :jnone) (set jcell_GL_DEPTH_BUFFER_BIT 256))
  jcell_GL_DEPTH_BUFFER_BIT))
(set jsetstatic_GL_DEPTH_BUFFER_BIT (fn jsetstatic_GL_DEPTH_BUFFER_BIT [value] (set jcell_GL_DEPTH_BUFFER_BIT value)))

(set jstatic_GL_DEPTH_TEST (fn jstatic_GL_DEPTH_TEST []
  (when (= jcell_GL_DEPTH_TEST :jnone) (set jcell_GL_DEPTH_TEST 2929))
  jcell_GL_DEPTH_TEST))
(set jsetstatic_GL_DEPTH_TEST (fn jsetstatic_GL_DEPTH_TEST [value] (set jcell_GL_DEPTH_TEST value)))

(set jstatic_GL_DIFFUSE (fn jstatic_GL_DIFFUSE []
  (when (= jcell_GL_DIFFUSE :jnone) (set jcell_GL_DIFFUSE 4609))
  jcell_GL_DIFFUSE))
(set jsetstatic_GL_DIFFUSE (fn jsetstatic_GL_DIFFUSE [value] (set jcell_GL_DIFFUSE value)))

(set jstatic_GL_DITHER (fn jstatic_GL_DITHER []
  (when (= jcell_GL_DITHER :jnone) (set jcell_GL_DITHER 3024))
  jcell_GL_DITHER))
(set jsetstatic_GL_DITHER (fn jsetstatic_GL_DITHER [value] (set jcell_GL_DITHER value)))

(set jstatic_GL_DONT_CARE (fn jstatic_GL_DONT_CARE []
  (when (= jcell_GL_DONT_CARE :jnone) (set jcell_GL_DONT_CARE 4352))
  jcell_GL_DONT_CARE))
(set jsetstatic_GL_DONT_CARE (fn jsetstatic_GL_DONT_CARE [value] (set jcell_GL_DONT_CARE value)))

(set jstatic_GL_DST_ALPHA (fn jstatic_GL_DST_ALPHA []
  (when (= jcell_GL_DST_ALPHA :jnone) (set jcell_GL_DST_ALPHA 772))
  jcell_GL_DST_ALPHA))
(set jsetstatic_GL_DST_ALPHA (fn jsetstatic_GL_DST_ALPHA [value] (set jcell_GL_DST_ALPHA value)))

(set jstatic_GL_DST_COLOR (fn jstatic_GL_DST_COLOR []
  (when (= jcell_GL_DST_COLOR :jnone) (set jcell_GL_DST_COLOR 774))
  jcell_GL_DST_COLOR))
(set jsetstatic_GL_DST_COLOR (fn jsetstatic_GL_DST_COLOR [value] (set jcell_GL_DST_COLOR value)))

(set jstatic_GL_EMISSION (fn jstatic_GL_EMISSION []
  (when (= jcell_GL_EMISSION :jnone) (set jcell_GL_EMISSION 5632))
  jcell_GL_EMISSION))
(set jsetstatic_GL_EMISSION (fn jsetstatic_GL_EMISSION [value] (set jcell_GL_EMISSION value)))

(set jstatic_GL_EQUAL (fn jstatic_GL_EQUAL []
  (when (= jcell_GL_EQUAL :jnone) (set jcell_GL_EQUAL 514))
  jcell_GL_EQUAL))
(set jsetstatic_GL_EQUAL (fn jsetstatic_GL_EQUAL [value] (set jcell_GL_EQUAL value)))

(set jstatic_GL_EQUIV (fn jstatic_GL_EQUIV []
  (when (= jcell_GL_EQUIV :jnone) (set jcell_GL_EQUIV 5385))
  jcell_GL_EQUIV))
(set jsetstatic_GL_EQUIV (fn jsetstatic_GL_EQUIV [value] (set jcell_GL_EQUIV value)))

(set jstatic_GL_EXP (fn jstatic_GL_EXP []
  (when (= jcell_GL_EXP :jnone) (set jcell_GL_EXP 2048))
  jcell_GL_EXP))
(set jsetstatic_GL_EXP (fn jsetstatic_GL_EXP [value] (set jcell_GL_EXP value)))

(set jstatic_GL_EXP2 (fn jstatic_GL_EXP2 []
  (when (= jcell_GL_EXP2 :jnone) (set jcell_GL_EXP2 2049))
  jcell_GL_EXP2))
(set jsetstatic_GL_EXP2 (fn jsetstatic_GL_EXP2 [value] (set jcell_GL_EXP2 value)))

(set jstatic_GL_EXTENSIONS (fn jstatic_GL_EXTENSIONS []
  (when (= jcell_GL_EXTENSIONS :jnone) (set jcell_GL_EXTENSIONS 7939))
  jcell_GL_EXTENSIONS))
(set jsetstatic_GL_EXTENSIONS (fn jsetstatic_GL_EXTENSIONS [value] (set jcell_GL_EXTENSIONS value)))

(set jstatic_GL_FALSE (fn jstatic_GL_FALSE []
  (when (= jcell_GL_FALSE :jnone) (set jcell_GL_FALSE 0))
  jcell_GL_FALSE))
(set jsetstatic_GL_FALSE (fn jsetstatic_GL_FALSE [value] (set jcell_GL_FALSE value)))

(set jstatic_GL_FASTEST (fn jstatic_GL_FASTEST []
  (when (= jcell_GL_FASTEST :jnone) (set jcell_GL_FASTEST 4353))
  jcell_GL_FASTEST))
(set jsetstatic_GL_FASTEST (fn jsetstatic_GL_FASTEST [value] (set jcell_GL_FASTEST value)))

(set jstatic_GL_FIXED (fn jstatic_GL_FIXED []
  (when (= jcell_GL_FIXED :jnone) (set jcell_GL_FIXED 5132))
  jcell_GL_FIXED))
(set jsetstatic_GL_FIXED (fn jsetstatic_GL_FIXED [value] (set jcell_GL_FIXED value)))

(set jstatic_GL_FLAT (fn jstatic_GL_FLAT []
  (when (= jcell_GL_FLAT :jnone) (set jcell_GL_FLAT 7424))
  jcell_GL_FLAT))
(set jsetstatic_GL_FLAT (fn jsetstatic_GL_FLAT [value] (set jcell_GL_FLAT value)))

(set jstatic_GL_FLOAT (fn jstatic_GL_FLOAT []
  (when (= jcell_GL_FLOAT :jnone) (set jcell_GL_FLOAT 5126))
  jcell_GL_FLOAT))
(set jsetstatic_GL_FLOAT (fn jsetstatic_GL_FLOAT [value] (set jcell_GL_FLOAT value)))

(set jstatic_GL_FOG (fn jstatic_GL_FOG []
  (when (= jcell_GL_FOG :jnone) (set jcell_GL_FOG 2912))
  jcell_GL_FOG))
(set jsetstatic_GL_FOG (fn jsetstatic_GL_FOG [value] (set jcell_GL_FOG value)))

(set jstatic_GL_FOG_COLOR (fn jstatic_GL_FOG_COLOR []
  (when (= jcell_GL_FOG_COLOR :jnone) (set jcell_GL_FOG_COLOR 2918))
  jcell_GL_FOG_COLOR))
(set jsetstatic_GL_FOG_COLOR (fn jsetstatic_GL_FOG_COLOR [value] (set jcell_GL_FOG_COLOR value)))

(set jstatic_GL_FOG_DENSITY (fn jstatic_GL_FOG_DENSITY []
  (when (= jcell_GL_FOG_DENSITY :jnone) (set jcell_GL_FOG_DENSITY 2914))
  jcell_GL_FOG_DENSITY))
(set jsetstatic_GL_FOG_DENSITY (fn jsetstatic_GL_FOG_DENSITY [value] (set jcell_GL_FOG_DENSITY value)))

(set jstatic_GL_FOG_END (fn jstatic_GL_FOG_END []
  (when (= jcell_GL_FOG_END :jnone) (set jcell_GL_FOG_END 2916))
  jcell_GL_FOG_END))
(set jsetstatic_GL_FOG_END (fn jsetstatic_GL_FOG_END [value] (set jcell_GL_FOG_END value)))

(set jstatic_GL_FOG_HINT (fn jstatic_GL_FOG_HINT []
  (when (= jcell_GL_FOG_HINT :jnone) (set jcell_GL_FOG_HINT 3156))
  jcell_GL_FOG_HINT))
(set jsetstatic_GL_FOG_HINT (fn jsetstatic_GL_FOG_HINT [value] (set jcell_GL_FOG_HINT value)))

(set jstatic_GL_FOG_MODE (fn jstatic_GL_FOG_MODE []
  (when (= jcell_GL_FOG_MODE :jnone) (set jcell_GL_FOG_MODE 2917))
  jcell_GL_FOG_MODE))
(set jsetstatic_GL_FOG_MODE (fn jsetstatic_GL_FOG_MODE [value] (set jcell_GL_FOG_MODE value)))

(set jstatic_GL_FOG_START (fn jstatic_GL_FOG_START []
  (when (= jcell_GL_FOG_START :jnone) (set jcell_GL_FOG_START 2915))
  jcell_GL_FOG_START))
(set jsetstatic_GL_FOG_START (fn jsetstatic_GL_FOG_START [value] (set jcell_GL_FOG_START value)))

(set jstatic_GL_FRONT (fn jstatic_GL_FRONT []
  (when (= jcell_GL_FRONT :jnone) (set jcell_GL_FRONT 1028))
  jcell_GL_FRONT))
(set jsetstatic_GL_FRONT (fn jsetstatic_GL_FRONT [value] (set jcell_GL_FRONT value)))

(set jstatic_GL_FRONT_AND_BACK (fn jstatic_GL_FRONT_AND_BACK []
  (when (= jcell_GL_FRONT_AND_BACK :jnone) (set jcell_GL_FRONT_AND_BACK 1032))
  jcell_GL_FRONT_AND_BACK))
(set jsetstatic_GL_FRONT_AND_BACK (fn jsetstatic_GL_FRONT_AND_BACK [value] (set jcell_GL_FRONT_AND_BACK value)))

(set jstatic_GL_GEQUAL (fn jstatic_GL_GEQUAL []
  (when (= jcell_GL_GEQUAL :jnone) (set jcell_GL_GEQUAL 518))
  jcell_GL_GEQUAL))
(set jsetstatic_GL_GEQUAL (fn jsetstatic_GL_GEQUAL [value] (set jcell_GL_GEQUAL value)))

(set jstatic_GL_GREATER (fn jstatic_GL_GREATER []
  (when (= jcell_GL_GREATER :jnone) (set jcell_GL_GREATER 516))
  jcell_GL_GREATER))
(set jsetstatic_GL_GREATER (fn jsetstatic_GL_GREATER [value] (set jcell_GL_GREATER value)))

(set jstatic_GL_GREEN_BITS (fn jstatic_GL_GREEN_BITS []
  (when (= jcell_GL_GREEN_BITS :jnone) (set jcell_GL_GREEN_BITS 3411))
  jcell_GL_GREEN_BITS))
(set jsetstatic_GL_GREEN_BITS (fn jsetstatic_GL_GREEN_BITS [value] (set jcell_GL_GREEN_BITS value)))

(set jstatic_GL_IMPLEMENTATION_COLOR_READ_FORMAT_OES (fn jstatic_GL_IMPLEMENTATION_COLOR_READ_FORMAT_OES []
  (when (= jcell_GL_IMPLEMENTATION_COLOR_READ_FORMAT_OES :jnone) (set jcell_GL_IMPLEMENTATION_COLOR_READ_FORMAT_OES 35739))
  jcell_GL_IMPLEMENTATION_COLOR_READ_FORMAT_OES))
(set jsetstatic_GL_IMPLEMENTATION_COLOR_READ_FORMAT_OES (fn jsetstatic_GL_IMPLEMENTATION_COLOR_READ_FORMAT_OES [value] (set jcell_GL_IMPLEMENTATION_COLOR_READ_FORMAT_OES value)))

(set jstatic_GL_IMPLEMENTATION_COLOR_READ_TYPE_OES (fn jstatic_GL_IMPLEMENTATION_COLOR_READ_TYPE_OES []
  (when (= jcell_GL_IMPLEMENTATION_COLOR_READ_TYPE_OES :jnone) (set jcell_GL_IMPLEMENTATION_COLOR_READ_TYPE_OES 35738))
  jcell_GL_IMPLEMENTATION_COLOR_READ_TYPE_OES))
(set jsetstatic_GL_IMPLEMENTATION_COLOR_READ_TYPE_OES (fn jsetstatic_GL_IMPLEMENTATION_COLOR_READ_TYPE_OES [value] (set jcell_GL_IMPLEMENTATION_COLOR_READ_TYPE_OES value)))

(set jstatic_GL_INCR (fn jstatic_GL_INCR []
  (when (= jcell_GL_INCR :jnone) (set jcell_GL_INCR 7682))
  jcell_GL_INCR))
(set jsetstatic_GL_INCR (fn jsetstatic_GL_INCR [value] (set jcell_GL_INCR value)))

(set jstatic_GL_INVALID_ENUM (fn jstatic_GL_INVALID_ENUM []
  (when (= jcell_GL_INVALID_ENUM :jnone) (set jcell_GL_INVALID_ENUM 1280))
  jcell_GL_INVALID_ENUM))
(set jsetstatic_GL_INVALID_ENUM (fn jsetstatic_GL_INVALID_ENUM [value] (set jcell_GL_INVALID_ENUM value)))

(set jstatic_GL_INVALID_OPERATION (fn jstatic_GL_INVALID_OPERATION []
  (when (= jcell_GL_INVALID_OPERATION :jnone) (set jcell_GL_INVALID_OPERATION 1282))
  jcell_GL_INVALID_OPERATION))
(set jsetstatic_GL_INVALID_OPERATION (fn jsetstatic_GL_INVALID_OPERATION [value] (set jcell_GL_INVALID_OPERATION value)))

(set jstatic_GL_INVALID_VALUE (fn jstatic_GL_INVALID_VALUE []
  (when (= jcell_GL_INVALID_VALUE :jnone) (set jcell_GL_INVALID_VALUE 1281))
  jcell_GL_INVALID_VALUE))
(set jsetstatic_GL_INVALID_VALUE (fn jsetstatic_GL_INVALID_VALUE [value] (set jcell_GL_INVALID_VALUE value)))

(set jstatic_GL_INVERT (fn jstatic_GL_INVERT []
  (when (= jcell_GL_INVERT :jnone) (set jcell_GL_INVERT 5386))
  jcell_GL_INVERT))
(set jsetstatic_GL_INVERT (fn jsetstatic_GL_INVERT [value] (set jcell_GL_INVERT value)))

(set jstatic_GL_KEEP (fn jstatic_GL_KEEP []
  (when (= jcell_GL_KEEP :jnone) (set jcell_GL_KEEP 7680))
  jcell_GL_KEEP))
(set jsetstatic_GL_KEEP (fn jsetstatic_GL_KEEP [value] (set jcell_GL_KEEP value)))

(set jstatic_GL_LEQUAL (fn jstatic_GL_LEQUAL []
  (when (= jcell_GL_LEQUAL :jnone) (set jcell_GL_LEQUAL 515))
  jcell_GL_LEQUAL))
(set jsetstatic_GL_LEQUAL (fn jsetstatic_GL_LEQUAL [value] (set jcell_GL_LEQUAL value)))

(set jstatic_GL_LESS (fn jstatic_GL_LESS []
  (when (= jcell_GL_LESS :jnone) (set jcell_GL_LESS 513))
  jcell_GL_LESS))
(set jsetstatic_GL_LESS (fn jsetstatic_GL_LESS [value] (set jcell_GL_LESS value)))

(set jstatic_GL_LIGHT_MODEL_AMBIENT (fn jstatic_GL_LIGHT_MODEL_AMBIENT []
  (when (= jcell_GL_LIGHT_MODEL_AMBIENT :jnone) (set jcell_GL_LIGHT_MODEL_AMBIENT 2899))
  jcell_GL_LIGHT_MODEL_AMBIENT))
(set jsetstatic_GL_LIGHT_MODEL_AMBIENT (fn jsetstatic_GL_LIGHT_MODEL_AMBIENT [value] (set jcell_GL_LIGHT_MODEL_AMBIENT value)))

(set jstatic_GL_LIGHT_MODEL_TWO_SIDE (fn jstatic_GL_LIGHT_MODEL_TWO_SIDE []
  (when (= jcell_GL_LIGHT_MODEL_TWO_SIDE :jnone) (set jcell_GL_LIGHT_MODEL_TWO_SIDE 2898))
  jcell_GL_LIGHT_MODEL_TWO_SIDE))
(set jsetstatic_GL_LIGHT_MODEL_TWO_SIDE (fn jsetstatic_GL_LIGHT_MODEL_TWO_SIDE [value] (set jcell_GL_LIGHT_MODEL_TWO_SIDE value)))

(set jstatic_GL_LIGHT0 (fn jstatic_GL_LIGHT0 []
  (when (= jcell_GL_LIGHT0 :jnone) (set jcell_GL_LIGHT0 16384))
  jcell_GL_LIGHT0))
(set jsetstatic_GL_LIGHT0 (fn jsetstatic_GL_LIGHT0 [value] (set jcell_GL_LIGHT0 value)))

(set jstatic_GL_LIGHT1 (fn jstatic_GL_LIGHT1 []
  (when (= jcell_GL_LIGHT1 :jnone) (set jcell_GL_LIGHT1 16385))
  jcell_GL_LIGHT1))
(set jsetstatic_GL_LIGHT1 (fn jsetstatic_GL_LIGHT1 [value] (set jcell_GL_LIGHT1 value)))

(set jstatic_GL_LIGHT2 (fn jstatic_GL_LIGHT2 []
  (when (= jcell_GL_LIGHT2 :jnone) (set jcell_GL_LIGHT2 16386))
  jcell_GL_LIGHT2))
(set jsetstatic_GL_LIGHT2 (fn jsetstatic_GL_LIGHT2 [value] (set jcell_GL_LIGHT2 value)))

(set jstatic_GL_LIGHT3 (fn jstatic_GL_LIGHT3 []
  (when (= jcell_GL_LIGHT3 :jnone) (set jcell_GL_LIGHT3 16387))
  jcell_GL_LIGHT3))
(set jsetstatic_GL_LIGHT3 (fn jsetstatic_GL_LIGHT3 [value] (set jcell_GL_LIGHT3 value)))

(set jstatic_GL_LIGHT4 (fn jstatic_GL_LIGHT4 []
  (when (= jcell_GL_LIGHT4 :jnone) (set jcell_GL_LIGHT4 16388))
  jcell_GL_LIGHT4))
(set jsetstatic_GL_LIGHT4 (fn jsetstatic_GL_LIGHT4 [value] (set jcell_GL_LIGHT4 value)))

(set jstatic_GL_LIGHT5 (fn jstatic_GL_LIGHT5 []
  (when (= jcell_GL_LIGHT5 :jnone) (set jcell_GL_LIGHT5 16389))
  jcell_GL_LIGHT5))
(set jsetstatic_GL_LIGHT5 (fn jsetstatic_GL_LIGHT5 [value] (set jcell_GL_LIGHT5 value)))

(set jstatic_GL_LIGHT6 (fn jstatic_GL_LIGHT6 []
  (when (= jcell_GL_LIGHT6 :jnone) (set jcell_GL_LIGHT6 16390))
  jcell_GL_LIGHT6))
(set jsetstatic_GL_LIGHT6 (fn jsetstatic_GL_LIGHT6 [value] (set jcell_GL_LIGHT6 value)))

(set jstatic_GL_LIGHT7 (fn jstatic_GL_LIGHT7 []
  (when (= jcell_GL_LIGHT7 :jnone) (set jcell_GL_LIGHT7 16391))
  jcell_GL_LIGHT7))
(set jsetstatic_GL_LIGHT7 (fn jsetstatic_GL_LIGHT7 [value] (set jcell_GL_LIGHT7 value)))

(set jstatic_GL_LIGHTING (fn jstatic_GL_LIGHTING []
  (when (= jcell_GL_LIGHTING :jnone) (set jcell_GL_LIGHTING 2896))
  jcell_GL_LIGHTING))
(set jsetstatic_GL_LIGHTING (fn jsetstatic_GL_LIGHTING [value] (set jcell_GL_LIGHTING value)))

(set jstatic_GL_LINE_LOOP (fn jstatic_GL_LINE_LOOP []
  (when (= jcell_GL_LINE_LOOP :jnone) (set jcell_GL_LINE_LOOP 2))
  jcell_GL_LINE_LOOP))
(set jsetstatic_GL_LINE_LOOP (fn jsetstatic_GL_LINE_LOOP [value] (set jcell_GL_LINE_LOOP value)))

(set jstatic_GL_LINE_SMOOTH (fn jstatic_GL_LINE_SMOOTH []
  (when (= jcell_GL_LINE_SMOOTH :jnone) (set jcell_GL_LINE_SMOOTH 2848))
  jcell_GL_LINE_SMOOTH))
(set jsetstatic_GL_LINE_SMOOTH (fn jsetstatic_GL_LINE_SMOOTH [value] (set jcell_GL_LINE_SMOOTH value)))

(set jstatic_GL_LINE_SMOOTH_HINT (fn jstatic_GL_LINE_SMOOTH_HINT []
  (when (= jcell_GL_LINE_SMOOTH_HINT :jnone) (set jcell_GL_LINE_SMOOTH_HINT 3154))
  jcell_GL_LINE_SMOOTH_HINT))
(set jsetstatic_GL_LINE_SMOOTH_HINT (fn jsetstatic_GL_LINE_SMOOTH_HINT [value] (set jcell_GL_LINE_SMOOTH_HINT value)))

(set jstatic_GL_LINE_STRIP (fn jstatic_GL_LINE_STRIP []
  (when (= jcell_GL_LINE_STRIP :jnone) (set jcell_GL_LINE_STRIP 3))
  jcell_GL_LINE_STRIP))
(set jsetstatic_GL_LINE_STRIP (fn jsetstatic_GL_LINE_STRIP [value] (set jcell_GL_LINE_STRIP value)))

(set jstatic_GL_LINEAR (fn jstatic_GL_LINEAR []
  (when (= jcell_GL_LINEAR :jnone) (set jcell_GL_LINEAR 9729))
  jcell_GL_LINEAR))
(set jsetstatic_GL_LINEAR (fn jsetstatic_GL_LINEAR [value] (set jcell_GL_LINEAR value)))

(set jstatic_GL_LINEAR_ATTENUATION (fn jstatic_GL_LINEAR_ATTENUATION []
  (when (= jcell_GL_LINEAR_ATTENUATION :jnone) (set jcell_GL_LINEAR_ATTENUATION 4616))
  jcell_GL_LINEAR_ATTENUATION))
(set jsetstatic_GL_LINEAR_ATTENUATION (fn jsetstatic_GL_LINEAR_ATTENUATION [value] (set jcell_GL_LINEAR_ATTENUATION value)))

(set jstatic_GL_LINEAR_MIPMAP_LINEAR (fn jstatic_GL_LINEAR_MIPMAP_LINEAR []
  (when (= jcell_GL_LINEAR_MIPMAP_LINEAR :jnone) (set jcell_GL_LINEAR_MIPMAP_LINEAR 9987))
  jcell_GL_LINEAR_MIPMAP_LINEAR))
(set jsetstatic_GL_LINEAR_MIPMAP_LINEAR (fn jsetstatic_GL_LINEAR_MIPMAP_LINEAR [value] (set jcell_GL_LINEAR_MIPMAP_LINEAR value)))

(set jstatic_GL_LINEAR_MIPMAP_NEAREST (fn jstatic_GL_LINEAR_MIPMAP_NEAREST []
  (when (= jcell_GL_LINEAR_MIPMAP_NEAREST :jnone) (set jcell_GL_LINEAR_MIPMAP_NEAREST 9985))
  jcell_GL_LINEAR_MIPMAP_NEAREST))
(set jsetstatic_GL_LINEAR_MIPMAP_NEAREST (fn jsetstatic_GL_LINEAR_MIPMAP_NEAREST [value] (set jcell_GL_LINEAR_MIPMAP_NEAREST value)))

(set jstatic_GL_LINES (fn jstatic_GL_LINES []
  (when (= jcell_GL_LINES :jnone) (set jcell_GL_LINES 1))
  jcell_GL_LINES))
(set jsetstatic_GL_LINES (fn jsetstatic_GL_LINES [value] (set jcell_GL_LINES value)))

(set jstatic_GL_LUMINANCE (fn jstatic_GL_LUMINANCE []
  (when (= jcell_GL_LUMINANCE :jnone) (set jcell_GL_LUMINANCE 6409))
  jcell_GL_LUMINANCE))
(set jsetstatic_GL_LUMINANCE (fn jsetstatic_GL_LUMINANCE [value] (set jcell_GL_LUMINANCE value)))

(set jstatic_GL_LUMINANCE_ALPHA (fn jstatic_GL_LUMINANCE_ALPHA []
  (when (= jcell_GL_LUMINANCE_ALPHA :jnone) (set jcell_GL_LUMINANCE_ALPHA 6410))
  jcell_GL_LUMINANCE_ALPHA))
(set jsetstatic_GL_LUMINANCE_ALPHA (fn jsetstatic_GL_LUMINANCE_ALPHA [value] (set jcell_GL_LUMINANCE_ALPHA value)))

(set jstatic_GL_MAX_ELEMENTS_INDICES (fn jstatic_GL_MAX_ELEMENTS_INDICES []
  (when (= jcell_GL_MAX_ELEMENTS_INDICES :jnone) (set jcell_GL_MAX_ELEMENTS_INDICES 33001))
  jcell_GL_MAX_ELEMENTS_INDICES))
(set jsetstatic_GL_MAX_ELEMENTS_INDICES (fn jsetstatic_GL_MAX_ELEMENTS_INDICES [value] (set jcell_GL_MAX_ELEMENTS_INDICES value)))

(set jstatic_GL_MAX_ELEMENTS_VERTICES (fn jstatic_GL_MAX_ELEMENTS_VERTICES []
  (when (= jcell_GL_MAX_ELEMENTS_VERTICES :jnone) (set jcell_GL_MAX_ELEMENTS_VERTICES 33000))
  jcell_GL_MAX_ELEMENTS_VERTICES))
(set jsetstatic_GL_MAX_ELEMENTS_VERTICES (fn jsetstatic_GL_MAX_ELEMENTS_VERTICES [value] (set jcell_GL_MAX_ELEMENTS_VERTICES value)))

(set jstatic_GL_MAX_LIGHTS (fn jstatic_GL_MAX_LIGHTS []
  (when (= jcell_GL_MAX_LIGHTS :jnone) (set jcell_GL_MAX_LIGHTS 3377))
  jcell_GL_MAX_LIGHTS))
(set jsetstatic_GL_MAX_LIGHTS (fn jsetstatic_GL_MAX_LIGHTS [value] (set jcell_GL_MAX_LIGHTS value)))

(set jstatic_GL_MAX_MODELVIEW_STACK_DEPTH (fn jstatic_GL_MAX_MODELVIEW_STACK_DEPTH []
  (when (= jcell_GL_MAX_MODELVIEW_STACK_DEPTH :jnone) (set jcell_GL_MAX_MODELVIEW_STACK_DEPTH 3382))
  jcell_GL_MAX_MODELVIEW_STACK_DEPTH))
(set jsetstatic_GL_MAX_MODELVIEW_STACK_DEPTH (fn jsetstatic_GL_MAX_MODELVIEW_STACK_DEPTH [value] (set jcell_GL_MAX_MODELVIEW_STACK_DEPTH value)))

(set jstatic_GL_MAX_PROJECTION_STACK_DEPTH (fn jstatic_GL_MAX_PROJECTION_STACK_DEPTH []
  (when (= jcell_GL_MAX_PROJECTION_STACK_DEPTH :jnone) (set jcell_GL_MAX_PROJECTION_STACK_DEPTH 3384))
  jcell_GL_MAX_PROJECTION_STACK_DEPTH))
(set jsetstatic_GL_MAX_PROJECTION_STACK_DEPTH (fn jsetstatic_GL_MAX_PROJECTION_STACK_DEPTH [value] (set jcell_GL_MAX_PROJECTION_STACK_DEPTH value)))

(set jstatic_GL_MAX_TEXTURE_SIZE (fn jstatic_GL_MAX_TEXTURE_SIZE []
  (when (= jcell_GL_MAX_TEXTURE_SIZE :jnone) (set jcell_GL_MAX_TEXTURE_SIZE 3379))
  jcell_GL_MAX_TEXTURE_SIZE))
(set jsetstatic_GL_MAX_TEXTURE_SIZE (fn jsetstatic_GL_MAX_TEXTURE_SIZE [value] (set jcell_GL_MAX_TEXTURE_SIZE value)))

(set jstatic_GL_MAX_TEXTURE_STACK_DEPTH (fn jstatic_GL_MAX_TEXTURE_STACK_DEPTH []
  (when (= jcell_GL_MAX_TEXTURE_STACK_DEPTH :jnone) (set jcell_GL_MAX_TEXTURE_STACK_DEPTH 3385))
  jcell_GL_MAX_TEXTURE_STACK_DEPTH))
(set jsetstatic_GL_MAX_TEXTURE_STACK_DEPTH (fn jsetstatic_GL_MAX_TEXTURE_STACK_DEPTH [value] (set jcell_GL_MAX_TEXTURE_STACK_DEPTH value)))

(set jstatic_GL_MAX_TEXTURE_UNITS (fn jstatic_GL_MAX_TEXTURE_UNITS []
  (when (= jcell_GL_MAX_TEXTURE_UNITS :jnone) (set jcell_GL_MAX_TEXTURE_UNITS 34018))
  jcell_GL_MAX_TEXTURE_UNITS))
(set jsetstatic_GL_MAX_TEXTURE_UNITS (fn jsetstatic_GL_MAX_TEXTURE_UNITS [value] (set jcell_GL_MAX_TEXTURE_UNITS value)))

(set jstatic_GL_MAX_VIEWPORT_DIMS (fn jstatic_GL_MAX_VIEWPORT_DIMS []
  (when (= jcell_GL_MAX_VIEWPORT_DIMS :jnone) (set jcell_GL_MAX_VIEWPORT_DIMS 3386))
  jcell_GL_MAX_VIEWPORT_DIMS))
(set jsetstatic_GL_MAX_VIEWPORT_DIMS (fn jsetstatic_GL_MAX_VIEWPORT_DIMS [value] (set jcell_GL_MAX_VIEWPORT_DIMS value)))

(set jstatic_GL_MODELVIEW (fn jstatic_GL_MODELVIEW []
  (when (= jcell_GL_MODELVIEW :jnone) (set jcell_GL_MODELVIEW 5888))
  jcell_GL_MODELVIEW))
(set jsetstatic_GL_MODELVIEW (fn jsetstatic_GL_MODELVIEW [value] (set jcell_GL_MODELVIEW value)))

(set jstatic_GL_MODULATE (fn jstatic_GL_MODULATE []
  (when (= jcell_GL_MODULATE :jnone) (set jcell_GL_MODULATE 8448))
  jcell_GL_MODULATE))
(set jsetstatic_GL_MODULATE (fn jsetstatic_GL_MODULATE [value] (set jcell_GL_MODULATE value)))

(set jstatic_GL_MULTISAMPLE (fn jstatic_GL_MULTISAMPLE []
  (when (= jcell_GL_MULTISAMPLE :jnone) (set jcell_GL_MULTISAMPLE 32925))
  jcell_GL_MULTISAMPLE))
(set jsetstatic_GL_MULTISAMPLE (fn jsetstatic_GL_MULTISAMPLE [value] (set jcell_GL_MULTISAMPLE value)))

(set jstatic_GL_NAND (fn jstatic_GL_NAND []
  (when (= jcell_GL_NAND :jnone) (set jcell_GL_NAND 5390))
  jcell_GL_NAND))
(set jsetstatic_GL_NAND (fn jsetstatic_GL_NAND [value] (set jcell_GL_NAND value)))

(set jstatic_GL_NEAREST (fn jstatic_GL_NEAREST []
  (when (= jcell_GL_NEAREST :jnone) (set jcell_GL_NEAREST 9728))
  jcell_GL_NEAREST))
(set jsetstatic_GL_NEAREST (fn jsetstatic_GL_NEAREST [value] (set jcell_GL_NEAREST value)))

(set jstatic_GL_NEAREST_MIPMAP_LINEAR (fn jstatic_GL_NEAREST_MIPMAP_LINEAR []
  (when (= jcell_GL_NEAREST_MIPMAP_LINEAR :jnone) (set jcell_GL_NEAREST_MIPMAP_LINEAR 9986))
  jcell_GL_NEAREST_MIPMAP_LINEAR))
(set jsetstatic_GL_NEAREST_MIPMAP_LINEAR (fn jsetstatic_GL_NEAREST_MIPMAP_LINEAR [value] (set jcell_GL_NEAREST_MIPMAP_LINEAR value)))

(set jstatic_GL_NEAREST_MIPMAP_NEAREST (fn jstatic_GL_NEAREST_MIPMAP_NEAREST []
  (when (= jcell_GL_NEAREST_MIPMAP_NEAREST :jnone) (set jcell_GL_NEAREST_MIPMAP_NEAREST 9984))
  jcell_GL_NEAREST_MIPMAP_NEAREST))
(set jsetstatic_GL_NEAREST_MIPMAP_NEAREST (fn jsetstatic_GL_NEAREST_MIPMAP_NEAREST [value] (set jcell_GL_NEAREST_MIPMAP_NEAREST value)))

(set jstatic_GL_NEVER (fn jstatic_GL_NEVER []
  (when (= jcell_GL_NEVER :jnone) (set jcell_GL_NEVER 512))
  jcell_GL_NEVER))
(set jsetstatic_GL_NEVER (fn jsetstatic_GL_NEVER [value] (set jcell_GL_NEVER value)))

(set jstatic_GL_NICEST (fn jstatic_GL_NICEST []
  (when (= jcell_GL_NICEST :jnone) (set jcell_GL_NICEST 4354))
  jcell_GL_NICEST))
(set jsetstatic_GL_NICEST (fn jsetstatic_GL_NICEST [value] (set jcell_GL_NICEST value)))

(set jstatic_GL_NO_ERROR (fn jstatic_GL_NO_ERROR []
  (when (= jcell_GL_NO_ERROR :jnone) (set jcell_GL_NO_ERROR 0))
  jcell_GL_NO_ERROR))
(set jsetstatic_GL_NO_ERROR (fn jsetstatic_GL_NO_ERROR [value] (set jcell_GL_NO_ERROR value)))

(set jstatic_GL_NOOP (fn jstatic_GL_NOOP []
  (when (= jcell_GL_NOOP :jnone) (set jcell_GL_NOOP 5381))
  jcell_GL_NOOP))
(set jsetstatic_GL_NOOP (fn jsetstatic_GL_NOOP [value] (set jcell_GL_NOOP value)))

(set jstatic_GL_NOR (fn jstatic_GL_NOR []
  (when (= jcell_GL_NOR :jnone) (set jcell_GL_NOR 5384))
  jcell_GL_NOR))
(set jsetstatic_GL_NOR (fn jsetstatic_GL_NOR [value] (set jcell_GL_NOR value)))

(set jstatic_GL_NORMAL_ARRAY (fn jstatic_GL_NORMAL_ARRAY []
  (when (= jcell_GL_NORMAL_ARRAY :jnone) (set jcell_GL_NORMAL_ARRAY 32885))
  jcell_GL_NORMAL_ARRAY))
(set jsetstatic_GL_NORMAL_ARRAY (fn jsetstatic_GL_NORMAL_ARRAY [value] (set jcell_GL_NORMAL_ARRAY value)))

(set jstatic_GL_NORMALIZE (fn jstatic_GL_NORMALIZE []
  (when (= jcell_GL_NORMALIZE :jnone) (set jcell_GL_NORMALIZE 2977))
  jcell_GL_NORMALIZE))
(set jsetstatic_GL_NORMALIZE (fn jsetstatic_GL_NORMALIZE [value] (set jcell_GL_NORMALIZE value)))

(set jstatic_GL_NOTEQUAL (fn jstatic_GL_NOTEQUAL []
  (when (= jcell_GL_NOTEQUAL :jnone) (set jcell_GL_NOTEQUAL 517))
  jcell_GL_NOTEQUAL))
(set jsetstatic_GL_NOTEQUAL (fn jsetstatic_GL_NOTEQUAL [value] (set jcell_GL_NOTEQUAL value)))

(set jstatic_GL_NUM_COMPRESSED_TEXTURE_FORMATS (fn jstatic_GL_NUM_COMPRESSED_TEXTURE_FORMATS []
  (when (= jcell_GL_NUM_COMPRESSED_TEXTURE_FORMATS :jnone) (set jcell_GL_NUM_COMPRESSED_TEXTURE_FORMATS 34466))
  jcell_GL_NUM_COMPRESSED_TEXTURE_FORMATS))
(set jsetstatic_GL_NUM_COMPRESSED_TEXTURE_FORMATS (fn jsetstatic_GL_NUM_COMPRESSED_TEXTURE_FORMATS [value] (set jcell_GL_NUM_COMPRESSED_TEXTURE_FORMATS value)))

(set jstatic_GL_ONE (fn jstatic_GL_ONE []
  (when (= jcell_GL_ONE :jnone) (set jcell_GL_ONE 1))
  jcell_GL_ONE))
(set jsetstatic_GL_ONE (fn jsetstatic_GL_ONE [value] (set jcell_GL_ONE value)))

(set jstatic_GL_ONE_MINUS_DST_ALPHA (fn jstatic_GL_ONE_MINUS_DST_ALPHA []
  (when (= jcell_GL_ONE_MINUS_DST_ALPHA :jnone) (set jcell_GL_ONE_MINUS_DST_ALPHA 773))
  jcell_GL_ONE_MINUS_DST_ALPHA))
(set jsetstatic_GL_ONE_MINUS_DST_ALPHA (fn jsetstatic_GL_ONE_MINUS_DST_ALPHA [value] (set jcell_GL_ONE_MINUS_DST_ALPHA value)))

(set jstatic_GL_ONE_MINUS_DST_COLOR (fn jstatic_GL_ONE_MINUS_DST_COLOR []
  (when (= jcell_GL_ONE_MINUS_DST_COLOR :jnone) (set jcell_GL_ONE_MINUS_DST_COLOR 775))
  jcell_GL_ONE_MINUS_DST_COLOR))
(set jsetstatic_GL_ONE_MINUS_DST_COLOR (fn jsetstatic_GL_ONE_MINUS_DST_COLOR [value] (set jcell_GL_ONE_MINUS_DST_COLOR value)))

(set jstatic_GL_ONE_MINUS_SRC_ALPHA (fn jstatic_GL_ONE_MINUS_SRC_ALPHA []
  (when (= jcell_GL_ONE_MINUS_SRC_ALPHA :jnone) (set jcell_GL_ONE_MINUS_SRC_ALPHA 771))
  jcell_GL_ONE_MINUS_SRC_ALPHA))
(set jsetstatic_GL_ONE_MINUS_SRC_ALPHA (fn jsetstatic_GL_ONE_MINUS_SRC_ALPHA [value] (set jcell_GL_ONE_MINUS_SRC_ALPHA value)))

(set jstatic_GL_ONE_MINUS_SRC_COLOR (fn jstatic_GL_ONE_MINUS_SRC_COLOR []
  (when (= jcell_GL_ONE_MINUS_SRC_COLOR :jnone) (set jcell_GL_ONE_MINUS_SRC_COLOR 769))
  jcell_GL_ONE_MINUS_SRC_COLOR))
(set jsetstatic_GL_ONE_MINUS_SRC_COLOR (fn jsetstatic_GL_ONE_MINUS_SRC_COLOR [value] (set jcell_GL_ONE_MINUS_SRC_COLOR value)))

(set jstatic_GL_OR (fn jstatic_GL_OR []
  (when (= jcell_GL_OR :jnone) (set jcell_GL_OR 5383))
  jcell_GL_OR))
(set jsetstatic_GL_OR (fn jsetstatic_GL_OR [value] (set jcell_GL_OR value)))

(set jstatic_GL_OR_INVERTED (fn jstatic_GL_OR_INVERTED []
  (when (= jcell_GL_OR_INVERTED :jnone) (set jcell_GL_OR_INVERTED 5389))
  jcell_GL_OR_INVERTED))
(set jsetstatic_GL_OR_INVERTED (fn jsetstatic_GL_OR_INVERTED [value] (set jcell_GL_OR_INVERTED value)))

(set jstatic_GL_OR_REVERSE (fn jstatic_GL_OR_REVERSE []
  (when (= jcell_GL_OR_REVERSE :jnone) (set jcell_GL_OR_REVERSE 5387))
  jcell_GL_OR_REVERSE))
(set jsetstatic_GL_OR_REVERSE (fn jsetstatic_GL_OR_REVERSE [value] (set jcell_GL_OR_REVERSE value)))

(set jstatic_GL_OUT_OF_MEMORY (fn jstatic_GL_OUT_OF_MEMORY []
  (when (= jcell_GL_OUT_OF_MEMORY :jnone) (set jcell_GL_OUT_OF_MEMORY 1285))
  jcell_GL_OUT_OF_MEMORY))
(set jsetstatic_GL_OUT_OF_MEMORY (fn jsetstatic_GL_OUT_OF_MEMORY [value] (set jcell_GL_OUT_OF_MEMORY value)))

(set jstatic_GL_PACK_ALIGNMENT (fn jstatic_GL_PACK_ALIGNMENT []
  (when (= jcell_GL_PACK_ALIGNMENT :jnone) (set jcell_GL_PACK_ALIGNMENT 3333))
  jcell_GL_PACK_ALIGNMENT))
(set jsetstatic_GL_PACK_ALIGNMENT (fn jsetstatic_GL_PACK_ALIGNMENT [value] (set jcell_GL_PACK_ALIGNMENT value)))

(set jstatic_GL_PALETTE4_R5_G6_B5_OES (fn jstatic_GL_PALETTE4_R5_G6_B5_OES []
  (when (= jcell_GL_PALETTE4_R5_G6_B5_OES :jnone) (set jcell_GL_PALETTE4_R5_G6_B5_OES 35730))
  jcell_GL_PALETTE4_R5_G6_B5_OES))
(set jsetstatic_GL_PALETTE4_R5_G6_B5_OES (fn jsetstatic_GL_PALETTE4_R5_G6_B5_OES [value] (set jcell_GL_PALETTE4_R5_G6_B5_OES value)))

(set jstatic_GL_PALETTE4_RGB5_A1_OES (fn jstatic_GL_PALETTE4_RGB5_A1_OES []
  (when (= jcell_GL_PALETTE4_RGB5_A1_OES :jnone) (set jcell_GL_PALETTE4_RGB5_A1_OES 35732))
  jcell_GL_PALETTE4_RGB5_A1_OES))
(set jsetstatic_GL_PALETTE4_RGB5_A1_OES (fn jsetstatic_GL_PALETTE4_RGB5_A1_OES [value] (set jcell_GL_PALETTE4_RGB5_A1_OES value)))

(set jstatic_GL_PALETTE4_RGB8_OES (fn jstatic_GL_PALETTE4_RGB8_OES []
  (when (= jcell_GL_PALETTE4_RGB8_OES :jnone) (set jcell_GL_PALETTE4_RGB8_OES 35728))
  jcell_GL_PALETTE4_RGB8_OES))
(set jsetstatic_GL_PALETTE4_RGB8_OES (fn jsetstatic_GL_PALETTE4_RGB8_OES [value] (set jcell_GL_PALETTE4_RGB8_OES value)))

(set jstatic_GL_PALETTE4_RGBA4_OES (fn jstatic_GL_PALETTE4_RGBA4_OES []
  (when (= jcell_GL_PALETTE4_RGBA4_OES :jnone) (set jcell_GL_PALETTE4_RGBA4_OES 35731))
  jcell_GL_PALETTE4_RGBA4_OES))
(set jsetstatic_GL_PALETTE4_RGBA4_OES (fn jsetstatic_GL_PALETTE4_RGBA4_OES [value] (set jcell_GL_PALETTE4_RGBA4_OES value)))

(set jstatic_GL_PALETTE4_RGBA8_OES (fn jstatic_GL_PALETTE4_RGBA8_OES []
  (when (= jcell_GL_PALETTE4_RGBA8_OES :jnone) (set jcell_GL_PALETTE4_RGBA8_OES 35729))
  jcell_GL_PALETTE4_RGBA8_OES))
(set jsetstatic_GL_PALETTE4_RGBA8_OES (fn jsetstatic_GL_PALETTE4_RGBA8_OES [value] (set jcell_GL_PALETTE4_RGBA8_OES value)))

(set jstatic_GL_PALETTE8_R5_G6_B5_OES (fn jstatic_GL_PALETTE8_R5_G6_B5_OES []
  (when (= jcell_GL_PALETTE8_R5_G6_B5_OES :jnone) (set jcell_GL_PALETTE8_R5_G6_B5_OES 35735))
  jcell_GL_PALETTE8_R5_G6_B5_OES))
(set jsetstatic_GL_PALETTE8_R5_G6_B5_OES (fn jsetstatic_GL_PALETTE8_R5_G6_B5_OES [value] (set jcell_GL_PALETTE8_R5_G6_B5_OES value)))

(set jstatic_GL_PALETTE8_RGB5_A1_OES (fn jstatic_GL_PALETTE8_RGB5_A1_OES []
  (when (= jcell_GL_PALETTE8_RGB5_A1_OES :jnone) (set jcell_GL_PALETTE8_RGB5_A1_OES 35737))
  jcell_GL_PALETTE8_RGB5_A1_OES))
(set jsetstatic_GL_PALETTE8_RGB5_A1_OES (fn jsetstatic_GL_PALETTE8_RGB5_A1_OES [value] (set jcell_GL_PALETTE8_RGB5_A1_OES value)))

(set jstatic_GL_PALETTE8_RGB8_OES (fn jstatic_GL_PALETTE8_RGB8_OES []
  (when (= jcell_GL_PALETTE8_RGB8_OES :jnone) (set jcell_GL_PALETTE8_RGB8_OES 35733))
  jcell_GL_PALETTE8_RGB8_OES))
(set jsetstatic_GL_PALETTE8_RGB8_OES (fn jsetstatic_GL_PALETTE8_RGB8_OES [value] (set jcell_GL_PALETTE8_RGB8_OES value)))

(set jstatic_GL_PALETTE8_RGBA4_OES (fn jstatic_GL_PALETTE8_RGBA4_OES []
  (when (= jcell_GL_PALETTE8_RGBA4_OES :jnone) (set jcell_GL_PALETTE8_RGBA4_OES 35736))
  jcell_GL_PALETTE8_RGBA4_OES))
(set jsetstatic_GL_PALETTE8_RGBA4_OES (fn jsetstatic_GL_PALETTE8_RGBA4_OES [value] (set jcell_GL_PALETTE8_RGBA4_OES value)))

(set jstatic_GL_PALETTE8_RGBA8_OES (fn jstatic_GL_PALETTE8_RGBA8_OES []
  (when (= jcell_GL_PALETTE8_RGBA8_OES :jnone) (set jcell_GL_PALETTE8_RGBA8_OES 35734))
  jcell_GL_PALETTE8_RGBA8_OES))
(set jsetstatic_GL_PALETTE8_RGBA8_OES (fn jsetstatic_GL_PALETTE8_RGBA8_OES [value] (set jcell_GL_PALETTE8_RGBA8_OES value)))

(set jstatic_GL_PERSPECTIVE_CORRECTION_HINT (fn jstatic_GL_PERSPECTIVE_CORRECTION_HINT []
  (when (= jcell_GL_PERSPECTIVE_CORRECTION_HINT :jnone) (set jcell_GL_PERSPECTIVE_CORRECTION_HINT 3152))
  jcell_GL_PERSPECTIVE_CORRECTION_HINT))
(set jsetstatic_GL_PERSPECTIVE_CORRECTION_HINT (fn jsetstatic_GL_PERSPECTIVE_CORRECTION_HINT [value] (set jcell_GL_PERSPECTIVE_CORRECTION_HINT value)))

(set jstatic_GL_POINT_SMOOTH (fn jstatic_GL_POINT_SMOOTH []
  (when (= jcell_GL_POINT_SMOOTH :jnone) (set jcell_GL_POINT_SMOOTH 2832))
  jcell_GL_POINT_SMOOTH))
(set jsetstatic_GL_POINT_SMOOTH (fn jsetstatic_GL_POINT_SMOOTH [value] (set jcell_GL_POINT_SMOOTH value)))

(set jstatic_GL_POINT_SMOOTH_HINT (fn jstatic_GL_POINT_SMOOTH_HINT []
  (when (= jcell_GL_POINT_SMOOTH_HINT :jnone) (set jcell_GL_POINT_SMOOTH_HINT 3153))
  jcell_GL_POINT_SMOOTH_HINT))
(set jsetstatic_GL_POINT_SMOOTH_HINT (fn jsetstatic_GL_POINT_SMOOTH_HINT [value] (set jcell_GL_POINT_SMOOTH_HINT value)))

(set jstatic_GL_POINTS (fn jstatic_GL_POINTS []
  (when (= jcell_GL_POINTS :jnone) (set jcell_GL_POINTS 0))
  jcell_GL_POINTS))
(set jsetstatic_GL_POINTS (fn jsetstatic_GL_POINTS [value] (set jcell_GL_POINTS value)))

(set jstatic_GL_POINT_FADE_THRESHOLD_SIZE (fn jstatic_GL_POINT_FADE_THRESHOLD_SIZE []
  (when (= jcell_GL_POINT_FADE_THRESHOLD_SIZE :jnone) (set jcell_GL_POINT_FADE_THRESHOLD_SIZE 33064))
  jcell_GL_POINT_FADE_THRESHOLD_SIZE))
(set jsetstatic_GL_POINT_FADE_THRESHOLD_SIZE (fn jsetstatic_GL_POINT_FADE_THRESHOLD_SIZE [value] (set jcell_GL_POINT_FADE_THRESHOLD_SIZE value)))

(set jstatic_GL_POINT_SIZE (fn jstatic_GL_POINT_SIZE []
  (when (= jcell_GL_POINT_SIZE :jnone) (set jcell_GL_POINT_SIZE 2833))
  jcell_GL_POINT_SIZE))
(set jsetstatic_GL_POINT_SIZE (fn jsetstatic_GL_POINT_SIZE [value] (set jcell_GL_POINT_SIZE value)))

(set jstatic_GL_POLYGON_OFFSET_FILL (fn jstatic_GL_POLYGON_OFFSET_FILL []
  (when (= jcell_GL_POLYGON_OFFSET_FILL :jnone) (set jcell_GL_POLYGON_OFFSET_FILL 32823))
  jcell_GL_POLYGON_OFFSET_FILL))
(set jsetstatic_GL_POLYGON_OFFSET_FILL (fn jsetstatic_GL_POLYGON_OFFSET_FILL [value] (set jcell_GL_POLYGON_OFFSET_FILL value)))

(set jstatic_GL_POLYGON_SMOOTH_HINT (fn jstatic_GL_POLYGON_SMOOTH_HINT []
  (when (= jcell_GL_POLYGON_SMOOTH_HINT :jnone) (set jcell_GL_POLYGON_SMOOTH_HINT 3155))
  jcell_GL_POLYGON_SMOOTH_HINT))
(set jsetstatic_GL_POLYGON_SMOOTH_HINT (fn jsetstatic_GL_POLYGON_SMOOTH_HINT [value] (set jcell_GL_POLYGON_SMOOTH_HINT value)))

(set jstatic_GL_POSITION (fn jstatic_GL_POSITION []
  (when (= jcell_GL_POSITION :jnone) (set jcell_GL_POSITION 4611))
  jcell_GL_POSITION))
(set jsetstatic_GL_POSITION (fn jsetstatic_GL_POSITION [value] (set jcell_GL_POSITION value)))

(set jstatic_GL_PROJECTION (fn jstatic_GL_PROJECTION []
  (when (= jcell_GL_PROJECTION :jnone) (set jcell_GL_PROJECTION 5889))
  jcell_GL_PROJECTION))
(set jsetstatic_GL_PROJECTION (fn jsetstatic_GL_PROJECTION [value] (set jcell_GL_PROJECTION value)))

(set jstatic_GL_QUADRATIC_ATTENUATION (fn jstatic_GL_QUADRATIC_ATTENUATION []
  (when (= jcell_GL_QUADRATIC_ATTENUATION :jnone) (set jcell_GL_QUADRATIC_ATTENUATION 4617))
  jcell_GL_QUADRATIC_ATTENUATION))
(set jsetstatic_GL_QUADRATIC_ATTENUATION (fn jsetstatic_GL_QUADRATIC_ATTENUATION [value] (set jcell_GL_QUADRATIC_ATTENUATION value)))

(set jstatic_GL_RED_BITS (fn jstatic_GL_RED_BITS []
  (when (= jcell_GL_RED_BITS :jnone) (set jcell_GL_RED_BITS 3410))
  jcell_GL_RED_BITS))
(set jsetstatic_GL_RED_BITS (fn jsetstatic_GL_RED_BITS [value] (set jcell_GL_RED_BITS value)))

(set jstatic_GL_RENDERER (fn jstatic_GL_RENDERER []
  (when (= jcell_GL_RENDERER :jnone) (set jcell_GL_RENDERER 7937))
  jcell_GL_RENDERER))
(set jsetstatic_GL_RENDERER (fn jsetstatic_GL_RENDERER [value] (set jcell_GL_RENDERER value)))

(set jstatic_GL_REPEAT (fn jstatic_GL_REPEAT []
  (when (= jcell_GL_REPEAT :jnone) (set jcell_GL_REPEAT 10497))
  jcell_GL_REPEAT))
(set jsetstatic_GL_REPEAT (fn jsetstatic_GL_REPEAT [value] (set jcell_GL_REPEAT value)))

(set jstatic_GL_REPLACE (fn jstatic_GL_REPLACE []
  (when (= jcell_GL_REPLACE :jnone) (set jcell_GL_REPLACE 7681))
  jcell_GL_REPLACE))
(set jsetstatic_GL_REPLACE (fn jsetstatic_GL_REPLACE [value] (set jcell_GL_REPLACE value)))

(set jstatic_GL_RESCALE_NORMAL (fn jstatic_GL_RESCALE_NORMAL []
  (when (= jcell_GL_RESCALE_NORMAL :jnone) (set jcell_GL_RESCALE_NORMAL 32826))
  jcell_GL_RESCALE_NORMAL))
(set jsetstatic_GL_RESCALE_NORMAL (fn jsetstatic_GL_RESCALE_NORMAL [value] (set jcell_GL_RESCALE_NORMAL value)))

(set jstatic_GL_RGB (fn jstatic_GL_RGB []
  (when (= jcell_GL_RGB :jnone) (set jcell_GL_RGB 6407))
  jcell_GL_RGB))
(set jsetstatic_GL_RGB (fn jsetstatic_GL_RGB [value] (set jcell_GL_RGB value)))

(set jstatic_GL_RGBA (fn jstatic_GL_RGBA []
  (when (= jcell_GL_RGBA :jnone) (set jcell_GL_RGBA 6408))
  jcell_GL_RGBA))
(set jsetstatic_GL_RGBA (fn jsetstatic_GL_RGBA [value] (set jcell_GL_RGBA value)))

(set jstatic_GL_SAMPLE_ALPHA_TO_COVERAGE (fn jstatic_GL_SAMPLE_ALPHA_TO_COVERAGE []
  (when (= jcell_GL_SAMPLE_ALPHA_TO_COVERAGE :jnone) (set jcell_GL_SAMPLE_ALPHA_TO_COVERAGE 32926))
  jcell_GL_SAMPLE_ALPHA_TO_COVERAGE))
(set jsetstatic_GL_SAMPLE_ALPHA_TO_COVERAGE (fn jsetstatic_GL_SAMPLE_ALPHA_TO_COVERAGE [value] (set jcell_GL_SAMPLE_ALPHA_TO_COVERAGE value)))

(set jstatic_GL_SAMPLE_ALPHA_TO_ONE (fn jstatic_GL_SAMPLE_ALPHA_TO_ONE []
  (when (= jcell_GL_SAMPLE_ALPHA_TO_ONE :jnone) (set jcell_GL_SAMPLE_ALPHA_TO_ONE 32927))
  jcell_GL_SAMPLE_ALPHA_TO_ONE))
(set jsetstatic_GL_SAMPLE_ALPHA_TO_ONE (fn jsetstatic_GL_SAMPLE_ALPHA_TO_ONE [value] (set jcell_GL_SAMPLE_ALPHA_TO_ONE value)))

(set jstatic_GL_SAMPLE_COVERAGE (fn jstatic_GL_SAMPLE_COVERAGE []
  (when (= jcell_GL_SAMPLE_COVERAGE :jnone) (set jcell_GL_SAMPLE_COVERAGE 32928))
  jcell_GL_SAMPLE_COVERAGE))
(set jsetstatic_GL_SAMPLE_COVERAGE (fn jsetstatic_GL_SAMPLE_COVERAGE [value] (set jcell_GL_SAMPLE_COVERAGE value)))

(set jstatic_GL_SCISSOR_TEST (fn jstatic_GL_SCISSOR_TEST []
  (when (= jcell_GL_SCISSOR_TEST :jnone) (set jcell_GL_SCISSOR_TEST 3089))
  jcell_GL_SCISSOR_TEST))
(set jsetstatic_GL_SCISSOR_TEST (fn jsetstatic_GL_SCISSOR_TEST [value] (set jcell_GL_SCISSOR_TEST value)))

(set jstatic_GL_SET (fn jstatic_GL_SET []
  (when (= jcell_GL_SET :jnone) (set jcell_GL_SET 5391))
  jcell_GL_SET))
(set jsetstatic_GL_SET (fn jsetstatic_GL_SET [value] (set jcell_GL_SET value)))

(set jstatic_GL_SHININESS (fn jstatic_GL_SHININESS []
  (when (= jcell_GL_SHININESS :jnone) (set jcell_GL_SHININESS 5633))
  jcell_GL_SHININESS))
(set jsetstatic_GL_SHININESS (fn jsetstatic_GL_SHININESS [value] (set jcell_GL_SHININESS value)))

(set jstatic_GL_SHORT (fn jstatic_GL_SHORT []
  (when (= jcell_GL_SHORT :jnone) (set jcell_GL_SHORT 5122))
  jcell_GL_SHORT))
(set jsetstatic_GL_SHORT (fn jsetstatic_GL_SHORT [value] (set jcell_GL_SHORT value)))

(set jstatic_GL_SMOOTH (fn jstatic_GL_SMOOTH []
  (when (= jcell_GL_SMOOTH :jnone) (set jcell_GL_SMOOTH 7425))
  jcell_GL_SMOOTH))
(set jsetstatic_GL_SMOOTH (fn jsetstatic_GL_SMOOTH [value] (set jcell_GL_SMOOTH value)))

(set jstatic_GL_SMOOTH_LINE_WIDTH_RANGE (fn jstatic_GL_SMOOTH_LINE_WIDTH_RANGE []
  (when (= jcell_GL_SMOOTH_LINE_WIDTH_RANGE :jnone) (set jcell_GL_SMOOTH_LINE_WIDTH_RANGE 2850))
  jcell_GL_SMOOTH_LINE_WIDTH_RANGE))
(set jsetstatic_GL_SMOOTH_LINE_WIDTH_RANGE (fn jsetstatic_GL_SMOOTH_LINE_WIDTH_RANGE [value] (set jcell_GL_SMOOTH_LINE_WIDTH_RANGE value)))

(set jstatic_GL_SMOOTH_POINT_SIZE_RANGE (fn jstatic_GL_SMOOTH_POINT_SIZE_RANGE []
  (when (= jcell_GL_SMOOTH_POINT_SIZE_RANGE :jnone) (set jcell_GL_SMOOTH_POINT_SIZE_RANGE 2834))
  jcell_GL_SMOOTH_POINT_SIZE_RANGE))
(set jsetstatic_GL_SMOOTH_POINT_SIZE_RANGE (fn jsetstatic_GL_SMOOTH_POINT_SIZE_RANGE [value] (set jcell_GL_SMOOTH_POINT_SIZE_RANGE value)))

(set jstatic_GL_SPECULAR (fn jstatic_GL_SPECULAR []
  (when (= jcell_GL_SPECULAR :jnone) (set jcell_GL_SPECULAR 4610))
  jcell_GL_SPECULAR))
(set jsetstatic_GL_SPECULAR (fn jsetstatic_GL_SPECULAR [value] (set jcell_GL_SPECULAR value)))

(set jstatic_GL_SPOT_CUTOFF (fn jstatic_GL_SPOT_CUTOFF []
  (when (= jcell_GL_SPOT_CUTOFF :jnone) (set jcell_GL_SPOT_CUTOFF 4614))
  jcell_GL_SPOT_CUTOFF))
(set jsetstatic_GL_SPOT_CUTOFF (fn jsetstatic_GL_SPOT_CUTOFF [value] (set jcell_GL_SPOT_CUTOFF value)))

(set jstatic_GL_SPOT_DIRECTION (fn jstatic_GL_SPOT_DIRECTION []
  (when (= jcell_GL_SPOT_DIRECTION :jnone) (set jcell_GL_SPOT_DIRECTION 4612))
  jcell_GL_SPOT_DIRECTION))
(set jsetstatic_GL_SPOT_DIRECTION (fn jsetstatic_GL_SPOT_DIRECTION [value] (set jcell_GL_SPOT_DIRECTION value)))

(set jstatic_GL_SPOT_EXPONENT (fn jstatic_GL_SPOT_EXPONENT []
  (when (= jcell_GL_SPOT_EXPONENT :jnone) (set jcell_GL_SPOT_EXPONENT 4613))
  jcell_GL_SPOT_EXPONENT))
(set jsetstatic_GL_SPOT_EXPONENT (fn jsetstatic_GL_SPOT_EXPONENT [value] (set jcell_GL_SPOT_EXPONENT value)))

(set jstatic_GL_SRC_ALPHA (fn jstatic_GL_SRC_ALPHA []
  (when (= jcell_GL_SRC_ALPHA :jnone) (set jcell_GL_SRC_ALPHA 770))
  jcell_GL_SRC_ALPHA))
(set jsetstatic_GL_SRC_ALPHA (fn jsetstatic_GL_SRC_ALPHA [value] (set jcell_GL_SRC_ALPHA value)))

(set jstatic_GL_SRC_ALPHA_SATURATE (fn jstatic_GL_SRC_ALPHA_SATURATE []
  (when (= jcell_GL_SRC_ALPHA_SATURATE :jnone) (set jcell_GL_SRC_ALPHA_SATURATE 776))
  jcell_GL_SRC_ALPHA_SATURATE))
(set jsetstatic_GL_SRC_ALPHA_SATURATE (fn jsetstatic_GL_SRC_ALPHA_SATURATE [value] (set jcell_GL_SRC_ALPHA_SATURATE value)))

(set jstatic_GL_SRC_COLOR (fn jstatic_GL_SRC_COLOR []
  (when (= jcell_GL_SRC_COLOR :jnone) (set jcell_GL_SRC_COLOR 768))
  jcell_GL_SRC_COLOR))
(set jsetstatic_GL_SRC_COLOR (fn jsetstatic_GL_SRC_COLOR [value] (set jcell_GL_SRC_COLOR value)))

(set jstatic_GL_STACK_OVERFLOW (fn jstatic_GL_STACK_OVERFLOW []
  (when (= jcell_GL_STACK_OVERFLOW :jnone) (set jcell_GL_STACK_OVERFLOW 1283))
  jcell_GL_STACK_OVERFLOW))
(set jsetstatic_GL_STACK_OVERFLOW (fn jsetstatic_GL_STACK_OVERFLOW [value] (set jcell_GL_STACK_OVERFLOW value)))

(set jstatic_GL_STACK_UNDERFLOW (fn jstatic_GL_STACK_UNDERFLOW []
  (when (= jcell_GL_STACK_UNDERFLOW :jnone) (set jcell_GL_STACK_UNDERFLOW 1284))
  jcell_GL_STACK_UNDERFLOW))
(set jsetstatic_GL_STACK_UNDERFLOW (fn jsetstatic_GL_STACK_UNDERFLOW [value] (set jcell_GL_STACK_UNDERFLOW value)))

(set jstatic_GL_STENCIL_BITS (fn jstatic_GL_STENCIL_BITS []
  (when (= jcell_GL_STENCIL_BITS :jnone) (set jcell_GL_STENCIL_BITS 3415))
  jcell_GL_STENCIL_BITS))
(set jsetstatic_GL_STENCIL_BITS (fn jsetstatic_GL_STENCIL_BITS [value] (set jcell_GL_STENCIL_BITS value)))

(set jstatic_GL_STENCIL_BUFFER_BIT (fn jstatic_GL_STENCIL_BUFFER_BIT []
  (when (= jcell_GL_STENCIL_BUFFER_BIT :jnone) (set jcell_GL_STENCIL_BUFFER_BIT 1024))
  jcell_GL_STENCIL_BUFFER_BIT))
(set jsetstatic_GL_STENCIL_BUFFER_BIT (fn jsetstatic_GL_STENCIL_BUFFER_BIT [value] (set jcell_GL_STENCIL_BUFFER_BIT value)))

(set jstatic_GL_STENCIL_TEST (fn jstatic_GL_STENCIL_TEST []
  (when (= jcell_GL_STENCIL_TEST :jnone) (set jcell_GL_STENCIL_TEST 2960))
  jcell_GL_STENCIL_TEST))
(set jsetstatic_GL_STENCIL_TEST (fn jsetstatic_GL_STENCIL_TEST [value] (set jcell_GL_STENCIL_TEST value)))

(set jstatic_GL_SUBPIXEL_BITS (fn jstatic_GL_SUBPIXEL_BITS []
  (when (= jcell_GL_SUBPIXEL_BITS :jnone) (set jcell_GL_SUBPIXEL_BITS 3408))
  jcell_GL_SUBPIXEL_BITS))
(set jsetstatic_GL_SUBPIXEL_BITS (fn jsetstatic_GL_SUBPIXEL_BITS [value] (set jcell_GL_SUBPIXEL_BITS value)))

(set jstatic_GL_TEXTURE (fn jstatic_GL_TEXTURE []
  (when (= jcell_GL_TEXTURE :jnone) (set jcell_GL_TEXTURE 5890))
  jcell_GL_TEXTURE))
(set jsetstatic_GL_TEXTURE (fn jsetstatic_GL_TEXTURE [value] (set jcell_GL_TEXTURE value)))

(set jstatic_GL_TEXTURE_2D (fn jstatic_GL_TEXTURE_2D []
  (when (= jcell_GL_TEXTURE_2D :jnone) (set jcell_GL_TEXTURE_2D 3553))
  jcell_GL_TEXTURE_2D))
(set jsetstatic_GL_TEXTURE_2D (fn jsetstatic_GL_TEXTURE_2D [value] (set jcell_GL_TEXTURE_2D value)))

(set jstatic_GL_TEXTURE_COORD_ARRAY (fn jstatic_GL_TEXTURE_COORD_ARRAY []
  (when (= jcell_GL_TEXTURE_COORD_ARRAY :jnone) (set jcell_GL_TEXTURE_COORD_ARRAY 32888))
  jcell_GL_TEXTURE_COORD_ARRAY))
(set jsetstatic_GL_TEXTURE_COORD_ARRAY (fn jsetstatic_GL_TEXTURE_COORD_ARRAY [value] (set jcell_GL_TEXTURE_COORD_ARRAY value)))

(set jstatic_GL_TEXTURE_ENV (fn jstatic_GL_TEXTURE_ENV []
  (when (= jcell_GL_TEXTURE_ENV :jnone) (set jcell_GL_TEXTURE_ENV 8960))
  jcell_GL_TEXTURE_ENV))
(set jsetstatic_GL_TEXTURE_ENV (fn jsetstatic_GL_TEXTURE_ENV [value] (set jcell_GL_TEXTURE_ENV value)))

(set jstatic_GL_TEXTURE_ENV_COLOR (fn jstatic_GL_TEXTURE_ENV_COLOR []
  (when (= jcell_GL_TEXTURE_ENV_COLOR :jnone) (set jcell_GL_TEXTURE_ENV_COLOR 8705))
  jcell_GL_TEXTURE_ENV_COLOR))
(set jsetstatic_GL_TEXTURE_ENV_COLOR (fn jsetstatic_GL_TEXTURE_ENV_COLOR [value] (set jcell_GL_TEXTURE_ENV_COLOR value)))

(set jstatic_GL_TEXTURE_ENV_MODE (fn jstatic_GL_TEXTURE_ENV_MODE []
  (when (= jcell_GL_TEXTURE_ENV_MODE :jnone) (set jcell_GL_TEXTURE_ENV_MODE 8704))
  jcell_GL_TEXTURE_ENV_MODE))
(set jsetstatic_GL_TEXTURE_ENV_MODE (fn jsetstatic_GL_TEXTURE_ENV_MODE [value] (set jcell_GL_TEXTURE_ENV_MODE value)))

(set jstatic_GL_TEXTURE_MAG_FILTER (fn jstatic_GL_TEXTURE_MAG_FILTER []
  (when (= jcell_GL_TEXTURE_MAG_FILTER :jnone) (set jcell_GL_TEXTURE_MAG_FILTER 10240))
  jcell_GL_TEXTURE_MAG_FILTER))
(set jsetstatic_GL_TEXTURE_MAG_FILTER (fn jsetstatic_GL_TEXTURE_MAG_FILTER [value] (set jcell_GL_TEXTURE_MAG_FILTER value)))

(set jstatic_GL_TEXTURE_MIN_FILTER (fn jstatic_GL_TEXTURE_MIN_FILTER []
  (when (= jcell_GL_TEXTURE_MIN_FILTER :jnone) (set jcell_GL_TEXTURE_MIN_FILTER 10241))
  jcell_GL_TEXTURE_MIN_FILTER))
(set jsetstatic_GL_TEXTURE_MIN_FILTER (fn jsetstatic_GL_TEXTURE_MIN_FILTER [value] (set jcell_GL_TEXTURE_MIN_FILTER value)))

(set jstatic_GL_TEXTURE_WRAP_S (fn jstatic_GL_TEXTURE_WRAP_S []
  (when (= jcell_GL_TEXTURE_WRAP_S :jnone) (set jcell_GL_TEXTURE_WRAP_S 10242))
  jcell_GL_TEXTURE_WRAP_S))
(set jsetstatic_GL_TEXTURE_WRAP_S (fn jsetstatic_GL_TEXTURE_WRAP_S [value] (set jcell_GL_TEXTURE_WRAP_S value)))

(set jstatic_GL_TEXTURE_WRAP_T (fn jstatic_GL_TEXTURE_WRAP_T []
  (when (= jcell_GL_TEXTURE_WRAP_T :jnone) (set jcell_GL_TEXTURE_WRAP_T 10243))
  jcell_GL_TEXTURE_WRAP_T))
(set jsetstatic_GL_TEXTURE_WRAP_T (fn jsetstatic_GL_TEXTURE_WRAP_T [value] (set jcell_GL_TEXTURE_WRAP_T value)))

(set jstatic_GL_TEXTURE0 (fn jstatic_GL_TEXTURE0 []
  (when (= jcell_GL_TEXTURE0 :jnone) (set jcell_GL_TEXTURE0 33984))
  jcell_GL_TEXTURE0))
(set jsetstatic_GL_TEXTURE0 (fn jsetstatic_GL_TEXTURE0 [value] (set jcell_GL_TEXTURE0 value)))

(set jstatic_GL_TEXTURE1 (fn jstatic_GL_TEXTURE1 []
  (when (= jcell_GL_TEXTURE1 :jnone) (set jcell_GL_TEXTURE1 33985))
  jcell_GL_TEXTURE1))
(set jsetstatic_GL_TEXTURE1 (fn jsetstatic_GL_TEXTURE1 [value] (set jcell_GL_TEXTURE1 value)))

(set jstatic_GL_TEXTURE2 (fn jstatic_GL_TEXTURE2 []
  (when (= jcell_GL_TEXTURE2 :jnone) (set jcell_GL_TEXTURE2 33986))
  jcell_GL_TEXTURE2))
(set jsetstatic_GL_TEXTURE2 (fn jsetstatic_GL_TEXTURE2 [value] (set jcell_GL_TEXTURE2 value)))

(set jstatic_GL_TEXTURE3 (fn jstatic_GL_TEXTURE3 []
  (when (= jcell_GL_TEXTURE3 :jnone) (set jcell_GL_TEXTURE3 33987))
  jcell_GL_TEXTURE3))
(set jsetstatic_GL_TEXTURE3 (fn jsetstatic_GL_TEXTURE3 [value] (set jcell_GL_TEXTURE3 value)))

(set jstatic_GL_TEXTURE4 (fn jstatic_GL_TEXTURE4 []
  (when (= jcell_GL_TEXTURE4 :jnone) (set jcell_GL_TEXTURE4 33988))
  jcell_GL_TEXTURE4))
(set jsetstatic_GL_TEXTURE4 (fn jsetstatic_GL_TEXTURE4 [value] (set jcell_GL_TEXTURE4 value)))

(set jstatic_GL_TEXTURE5 (fn jstatic_GL_TEXTURE5 []
  (when (= jcell_GL_TEXTURE5 :jnone) (set jcell_GL_TEXTURE5 33989))
  jcell_GL_TEXTURE5))
(set jsetstatic_GL_TEXTURE5 (fn jsetstatic_GL_TEXTURE5 [value] (set jcell_GL_TEXTURE5 value)))

(set jstatic_GL_TEXTURE6 (fn jstatic_GL_TEXTURE6 []
  (when (= jcell_GL_TEXTURE6 :jnone) (set jcell_GL_TEXTURE6 33990))
  jcell_GL_TEXTURE6))
(set jsetstatic_GL_TEXTURE6 (fn jsetstatic_GL_TEXTURE6 [value] (set jcell_GL_TEXTURE6 value)))

(set jstatic_GL_TEXTURE7 (fn jstatic_GL_TEXTURE7 []
  (when (= jcell_GL_TEXTURE7 :jnone) (set jcell_GL_TEXTURE7 33991))
  jcell_GL_TEXTURE7))
(set jsetstatic_GL_TEXTURE7 (fn jsetstatic_GL_TEXTURE7 [value] (set jcell_GL_TEXTURE7 value)))

(set jstatic_GL_TEXTURE8 (fn jstatic_GL_TEXTURE8 []
  (when (= jcell_GL_TEXTURE8 :jnone) (set jcell_GL_TEXTURE8 33992))
  jcell_GL_TEXTURE8))
(set jsetstatic_GL_TEXTURE8 (fn jsetstatic_GL_TEXTURE8 [value] (set jcell_GL_TEXTURE8 value)))

(set jstatic_GL_TEXTURE9 (fn jstatic_GL_TEXTURE9 []
  (when (= jcell_GL_TEXTURE9 :jnone) (set jcell_GL_TEXTURE9 33993))
  jcell_GL_TEXTURE9))
(set jsetstatic_GL_TEXTURE9 (fn jsetstatic_GL_TEXTURE9 [value] (set jcell_GL_TEXTURE9 value)))

(set jstatic_GL_TEXTURE10 (fn jstatic_GL_TEXTURE10 []
  (when (= jcell_GL_TEXTURE10 :jnone) (set jcell_GL_TEXTURE10 33994))
  jcell_GL_TEXTURE10))
(set jsetstatic_GL_TEXTURE10 (fn jsetstatic_GL_TEXTURE10 [value] (set jcell_GL_TEXTURE10 value)))

(set jstatic_GL_TEXTURE11 (fn jstatic_GL_TEXTURE11 []
  (when (= jcell_GL_TEXTURE11 :jnone) (set jcell_GL_TEXTURE11 33995))
  jcell_GL_TEXTURE11))
(set jsetstatic_GL_TEXTURE11 (fn jsetstatic_GL_TEXTURE11 [value] (set jcell_GL_TEXTURE11 value)))

(set jstatic_GL_TEXTURE12 (fn jstatic_GL_TEXTURE12 []
  (when (= jcell_GL_TEXTURE12 :jnone) (set jcell_GL_TEXTURE12 33996))
  jcell_GL_TEXTURE12))
(set jsetstatic_GL_TEXTURE12 (fn jsetstatic_GL_TEXTURE12 [value] (set jcell_GL_TEXTURE12 value)))

(set jstatic_GL_TEXTURE13 (fn jstatic_GL_TEXTURE13 []
  (when (= jcell_GL_TEXTURE13 :jnone) (set jcell_GL_TEXTURE13 33997))
  jcell_GL_TEXTURE13))
(set jsetstatic_GL_TEXTURE13 (fn jsetstatic_GL_TEXTURE13 [value] (set jcell_GL_TEXTURE13 value)))

(set jstatic_GL_TEXTURE14 (fn jstatic_GL_TEXTURE14 []
  (when (= jcell_GL_TEXTURE14 :jnone) (set jcell_GL_TEXTURE14 33998))
  jcell_GL_TEXTURE14))
(set jsetstatic_GL_TEXTURE14 (fn jsetstatic_GL_TEXTURE14 [value] (set jcell_GL_TEXTURE14 value)))

(set jstatic_GL_TEXTURE15 (fn jstatic_GL_TEXTURE15 []
  (when (= jcell_GL_TEXTURE15 :jnone) (set jcell_GL_TEXTURE15 33999))
  jcell_GL_TEXTURE15))
(set jsetstatic_GL_TEXTURE15 (fn jsetstatic_GL_TEXTURE15 [value] (set jcell_GL_TEXTURE15 value)))

(set jstatic_GL_TEXTURE16 (fn jstatic_GL_TEXTURE16 []
  (when (= jcell_GL_TEXTURE16 :jnone) (set jcell_GL_TEXTURE16 34000))
  jcell_GL_TEXTURE16))
(set jsetstatic_GL_TEXTURE16 (fn jsetstatic_GL_TEXTURE16 [value] (set jcell_GL_TEXTURE16 value)))

(set jstatic_GL_TEXTURE17 (fn jstatic_GL_TEXTURE17 []
  (when (= jcell_GL_TEXTURE17 :jnone) (set jcell_GL_TEXTURE17 34001))
  jcell_GL_TEXTURE17))
(set jsetstatic_GL_TEXTURE17 (fn jsetstatic_GL_TEXTURE17 [value] (set jcell_GL_TEXTURE17 value)))

(set jstatic_GL_TEXTURE18 (fn jstatic_GL_TEXTURE18 []
  (when (= jcell_GL_TEXTURE18 :jnone) (set jcell_GL_TEXTURE18 34002))
  jcell_GL_TEXTURE18))
(set jsetstatic_GL_TEXTURE18 (fn jsetstatic_GL_TEXTURE18 [value] (set jcell_GL_TEXTURE18 value)))

(set jstatic_GL_TEXTURE19 (fn jstatic_GL_TEXTURE19 []
  (when (= jcell_GL_TEXTURE19 :jnone) (set jcell_GL_TEXTURE19 34003))
  jcell_GL_TEXTURE19))
(set jsetstatic_GL_TEXTURE19 (fn jsetstatic_GL_TEXTURE19 [value] (set jcell_GL_TEXTURE19 value)))

(set jstatic_GL_TEXTURE20 (fn jstatic_GL_TEXTURE20 []
  (when (= jcell_GL_TEXTURE20 :jnone) (set jcell_GL_TEXTURE20 34004))
  jcell_GL_TEXTURE20))
(set jsetstatic_GL_TEXTURE20 (fn jsetstatic_GL_TEXTURE20 [value] (set jcell_GL_TEXTURE20 value)))

(set jstatic_GL_TEXTURE21 (fn jstatic_GL_TEXTURE21 []
  (when (= jcell_GL_TEXTURE21 :jnone) (set jcell_GL_TEXTURE21 34005))
  jcell_GL_TEXTURE21))
(set jsetstatic_GL_TEXTURE21 (fn jsetstatic_GL_TEXTURE21 [value] (set jcell_GL_TEXTURE21 value)))

(set jstatic_GL_TEXTURE22 (fn jstatic_GL_TEXTURE22 []
  (when (= jcell_GL_TEXTURE22 :jnone) (set jcell_GL_TEXTURE22 34006))
  jcell_GL_TEXTURE22))
(set jsetstatic_GL_TEXTURE22 (fn jsetstatic_GL_TEXTURE22 [value] (set jcell_GL_TEXTURE22 value)))

(set jstatic_GL_TEXTURE23 (fn jstatic_GL_TEXTURE23 []
  (when (= jcell_GL_TEXTURE23 :jnone) (set jcell_GL_TEXTURE23 34007))
  jcell_GL_TEXTURE23))
(set jsetstatic_GL_TEXTURE23 (fn jsetstatic_GL_TEXTURE23 [value] (set jcell_GL_TEXTURE23 value)))

(set jstatic_GL_TEXTURE24 (fn jstatic_GL_TEXTURE24 []
  (when (= jcell_GL_TEXTURE24 :jnone) (set jcell_GL_TEXTURE24 34008))
  jcell_GL_TEXTURE24))
(set jsetstatic_GL_TEXTURE24 (fn jsetstatic_GL_TEXTURE24 [value] (set jcell_GL_TEXTURE24 value)))

(set jstatic_GL_TEXTURE25 (fn jstatic_GL_TEXTURE25 []
  (when (= jcell_GL_TEXTURE25 :jnone) (set jcell_GL_TEXTURE25 34009))
  jcell_GL_TEXTURE25))
(set jsetstatic_GL_TEXTURE25 (fn jsetstatic_GL_TEXTURE25 [value] (set jcell_GL_TEXTURE25 value)))

(set jstatic_GL_TEXTURE26 (fn jstatic_GL_TEXTURE26 []
  (when (= jcell_GL_TEXTURE26 :jnone) (set jcell_GL_TEXTURE26 34010))
  jcell_GL_TEXTURE26))
(set jsetstatic_GL_TEXTURE26 (fn jsetstatic_GL_TEXTURE26 [value] (set jcell_GL_TEXTURE26 value)))

(set jstatic_GL_TEXTURE27 (fn jstatic_GL_TEXTURE27 []
  (when (= jcell_GL_TEXTURE27 :jnone) (set jcell_GL_TEXTURE27 34011))
  jcell_GL_TEXTURE27))
(set jsetstatic_GL_TEXTURE27 (fn jsetstatic_GL_TEXTURE27 [value] (set jcell_GL_TEXTURE27 value)))

(set jstatic_GL_TEXTURE28 (fn jstatic_GL_TEXTURE28 []
  (when (= jcell_GL_TEXTURE28 :jnone) (set jcell_GL_TEXTURE28 34012))
  jcell_GL_TEXTURE28))
(set jsetstatic_GL_TEXTURE28 (fn jsetstatic_GL_TEXTURE28 [value] (set jcell_GL_TEXTURE28 value)))

(set jstatic_GL_TEXTURE29 (fn jstatic_GL_TEXTURE29 []
  (when (= jcell_GL_TEXTURE29 :jnone) (set jcell_GL_TEXTURE29 34013))
  jcell_GL_TEXTURE29))
(set jsetstatic_GL_TEXTURE29 (fn jsetstatic_GL_TEXTURE29 [value] (set jcell_GL_TEXTURE29 value)))

(set jstatic_GL_TEXTURE30 (fn jstatic_GL_TEXTURE30 []
  (when (= jcell_GL_TEXTURE30 :jnone) (set jcell_GL_TEXTURE30 34014))
  jcell_GL_TEXTURE30))
(set jsetstatic_GL_TEXTURE30 (fn jsetstatic_GL_TEXTURE30 [value] (set jcell_GL_TEXTURE30 value)))

(set jstatic_GL_TEXTURE31 (fn jstatic_GL_TEXTURE31 []
  (when (= jcell_GL_TEXTURE31 :jnone) (set jcell_GL_TEXTURE31 34015))
  jcell_GL_TEXTURE31))
(set jsetstatic_GL_TEXTURE31 (fn jsetstatic_GL_TEXTURE31 [value] (set jcell_GL_TEXTURE31 value)))

(set jstatic_GL_TRIANGLE_FAN (fn jstatic_GL_TRIANGLE_FAN []
  (when (= jcell_GL_TRIANGLE_FAN :jnone) (set jcell_GL_TRIANGLE_FAN 6))
  jcell_GL_TRIANGLE_FAN))
(set jsetstatic_GL_TRIANGLE_FAN (fn jsetstatic_GL_TRIANGLE_FAN [value] (set jcell_GL_TRIANGLE_FAN value)))

(set jstatic_GL_TRIANGLE_STRIP (fn jstatic_GL_TRIANGLE_STRIP []
  (when (= jcell_GL_TRIANGLE_STRIP :jnone) (set jcell_GL_TRIANGLE_STRIP 5))
  jcell_GL_TRIANGLE_STRIP))
(set jsetstatic_GL_TRIANGLE_STRIP (fn jsetstatic_GL_TRIANGLE_STRIP [value] (set jcell_GL_TRIANGLE_STRIP value)))

(set jstatic_GL_TRIANGLES (fn jstatic_GL_TRIANGLES []
  (when (= jcell_GL_TRIANGLES :jnone) (set jcell_GL_TRIANGLES 4))
  jcell_GL_TRIANGLES))
(set jsetstatic_GL_TRIANGLES (fn jsetstatic_GL_TRIANGLES [value] (set jcell_GL_TRIANGLES value)))

(set jstatic_GL_TRUE (fn jstatic_GL_TRUE []
  (when (= jcell_GL_TRUE :jnone) (set jcell_GL_TRUE 1))
  jcell_GL_TRUE))
(set jsetstatic_GL_TRUE (fn jsetstatic_GL_TRUE [value] (set jcell_GL_TRUE value)))

(set jstatic_GL_UNPACK_ALIGNMENT (fn jstatic_GL_UNPACK_ALIGNMENT []
  (when (= jcell_GL_UNPACK_ALIGNMENT :jnone) (set jcell_GL_UNPACK_ALIGNMENT 3317))
  jcell_GL_UNPACK_ALIGNMENT))
(set jsetstatic_GL_UNPACK_ALIGNMENT (fn jsetstatic_GL_UNPACK_ALIGNMENT [value] (set jcell_GL_UNPACK_ALIGNMENT value)))

(set jstatic_GL_UNSIGNED_BYTE (fn jstatic_GL_UNSIGNED_BYTE []
  (when (= jcell_GL_UNSIGNED_BYTE :jnone) (set jcell_GL_UNSIGNED_BYTE 5121))
  jcell_GL_UNSIGNED_BYTE))
(set jsetstatic_GL_UNSIGNED_BYTE (fn jsetstatic_GL_UNSIGNED_BYTE [value] (set jcell_GL_UNSIGNED_BYTE value)))

(set jstatic_GL_UNSIGNED_SHORT (fn jstatic_GL_UNSIGNED_SHORT []
  (when (= jcell_GL_UNSIGNED_SHORT :jnone) (set jcell_GL_UNSIGNED_SHORT 5123))
  jcell_GL_UNSIGNED_SHORT))
(set jsetstatic_GL_UNSIGNED_SHORT (fn jsetstatic_GL_UNSIGNED_SHORT [value] (set jcell_GL_UNSIGNED_SHORT value)))

(set jstatic_GL_UNSIGNED_SHORT_4_4_4_4 (fn jstatic_GL_UNSIGNED_SHORT_4_4_4_4 []
  (when (= jcell_GL_UNSIGNED_SHORT_4_4_4_4 :jnone) (set jcell_GL_UNSIGNED_SHORT_4_4_4_4 32819))
  jcell_GL_UNSIGNED_SHORT_4_4_4_4))
(set jsetstatic_GL_UNSIGNED_SHORT_4_4_4_4 (fn jsetstatic_GL_UNSIGNED_SHORT_4_4_4_4 [value] (set jcell_GL_UNSIGNED_SHORT_4_4_4_4 value)))

(set jstatic_GL_UNSIGNED_SHORT_5_5_5_1 (fn jstatic_GL_UNSIGNED_SHORT_5_5_5_1 []
  (when (= jcell_GL_UNSIGNED_SHORT_5_5_5_1 :jnone) (set jcell_GL_UNSIGNED_SHORT_5_5_5_1 32820))
  jcell_GL_UNSIGNED_SHORT_5_5_5_1))
(set jsetstatic_GL_UNSIGNED_SHORT_5_5_5_1 (fn jsetstatic_GL_UNSIGNED_SHORT_5_5_5_1 [value] (set jcell_GL_UNSIGNED_SHORT_5_5_5_1 value)))

(set jstatic_GL_UNSIGNED_SHORT_5_6_5 (fn jstatic_GL_UNSIGNED_SHORT_5_6_5 []
  (when (= jcell_GL_UNSIGNED_SHORT_5_6_5 :jnone) (set jcell_GL_UNSIGNED_SHORT_5_6_5 33635))
  jcell_GL_UNSIGNED_SHORT_5_6_5))
(set jsetstatic_GL_UNSIGNED_SHORT_5_6_5 (fn jsetstatic_GL_UNSIGNED_SHORT_5_6_5 [value] (set jcell_GL_UNSIGNED_SHORT_5_6_5 value)))

(set jstatic_GL_VENDOR (fn jstatic_GL_VENDOR []
  (when (= jcell_GL_VENDOR :jnone) (set jcell_GL_VENDOR 7936))
  jcell_GL_VENDOR))
(set jsetstatic_GL_VENDOR (fn jsetstatic_GL_VENDOR [value] (set jcell_GL_VENDOR value)))

(set jstatic_GL_VERSION (fn jstatic_GL_VERSION []
  (when (= jcell_GL_VERSION :jnone) (set jcell_GL_VERSION 7938))
  jcell_GL_VERSION))
(set jsetstatic_GL_VERSION (fn jsetstatic_GL_VERSION [value] (set jcell_GL_VERSION value)))

(set jstatic_GL_VERTEX_ARRAY (fn jstatic_GL_VERTEX_ARRAY []
  (when (= jcell_GL_VERTEX_ARRAY :jnone) (set jcell_GL_VERTEX_ARRAY 32884))
  jcell_GL_VERTEX_ARRAY))
(set jsetstatic_GL_VERTEX_ARRAY (fn jsetstatic_GL_VERTEX_ARRAY [value] (set jcell_GL_VERTEX_ARRAY value)))

(set jstatic_GL_XOR (fn jstatic_GL_XOR []
  (when (= jcell_GL_XOR :jnone) (set jcell_GL_XOR 5382))
  jcell_GL_XOR))
(set jsetstatic_GL_XOR (fn jsetstatic_GL_XOR [value] (set jcell_GL_XOR value)))

(set jstatic_GL_ZERO (fn jstatic_GL_ZERO []
  (when (= jcell_GL_ZERO :jnone) (set jcell_GL_ZERO 0))
  jcell_GL_ZERO))
(set jsetstatic_GL_ZERO (fn jsetstatic_GL_ZERO [value] (set jcell_GL_ZERO value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "GL10"} jproto))
    this))

    
(set jm_glActiveTexture (fn jm_glActiveTexture [this _texture]
    (error (JR/newException "AbstractMethodError" "glActiveTexture"))))
    
(set jm_glAlphaFunc (fn jm_glAlphaFunc [this _func _ref]
    (error (JR/newException "AbstractMethodError" "glAlphaFunc"))))
    
(set jm_glBindTexture (fn jm_glBindTexture [this _target _texture]
    (error (JR/newException "AbstractMethodError" "glBindTexture"))))
    
(set jm_glBlendFunc (fn jm_glBlendFunc [this _sfactor _dfactor]
    (error (JR/newException "AbstractMethodError" "glBlendFunc"))))
    
(set jm_glClear (fn jm_glClear [this _mask]
    (error (JR/newException "AbstractMethodError" "glClear"))))
    
(set jm_glClearColor (fn jm_glClearColor [this _red _green _blue _alpha]
    (error (JR/newException "AbstractMethodError" "glClearColor"))))
    
(set jm_glClearDepthf (fn jm_glClearDepthf [this _depth]
    (error (JR/newException "AbstractMethodError" "glClearDepthf"))))
    
(set jm_glClearStencil (fn jm_glClearStencil [this _s]
    (error (JR/newException "AbstractMethodError" "glClearStencil"))))
    
(set jm_glClientActiveTexture (fn jm_glClientActiveTexture [this _texture]
    (error (JR/newException "AbstractMethodError" "glClientActiveTexture"))))
    
(set jm_glColor4f (fn jm_glColor4f [this _red _green _blue _alpha]
    (error (JR/newException "AbstractMethodError" "glColor4f"))))
    
(set jm_glColorMask (fn jm_glColorMask [this _red _green _blue _alpha]
    (error (JR/newException "AbstractMethodError" "glColorMask"))))
    
(set jm_glColorPointer (fn jm_glColorPointer [this _size _type _stride _pointer]
    (error (JR/newException "AbstractMethodError" "glColorPointer"))))
    
(set jm_glCompressedTexImage2D (fn jm_glCompressedTexImage2D [this _target _level _internalformat _width _height _border _imageSize _data]
    (error (JR/newException "AbstractMethodError" "glCompressedTexImage2D"))))
    
(set jm_glCompressedTexSubImage2D (fn jm_glCompressedTexSubImage2D [this _target _level _xoffset _yoffset _width _height _format _imageSize _data]
    (error (JR/newException "AbstractMethodError" "glCompressedTexSubImage2D"))))
    
(set jm_glCopyTexImage2D (fn jm_glCopyTexImage2D [this _target _level _internalformat _x _y _width _height _border]
    (error (JR/newException "AbstractMethodError" "glCopyTexImage2D"))))
    
(set jm_glCopyTexSubImage2D (fn jm_glCopyTexSubImage2D [this _target _level _xoffset _yoffset _x _y _width _height]
    (error (JR/newException "AbstractMethodError" "glCopyTexSubImage2D"))))
    
(set jm_glCullFace (fn jm_glCullFace [this _mode]
    (error (JR/newException "AbstractMethodError" "glCullFace"))))
    
(set jm_glDeleteTextures_3 (fn jm_glDeleteTextures_3 [this _n _textures _offset]
    (error (JR/newException "AbstractMethodError" "glDeleteTextures"))))
    
(set jm_glDeleteTextures_2 (fn jm_glDeleteTextures_2 [this _n _textures]
    (error (JR/newException "AbstractMethodError" "glDeleteTextures"))))
    
(set jm_glDepthFunc (fn jm_glDepthFunc [this _func]
    (error (JR/newException "AbstractMethodError" "glDepthFunc"))))
    
(set jm_glDepthMask (fn jm_glDepthMask [this _flag]
    (error (JR/newException "AbstractMethodError" "glDepthMask"))))
    
(set jm_glDepthRangef (fn jm_glDepthRangef [this _zNear _zFar]
    (error (JR/newException "AbstractMethodError" "glDepthRangef"))))
    
(set jm_glDisable (fn jm_glDisable [this _cap]
    (error (JR/newException "AbstractMethodError" "glDisable"))))
    
(set jm_glDisableClientState (fn jm_glDisableClientState [this _array]
    (error (JR/newException "AbstractMethodError" "glDisableClientState"))))
    
(set jm_glDrawArrays (fn jm_glDrawArrays [this _mode _first _count]
    (error (JR/newException "AbstractMethodError" "glDrawArrays"))))
    
(set jm_glDrawElements (fn jm_glDrawElements [this _mode _count _type _indices]
    (error (JR/newException "AbstractMethodError" "glDrawElements"))))
    
(set jm_glEnable (fn jm_glEnable [this _cap]
    (error (JR/newException "AbstractMethodError" "glEnable"))))
    
(set jm_glEnableClientState (fn jm_glEnableClientState [this _array]
    (error (JR/newException "AbstractMethodError" "glEnableClientState"))))
    
(set jm_glFinish (fn jm_glFinish [this]
    (error (JR/newException "AbstractMethodError" "glFinish"))))
    
(set jm_glFlush (fn jm_glFlush [this]
    (error (JR/newException "AbstractMethodError" "glFlush"))))
    
(set jm_glFogf (fn jm_glFogf [this _pname _param]
    (error (JR/newException "AbstractMethodError" "glFogf"))))
    
(set jm_glFogfv_3 (fn jm_glFogfv_3 [this _pname _params _offset]
    (error (JR/newException "AbstractMethodError" "glFogfv"))))
    
(set jm_glFogfv_2 (fn jm_glFogfv_2 [this _pname _params]
    (error (JR/newException "AbstractMethodError" "glFogfv"))))
    
(set jm_glFrontFace (fn jm_glFrontFace [this _mode]
    (error (JR/newException "AbstractMethodError" "glFrontFace"))))
    
(set jm_glFrustumf (fn jm_glFrustumf [this _left _right _bottom _top _zNear _zFar]
    (error (JR/newException "AbstractMethodError" "glFrustumf"))))
    
(set jm_glGenTextures_3 (fn jm_glGenTextures_3 [this _n _textures _offset]
    (error (JR/newException "AbstractMethodError" "glGenTextures"))))
    
(set jm_glGenTextures_2 (fn jm_glGenTextures_2 [this _n _textures]
    (error (JR/newException "AbstractMethodError" "glGenTextures"))))
    
(set jm_glGetError (fn jm_glGetError [this]
    (error (JR/newException "AbstractMethodError" "glGetError"))))
    
(set jm_glGetIntegerv_3 (fn jm_glGetIntegerv_3 [this _pname _params _offset]
    (error (JR/newException "AbstractMethodError" "glGetIntegerv"))))
    
(set jm_glGetIntegerv_2 (fn jm_glGetIntegerv_2 [this _pname _params]
    (error (JR/newException "AbstractMethodError" "glGetIntegerv"))))
    
(set jm_glGetString (fn jm_glGetString [this _name]
    (error (JR/newException "AbstractMethodError" "glGetString"))))
    
(set jm_glHint (fn jm_glHint [this _target _mode]
    (error (JR/newException "AbstractMethodError" "glHint"))))
    
(set jm_glLightModelf (fn jm_glLightModelf [this _pname _param]
    (error (JR/newException "AbstractMethodError" "glLightModelf"))))
    
(set jm_glLightModelfv_3 (fn jm_glLightModelfv_3 [this _pname _params _offset]
    (error (JR/newException "AbstractMethodError" "glLightModelfv"))))
    
(set jm_glLightModelfv_2 (fn jm_glLightModelfv_2 [this _pname _params]
    (error (JR/newException "AbstractMethodError" "glLightModelfv"))))
    
(set jm_glLightf (fn jm_glLightf [this _light _pname _param]
    (error (JR/newException "AbstractMethodError" "glLightf"))))
    
(set jm_glLightfv_4 (fn jm_glLightfv_4 [this _light _pname _params _offset]
    (error (JR/newException "AbstractMethodError" "glLightfv"))))
    
(set jm_glLightfv_3 (fn jm_glLightfv_3 [this _light _pname _params]
    (error (JR/newException "AbstractMethodError" "glLightfv"))))
    
(set jm_glLineWidth (fn jm_glLineWidth [this _width]
    (error (JR/newException "AbstractMethodError" "glLineWidth"))))
    
(set jm_glLoadIdentity (fn jm_glLoadIdentity [this]
    (error (JR/newException "AbstractMethodError" "glLoadIdentity"))))
    
(set jm_glLoadMatrixf_2 (fn jm_glLoadMatrixf_2 [this _m _offset]
    (error (JR/newException "AbstractMethodError" "glLoadMatrixf"))))
    
(set jm_glLoadMatrixf_1 (fn jm_glLoadMatrixf_1 [this _m]
    (error (JR/newException "AbstractMethodError" "glLoadMatrixf"))))
    
(set jm_glLogicOp (fn jm_glLogicOp [this _opcode]
    (error (JR/newException "AbstractMethodError" "glLogicOp"))))
    
(set jm_glMaterialf (fn jm_glMaterialf [this _face _pname _param]
    (error (JR/newException "AbstractMethodError" "glMaterialf"))))
    
(set jm_glMaterialfv_4 (fn jm_glMaterialfv_4 [this _face _pname _params _offset]
    (error (JR/newException "AbstractMethodError" "glMaterialfv"))))
    
(set jm_glMaterialfv_3 (fn jm_glMaterialfv_3 [this _face _pname _params]
    (error (JR/newException "AbstractMethodError" "glMaterialfv"))))
    
(set jm_glMatrixMode (fn jm_glMatrixMode [this _mode]
    (error (JR/newException "AbstractMethodError" "glMatrixMode"))))
    
(set jm_glMultMatrixf_2 (fn jm_glMultMatrixf_2 [this _m _offset]
    (error (JR/newException "AbstractMethodError" "glMultMatrixf"))))
    
(set jm_glMultMatrixf_1 (fn jm_glMultMatrixf_1 [this _m]
    (error (JR/newException "AbstractMethodError" "glMultMatrixf"))))
    
(set jm_glMultiTexCoord4f (fn jm_glMultiTexCoord4f [this _target _s _t _r _q]
    (error (JR/newException "AbstractMethodError" "glMultiTexCoord4f"))))
    
(set jm_glNormal3f (fn jm_glNormal3f [this _nx _ny _nz]
    (error (JR/newException "AbstractMethodError" "glNormal3f"))))
    
(set jm_glNormalPointer (fn jm_glNormalPointer [this _type _stride _pointer]
    (error (JR/newException "AbstractMethodError" "glNormalPointer"))))
    
(set jm_glOrthof (fn jm_glOrthof [this _left _right _bottom _top _zNear _zFar]
    (error (JR/newException "AbstractMethodError" "glOrthof"))))
    
(set jm_glPixelStorei (fn jm_glPixelStorei [this _pname _param]
    (error (JR/newException "AbstractMethodError" "glPixelStorei"))))
    
(set jm_glPointSize (fn jm_glPointSize [this _size]
    (error (JR/newException "AbstractMethodError" "glPointSize"))))
    
(set jm_glPolygonOffset (fn jm_glPolygonOffset [this _factor _units]
    (error (JR/newException "AbstractMethodError" "glPolygonOffset"))))
    
(set jm_glPopMatrix (fn jm_glPopMatrix [this]
    (error (JR/newException "AbstractMethodError" "glPopMatrix"))))
    
(set jm_glPushMatrix (fn jm_glPushMatrix [this]
    (error (JR/newException "AbstractMethodError" "glPushMatrix"))))
    
(set jm_glReadPixels (fn jm_glReadPixels [this _x _y _width _height _format _type _pixels]
    (error (JR/newException "AbstractMethodError" "glReadPixels"))))
    
(set jm_glRotatef (fn jm_glRotatef [this _angle _x _y _z]
    (error (JR/newException "AbstractMethodError" "glRotatef"))))
    
(set jm_glRotatex (fn jm_glRotatex [this _angle _x _y _z]
    (error (JR/newException "AbstractMethodError" "glRotatex"))))
    
(set jm_glSampleCoverage (fn jm_glSampleCoverage [this _value _invert]
    (error (JR/newException "AbstractMethodError" "glSampleCoverage"))))
    
(set jm_glScalef (fn jm_glScalef [this _x _y _z]
    (error (JR/newException "AbstractMethodError" "glScalef"))))
    
(set jm_glScalex (fn jm_glScalex [this _x _y _z]
    (error (JR/newException "AbstractMethodError" "glScalex"))))
    
(set jm_glScissor (fn jm_glScissor [this _x _y _width _height]
    (error (JR/newException "AbstractMethodError" "glScissor"))))
    
(set jm_glShadeModel (fn jm_glShadeModel [this _mode]
    (error (JR/newException "AbstractMethodError" "glShadeModel"))))
    
(set jm_glStencilFunc (fn jm_glStencilFunc [this _func _ref _mask]
    (error (JR/newException "AbstractMethodError" "glStencilFunc"))))
    
(set jm_glStencilMask (fn jm_glStencilMask [this _mask]
    (error (JR/newException "AbstractMethodError" "glStencilMask"))))
    
(set jm_glStencilOp (fn jm_glStencilOp [this _fail _zfail _zpass]
    (error (JR/newException "AbstractMethodError" "glStencilOp"))))
    
(set jm_glTexCoordPointer (fn jm_glTexCoordPointer [this _size _type _stride _pointer]
    (error (JR/newException "AbstractMethodError" "glTexCoordPointer"))))
    
(set jm_glTexEnvf (fn jm_glTexEnvf [this _target _pname _param]
    (error (JR/newException "AbstractMethodError" "glTexEnvf"))))
    
(set jm_glTexEnvfv_4 (fn jm_glTexEnvfv_4 [this _target _pname _params _offset]
    (error (JR/newException "AbstractMethodError" "glTexEnvfv"))))
    
(set jm_glTexEnvfv_3 (fn jm_glTexEnvfv_3 [this _target _pname _params]
    (error (JR/newException "AbstractMethodError" "glTexEnvfv"))))
    
(set jm_glTexImage2D (fn jm_glTexImage2D [this _target _level _internalformat _width _height _border _format _type _pixels]
    (error (JR/newException "AbstractMethodError" "glTexImage2D"))))
    
(set jm_glTexParameterf (fn jm_glTexParameterf [this _target _pname _param]
    (error (JR/newException "AbstractMethodError" "glTexParameterf"))))
    
(set jm_glTexParameteri (fn jm_glTexParameteri [this _target _pname _param]
    (error (JR/newException "AbstractMethodError" "glTexParameteri"))))
    
(set jm_glTexSubImage2D (fn jm_glTexSubImage2D [this _target _level _xoffset _yoffset _width _height _format _type _pixels]
    (error (JR/newException "AbstractMethodError" "glTexSubImage2D"))))
    
(set jm_glTranslatef (fn jm_glTranslatef [this _x _y _z]
    (error (JR/newException "AbstractMethodError" "glTranslatef"))))
    
(set jm_glVertexPointer (fn jm_glVertexPointer [this _size _type _stride _pointer]
    (error (JR/newException "AbstractMethodError" "glVertexPointer"))))
    
(set jm_glViewport (fn jm_glViewport [this _x _y _width _height]
    (error (JR/newException "AbstractMethodError" "glViewport"))))
    
(set jm_glBegin (fn jm_glBegin [this _i]
    (error (JR/newException "AbstractMethodError" "glBegin"))))
    
(set jm_glEnd (fn jm_glEnd [this]
    (error (JR/newException "AbstractMethodError" "glEnd"))))
    
(set jm_glVertex3f (fn jm_glVertex3f [this _f _f2 _f3]
    (error (JR/newException "AbstractMethodError" "glVertex3f"))))
    
(set jm_glPolygonMode (fn jm_glPolygonMode [this _i _i1]
    (error (JR/newException "AbstractMethodError" "glPolygonMode"))))

(set jproto @{:jm_glActiveTexture jm_glActiveTexture :jm_glAlphaFunc jm_glAlphaFunc :jm_glBindTexture jm_glBindTexture :jm_glBlendFunc jm_glBlendFunc :jm_glClear jm_glClear :jm_glClearColor jm_glClearColor :jm_glClearDepthf jm_glClearDepthf :jm_glClearStencil jm_glClearStencil :jm_glClientActiveTexture jm_glClientActiveTexture :jm_glColor4f jm_glColor4f :jm_glColorMask jm_glColorMask :jm_glColorPointer jm_glColorPointer :jm_glCompressedTexImage2D jm_glCompressedTexImage2D :jm_glCompressedTexSubImage2D jm_glCompressedTexSubImage2D :jm_glCopyTexImage2D jm_glCopyTexImage2D :jm_glCopyTexSubImage2D jm_glCopyTexSubImage2D :jm_glCullFace jm_glCullFace :jm_glDeleteTextures_3 jm_glDeleteTextures_3 :jm_glDeleteTextures_2 jm_glDeleteTextures_2 :jm_glDepthFunc jm_glDepthFunc :jm_glDepthMask jm_glDepthMask :jm_glDepthRangef jm_glDepthRangef :jm_glDisable jm_glDisable :jm_glDisableClientState jm_glDisableClientState :jm_glDrawArrays jm_glDrawArrays :jm_glDrawElements jm_glDrawElements :jm_glEnable jm_glEnable :jm_glEnableClientState jm_glEnableClientState :jm_glFinish jm_glFinish :jm_glFlush jm_glFlush :jm_glFogf jm_glFogf :jm_glFogfv_3 jm_glFogfv_3 :jm_glFogfv_2 jm_glFogfv_2 :jm_glFrontFace jm_glFrontFace :jm_glFrustumf jm_glFrustumf :jm_glGenTextures_3 jm_glGenTextures_3 :jm_glGenTextures_2 jm_glGenTextures_2 :jm_glGetError jm_glGetError :jm_glGetIntegerv_3 jm_glGetIntegerv_3 :jm_glGetIntegerv_2 jm_glGetIntegerv_2 :jm_glGetString jm_glGetString :jm_glHint jm_glHint :jm_glLightModelf jm_glLightModelf :jm_glLightModelfv_3 jm_glLightModelfv_3 :jm_glLightModelfv_2 jm_glLightModelfv_2 :jm_glLightf jm_glLightf :jm_glLightfv_4 jm_glLightfv_4 :jm_glLightfv_3 jm_glLightfv_3 :jm_glLineWidth jm_glLineWidth :jm_glLoadIdentity jm_glLoadIdentity :jm_glLoadMatrixf_2 jm_glLoadMatrixf_2 :jm_glLoadMatrixf_1 jm_glLoadMatrixf_1 :jm_glLogicOp jm_glLogicOp :jm_glMaterialf jm_glMaterialf :jm_glMaterialfv_4 jm_glMaterialfv_4 :jm_glMaterialfv_3 jm_glMaterialfv_3 :jm_glMatrixMode jm_glMatrixMode :jm_glMultMatrixf_2 jm_glMultMatrixf_2 :jm_glMultMatrixf_1 jm_glMultMatrixf_1 :jm_glMultiTexCoord4f jm_glMultiTexCoord4f :jm_glNormal3f jm_glNormal3f :jm_glNormalPointer jm_glNormalPointer :jm_glOrthof jm_glOrthof :jm_glPixelStorei jm_glPixelStorei :jm_glPointSize jm_glPointSize :jm_glPolygonOffset jm_glPolygonOffset :jm_glPopMatrix jm_glPopMatrix :jm_glPushMatrix jm_glPushMatrix :jm_glReadPixels jm_glReadPixels :jm_glRotatef jm_glRotatef :jm_glRotatex jm_glRotatex :jm_glSampleCoverage jm_glSampleCoverage :jm_glScalef jm_glScalef :jm_glScalex jm_glScalex :jm_glScissor jm_glScissor :jm_glShadeModel jm_glShadeModel :jm_glStencilFunc jm_glStencilFunc :jm_glStencilMask jm_glStencilMask :jm_glStencilOp jm_glStencilOp :jm_glTexCoordPointer jm_glTexCoordPointer :jm_glTexEnvf jm_glTexEnvf :jm_glTexEnvfv_4 jm_glTexEnvfv_4 :jm_glTexEnvfv_3 jm_glTexEnvfv_3 :jm_glTexImage2D jm_glTexImage2D :jm_glTexParameterf jm_glTexParameterf :jm_glTexParameteri jm_glTexParameteri :jm_glTexSubImage2D jm_glTexSubImage2D :jm_glTranslatef jm_glTranslatef :jm_glVertexPointer jm_glVertexPointer :jm_glViewport jm_glViewport :jm_glBegin jm_glBegin :jm_glEnd jm_glEnd :jm_glVertex3f jm_glVertex3f :jm_glPolygonMode jm_glPolygonMode})


