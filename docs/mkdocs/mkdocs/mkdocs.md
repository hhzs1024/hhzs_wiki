# mkdocs学习

## 1. markdown语法
详细参考菜鸟教程 [Markdown](https://www.runoob.com/markdown)

## 2. mkdocs安装部署

可以使用mkdocs进行模版式建立个人博客，静态网站等，并且可以快速部署到github
MkDocs官网 <https://mkdocs.org.cn/>

## 3. 主题模板
mkdocs自带两个默认主题(`mkdocs` 和 `readthedocs`)，可以使用第三方主题，可以在[社区维基](https://github.com/mkdocs/mkdocs/wiki/MkDocs-Themes)和[排名目录](https://github.com/mkdocs/catalog#-theming)中找到。
```
theme:
  name: readthedocs
```

## 4. 我的主题
> Material for MkDocs
> 社区最好看的主题……之一
```
theme:
  name: material
```

[官网](https://mkdoc-material.llango.com/)
## 5. 引路人
[noodlefighter](https://wiki.noodlefighter.com)  
[cuishuaiwen](http://www.cuishuaiwen.com:8000/zh/PROJECT/TECH-BLOG/mkdocs_and_material/)  
[官方手册](https://squidfunk.github.io/mkdocs-material/reference/){.md-button}

## 6. 提示

!!! Note "提示"
    本功能使用如下：一个块以`!!!`或者`???`开头，`???`表示默认折叠，`???+`表示默认展开。后跟一个用作类型限定符的关键字: `note, quote, tip, info, warning...`。块的内容在下一行，缩进四个空格：
    该框架需开启以下功能：  
    ```yaml linenums="1"
    markdown_extensions:
      - admonition            #警告
      - pymdownx.details      #细节
      - pymdownx.superfences  #超级围栏 以上三个作文字框显示
    theme:
      icon:
        admonition: #不加也可以，使用默认图标
          note: fontawesome/solid/note-sticky
          abstract: fontawesome/solid/book
          info: fontawesome/solid/circle-info
          tip: fontawesome/solid/bullhorn
          success: fontawesome/solid/check
          question: fontawesome/solid/circle-question
          warning: fontawesome/solid/triangle-exclamation
          failure: fontawesome/solid/bomb
          danger: fontawesome/solid/skull
          bug: fontawesome/solid/robot
          example: fontawesome/solid/flask
          quote: fontawesome/solid/quote-left
    ```
    > 可多重嵌套
    ??? abstract "展开:octicons-chevron-down-12:"
        !!! info
        !!! tip
        !!! success
        !!! warning
        !!! failure
        !!! danger
        !!! bug
        !!! example
        !!! quote

## 7. 注释
!!! note annotate "注释"
    插入可展开的注释，例：(1)   在告警框里需要加上`annotate`，例如`!!! note annotate "注释"`   
    使用配置：(2)  
    ```yaml
    markdown_extensions:
      - attr_list
      - md_in_html
      - pymdownx.superfences
    theme:
      icon:
        annotation: material/arrow-right-circle
    ```


1.  🙋‍♂️我是一个注释！我可以包含code、格式化的文本、图像……基本上任何可以用 Markdown 编写的内容。
2.  :woman_raising_hand: I'm an annotation as well!

!!! note annotate
    其他写法，需要下一行加上`{.annotate}` (1)  
    {.annotate}

1. dfadfadsf

## 8. 按键

!!! info "用法"
    ```yaml
    markdown_extensions:
      - attr_list
    ```
    要将链接渲染成按钮，请在链接后添加花括号，并添加.md-button类选择器。`[send](#5){.md-button}`

[send](#5){.md-button}

## 9. 代码块

!!! note "配置"
    此配置启用代码块和行内代码块的语法高亮显示，并允许直接从其他文件引入源代码。请将以下代码添加到mkdocs.yml：  
    ```yaml
    markdown_extensions:
      - pymdownx.highlight:
        anchor_linenums: true
        line_spans: __span
        pygments_lang_class: true
      - pymdownx.inlinehilite
      - pymdownx.snippets
      - pymdownx.superfences
    ```
    !!! note "复制按钮"
        ```yaml
        theme:
          features:
            - content.code.copy
        ```
    !!! info "添加标题"
        在语言后添加`title="文件名"`
        ```c title="hello.c"
        void main(void)
        {
            printf("hello world\n");
        }
        ```
    !!! danger "添加行号"
        在语言后添加`linenums="1"`
        ```c title="hello.c" linenums="1"
        void main(void)
        {
            printf("hello world\n");
        }
        ```