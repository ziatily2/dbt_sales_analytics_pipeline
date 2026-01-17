{%- set apples = ["fuji", "gala", "honeycrisp", "pink lady", "granny smith"] -%}

{% for i in apples %}
    
    {% if i != "gala" %}

        {{ i }}

    {% else %}

        I hate {{ i }}
        
    {% endif %}

{% endfor %}