# Snippets

Snippets are a powerful tool in [VS Code][vs-code-snips]. This repository is for custom defined snippets that I use frequently. Anyone is welcome to use these snippets.

## Installation

You can clone this repository directly to your VS Code snippets directory, or you create your own snippets file(s) there to accomplish the same effect.

```shell
# on Linux within ==>     $HOME/.config/Code/User
# on Mac within ==>       $HOME/Library/Application Support/Code/User
# on Windows within ==>   %APPDATA%\Code\User
git clone git@github.com:jayblack388/snippets.git
# OR
touch snippets/custom.code-snippets
```

## Adding New Snippets

Within the related `.code-snippets` file (you can always add more of these files, or language specific files like `ruby.json`, `javascript.json`, `markdown.json`, etc), create a new key that is the title of your new snippet, the value will be a nested object. Within this new object you can add a lot of different options, the most common are shown below, there's more comprehensive documentation [here][vs-code-snips].

```json
{
  "newSnippetKey": {
    "body": [
      "`body` is an array of strings that will become the individual",
      "lines generated by the snippet. There are a number of customizations",
      "that can be added like `TabStops` and `Variables`",
      "$1 <- this is a TabStop, this and any matching TabStops $1 will",
      "be highlighted after the snippet is generated. You can then `tab`",
      "to select the next stop incrementing to $2 and $3 and so on; $0 will always be last.",
      "You can also add placeholders ${3:DefaultValue} or combine placeholders with variables",
      "${3:TM_FILENAME} and extend this with regex ${1:${TM_DIRECTORY/^.+\\/(.*)$/$1/}}"
      // TM_FILENAME refernces the current filename
      // TM_DIRECTORY gets the current path, the regex gets just the parent directory
    ],
    "description": "A description of what the snippet does",
    "prefix": "nsk",
    // prefix defines the key combination to trigger the snippet
    "scope": "javascript,typescript"
    // scope is a comma seperated string of any language where this snippet could trigger
  }
}
```

[vs-code-snips]: https://code.visualstudio.com/docs/editor/userdefinedsnippets