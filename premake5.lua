project "ImGui"
    kind "StaticLib"
    language "C++"
    cppdialect "C++23"
    staticruntime "On"

    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    files {
        "imconfig.h",
        "imgui.h",
        "imgui.cpp",
        "imgui_draw.cpp",
        "imgui_internal.h",
        "imgui_widgets.cpp",
        "imstb_rectpack.h",
        "imstb_textedit.h",
        "imstb_truetype.h",
        "imgui_demo.cpp",
        "imgui_tables.cpp",
        "backends/imgui_impl_glfw.cpp",
        "backends/imgui_impl_opengl3.cpp",
        "backends/imgui_impl_opengl3_loader.h"
    }

    includedirs {
        ".",
        "backends",
        "%{wks.location}/Client/External/GLFW/include",
        "%{wks.location}/Client/External/Glad/include",
    }

    links {
        "GLFW"
    }
