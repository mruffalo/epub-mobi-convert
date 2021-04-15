cwlVersion: v1.1
class: CommandLineTool
hints:
  DockerRequirement:
    dockerPull: mruffalo/calibre:latest
requirements:
  InlineJavascriptRequirement: {}
baseCommand: ebook-convert

inputs:
  epub_file:
    type: File
    inputBinding:
      position: 0
  mobi_output:
    type: string
    default: output.mobi
    inputBinding:
      position: 1
      valueFrom: $(inputs.epub_file.nameroot + ".mobi")
outputs:
  mobi_file:
    type: File[]
    outputBinding:
      glob: "*.mobi"
