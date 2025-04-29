
{% macro rename_columns_using_mapping(table, relation) %}
  {# First verify the relations exist #}
  {%- if not (ref( table ) ) -%}
    {% do exceptions.raise_compiler_error("Required tables not found") %}
  {%- endif -%}

  {# Get columns from source tble - with error handling #}

  {%- set old_columns = dbt_utils.get_filtered_columns_in_relation(from=ref(table)) -%}

  {%- set new_column_names = ["date_witness","date_agent","witness","agent","latitude","longitude","city","country","city_agent","has_weapon","has_hat","has_jacket","behavior"] -%}


  SELECT {{''}}
    {%- for old_column in old_columns -%}
        "{{ old_column }}" AS {{ new_column_names[loop.index0] }}
      {%- if not loop.last %}, {% endif -%}
    {%- endfor -%} {{''}}
  FROM {{ relation }}
{% endmacro %}