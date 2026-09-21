import Foundation

import ArgumentParser



final class ScriptOptions : ParsableArguments {
	
	@Option(name: .long, help: "The version of Swift to use in the generated Package.swift file.\nBy default the version is inferred from the operating system.")
	var swiftVersion: String?
	
	@Flag(name: .long)
	var useSSHForGithubDependencies: Bool = false
	
	@Flag(name: .customShort("c"))
	var scriptPathIsContent = false
	
	@Argument
	var scriptPathOrContent: String = "-"
	
}
