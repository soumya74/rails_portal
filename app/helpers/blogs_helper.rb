module BlogsHelper

    class CodeRayify < Redcarpet::Render::HTML
        def block_code(code, language)
            CodeRay.scan(code, language).div
        end
    end

    def markdown(text)
        codeRayified = CodeRayify.new(filter_html: true, hard_wrap: true)

        options = {
            fenced_code_blocs: true,
            no_intra_emphasis: true,
            autolink: true,
            lax_html_blocks: true,
            tables: true,
            strikethrough: true,
            underline: true,
            highlight: true,
            quote: true,
            superscript: true,
        }

        markdown_to_html = Redcarpet::Markdown.new(codeRayified, options)
        markdown_to_html.render(text).html_safe
    end
end
