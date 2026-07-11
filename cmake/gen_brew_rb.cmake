if(NOT DEFINED GITHUB_OWNER)
  message(FATAL_ERROR "Missing -DGITHUB_OWNER=xxx")
endif()
if(NOT DEFINED GITHUB_REPO)
  message(FATAL_ERROR "Missing -DGITHUB_REPO=xxx")
endif()
if(NOT DEFINED TAG)
  message(FATAL_ERROR "Missing -DTAG=xxx")
endif()
if(NOT DEFINED SOURCE_SHA256)
  message(FATAL_ERROR "Missing -DSOURCE_SHA256=xxxx")
endif()
if(NOT DEFINED OUTPUT_RB)
  set(OUTPUT_RB "${CMAKE_CURRENT_LIST_DIR}/../build/mytool.rb")
endif()

set(TPL_IN "${CMAKE_CURRENT_LIST_DIR}/../mytool.rb.in")
if(NOT EXISTS "${TPL_IN}")
  message(FATAL_ERROR "Template not found: ${TPL_IN}")
endif()

configure_file(
  "${TPL_IN}"
  "${OUTPUT_RB}"
  @ONLY
)

message(STATUS "Generated brew formula: ${OUTPUT_RB}")