import html
import os


def declare_variables(variables, macro):
    @macro
    def code_from_file(fn: str, flavor: str = ""):
        """
        Load code from a file and save as a preformatted code block.
        If a flavor is specified, it's passed in as a hint for syntax highlighters.

        Example usage in markdown:

            {{code_from_file("code/myfile.py", "python")}}

        """
        docs_dir = variables.get("docs_dir", "docs")
        fn = os.path.abspath(os.path.join(docs_dir, fn))
        if not os.path.exists(fn):
            return f"""<b>File not found: {fn}</b>"""
        with open(fn, "r") as f:
            return (
                f"""<pre><code class="{flavor}">{html.escape(f.read())}</code></pre>"""
            )

    @macro
    def external_markdown(fn: str):
        """
        Load markdown from files external to the mkdocs root path.
        Example usage in markdown:

            {{external_markdown("../../README.md")}}

        """
        docs_dir = variables.get("docs_dir", "docs")
        fn = os.path.abspath(os.path.join(docs_dir, fn))
        if not os.path.exists(fn):
            return f"""<b>File not found: {fn}</b>"""
        with open(fn, "r") as f:
            return f.read()