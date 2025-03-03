import ArgumentParser
import xcbz

@main
struct CLI: ParsableCommand {
    mutating func run() throws {
        print(xcbz.add(2,3))
    }
}
