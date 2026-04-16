{% macro filter_by_date(table, date_column, start_date) %}
    SELECT * 
    FROM {{ table }}
    WHERE {{ date_column }} >= '{{ start_date }}'
{% endmacro %}