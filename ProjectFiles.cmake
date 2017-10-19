SET(IMGUI_SOURCE ${IMGUI_SOURCE}
	${CMAKE_SOURCE_DIR}/thirdparty/Imgui/imgui.cpp
	${CMAKE_SOURCE_DIR}/thirdparty/Imgui/imgui_demo.cpp
	${CMAKE_SOURCE_DIR}/thirdparty/Imgui/imgui_draw.cpp
	${CMAKE_SOURCE_DIR}/thirdparty/Imgui/imgui-SFML.cpp
)

SET(IMGUI_HEADER ${IMGUI_HEADER}
	${CMAKE_SOURCE_DIR}/thirdparty/Imgui/imconfig.h
	${CMAKE_SOURCE_DIR}/thirdparty/Imgui/imconfig-SFML.h
	${CMAKE_SOURCE_DIR}/thirdparty/Imgui/imgui.h
	${CMAKE_SOURCE_DIR}/thirdparty/Imgui/imgui_internal.h
	${CMAKE_SOURCE_DIR}/thirdparty/Imgui/imgui-SFML.h
	${CMAKE_SOURCE_DIR}/thirdparty/Imgui/stb_rect_pack.h
	${CMAKE_SOURCE_DIR}/thirdparty/Imgui/stb_textedit.h
	${CMAKE_SOURCE_DIR}/thirdparty/Imgui/stb_truetype.h
)


SET(TEST_SOURCE_FILES ${TEST_SOURCE_FILES}
)