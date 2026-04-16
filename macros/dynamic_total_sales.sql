{% macro dynamic_total_sales(source_relation, amount_column, where_clause=None) %}

    SELECT sum({{amount_column}})  as total_sales
    FROM {{ source_relation }}
    {% if where_clause is not none %}
    WHERE {{ where_clause }}
    {% endif %}

{% endmacro %}