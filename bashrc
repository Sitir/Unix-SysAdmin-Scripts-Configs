alias vag_up='cd  ~/Projects/{{PROJECT_NAME}}/ && vagrant up && cd -'
alias vag_halt='cd ~/Projects/{{PROJECT_NAME}}/ && vagrant halt && cd -'
alias vag_ssh='cd ~/Projects/{{PROJECT_NAME}}/ && vagrant ssh && cd - '
alias vag_status='cd ~/Projects/{{PROJECT_NAME}}/ && vagrant status && cd - '
alias vag_reload='cd ~/Projcets/{{PROJECT_NAME}}/ && vagrant reload && cd -'


#Android PATH

export ANDROID_HOME=/linux-utils/LINUX/Android/Sdk
export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
export PATH=${PATH}:/opt/gradle/gradle-4.2.1/bin

