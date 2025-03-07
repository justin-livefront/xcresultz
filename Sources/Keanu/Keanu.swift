import ArgumentParser
import Foundation

@main
struct Keanu: ParsableCommand {
    @Option(help: "Path to the xcresults") var path: String = ""
    @Option(help: "Path at which the command will be executed.") var workingDirectory: String = ""

    func run() throws {
        /* generate summary */
        let html = """
        <html>
        <body>
        <h1>Keanu Approves!</h1>
        <p>
        <img src="https://c.tenor.com/zsM4dGGpRUkAAAAC/woah-keanu-reeves.gif"/>
        </p>
        </body>
        </html>
        """

        if #available(macOS 13.0, *) {
            let summaryData = html.data(using: .utf8)
            let path = URL(fileURLWithPath: workingDirectory)
            let file = path.appendingPathComponent("summary.html", isDirectory: false)
            print("Generating summary at \(file)")
            try summaryData?.write(to: file, options: .atomic)
        } else {
        }
    }
}
