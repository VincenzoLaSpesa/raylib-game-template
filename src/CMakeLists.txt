# inner file
set(BaseDirectory "${CMAKE_BINARY_DIR}/bin/")

# Runnable projects
add_executable(RaylibGame raylib_game.c)
#set_target_properties(RaylibGame PROPERTIES CXX_STANDARD 11 CXX_STANDARD_REQUIRED YES VS_DEBUGGER_WORKING_DIRECTORY "${CMAKE_BINARY_DIR}/bin/Debug")
target_include_directories(RaylibGame PRIVATE ${RAYLIB_INCLUDE_DIRS})
target_link_libraries(RaylibGame ${CMAKE_DL_LIBS} ${RAYLIB_LIBRARIES})
IF (NOT WIN32)
  target_link_libraries(RaylibGame m)
  target_link_libraries(RaylibGame pthread)
ENDIF()
target_sources(RaylibGame PUBLIC screen_ending.c screen_gameplay.c screen_logo.c screen_options.c screen_title.c )
#link_directories( ${RAYLIB_LIBRARIES})
#
install(TARGETS RaylibGame RUNTIME DESTINATION ${PROJECT_INSTALL_DIR})

# post build stuff ( like copying assets or custom dlls to the dist folder) can be placed here
file(COPY "./resources" DESTINATION ${BaseDirectory})

