workspace "A++"
    configurations { "Debug", "Release" }   

 project "game"
    kind "SharedLib"
    language "C++"

    targetdir "bin/%{cfg.buildcfg}/%{prj.name}" 
    objdir "bin-int/%{cfg.buildcfg}/%{prj.name}"

    files{
        "**.h",
        "**.cpp"
    }
    filter "configurations:Debug"
        defines {"DEBUG"}
        symbols "On"
    
    filter "configurations:Release"
        defines {"NDEBUG"}
        optimize "On"


project "sandbox"
    kind "ConsoleApp"
    language "C++"
    
    targetdir "bin/%{cfg.buildcfg}/%{prj.name}" 
    objdir "bin-int/%{cfg.buildcfg}/%{prj.name}"


    files{
        "**.h",
        "**.cpp"
    }
    filter "configurations:Debug"
        defines {"DEBUG"}
        symbols "On"
    
    filter "configurations:Release"
        defines {"NDEBUG"}
        optimize "On"