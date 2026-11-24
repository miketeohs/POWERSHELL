workflow MyWorkflow {

Parallel {
    InlineScript { "Shutting Down" ; wsl --shutdown }
    InlineScript { "WSL Update" ; wsl --update }
}


}