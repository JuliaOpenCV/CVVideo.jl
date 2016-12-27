module CVVideo

using LibOpenCV
using CVCore
using Cxx

libopencv_video = LibOpenCV.find_library_e("libopencv_video")
try
    Libdl.dlopen(libopencv_video, Libdl.RTLD_GLOBAL)
catch e
    warn("You might need to set DYLD_LIBRARY_PATH to load dependencies proeprty.")
    rethrow(e)
end

cxx"""
#include <opencv2/video.hpp>
"""

end # module
