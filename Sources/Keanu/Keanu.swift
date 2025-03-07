import ArgumentParser

@main
struct Keanu: ParsableCommand {
    @Option(help: "Path to the xcresults") var path: String = ""
    @Option(help: "Path at which the command will be executed.") var workingDirectory: String = ""

    func run() throws {
        print("Hello World!")
    }
}
