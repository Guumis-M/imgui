project "ImGui"
    kind "StaticLib"
    language "C++"
    --staticruntime "off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
    "imconfig.h",
    "imgui.h",
    "imgui.cpp", 
    "imgui_draw.cpp",
    "imgui_internal.h",
    "imgui_widgets.cpp",
    "imgui_rectpack.h",
    "imgui_textedit.h",
    "imgui_truetype.h",
    "imgui_demo.cpp",
    
    }

	filter "system:windows"
        systemversion "latest"
        cppdialect "c++20"
        staticruntime "On"


    filter {"configurations:Debug"}
        runtime "Debug"
        symbols  "on"

        filter {"configurations:Release"}
        runtime "Release"
        optimize "on"
