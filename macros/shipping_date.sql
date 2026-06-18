{% macro shipping_days(start_col, end_col, unit='day') %}
    DATEDIFF({{ unit }}, {{ start_col }}, {{ end_col }})
{% endmacro %}