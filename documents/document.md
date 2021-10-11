---
documentclass: bxjsarticle
classoption:
- pandoc
# - titlepage
table-of-contents: false
title: タイトル
author:
- 学籍番号
- 学科
- 学年クラス
- 名前
---
[@eq:b_equation]はどこかで見たことがある数式である。
$$ x^2 + y^2 = 1 $$ {#eq:b_equation}

[@tbl:c_table]はただの表である。

| head1 | head2 |
|:--|:--|
| 1/1 | 1/2 |
| 2/1 | 2/2 |

: 例 {#tbl:c_table}

[@lst:d_code]は動きそうである。

```{#lst:d_code .python .numberLines}
import sys
print(sys.version())
print("Hello, Pandoc")
```