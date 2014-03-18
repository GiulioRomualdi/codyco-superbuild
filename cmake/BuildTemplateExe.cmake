# TemplateExe
include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(TemplatePkg QUIET)

ycm_ep_helper(TemplateExe TYPE GIT
                          STYLE GITLAB_ICUB_ORG
                          REPOSITORY walkman/template-exe.git
                          TAG master
                          COMPONENT templates
                          DEPENDS TemplatePkg)
