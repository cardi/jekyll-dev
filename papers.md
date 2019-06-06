---
---

{%- comment -%}

{% for year in (2018..2019) reversed %}

## {{ year }}

{% bibliography --query @*[year={{ year }}] --prefix y{{ year }} %}

{% endfor %}

{%- endcomment -%}
