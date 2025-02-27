import ArgumentParser
import xcbz_lib

@main
struct xcbz: ParsableCommand {
    mutating func run() throws {
        print(xcbz_lib.add(2,3))
    }
}
