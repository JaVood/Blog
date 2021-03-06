{% extends 'core/base.tpl' %}
{% import 'core/macros.tpl' as macro %}
{% block title %}{{ _('Tags') }}{% endblock %}
{% block sidebar %}
{{ macro.breadcrumps(crumbs, _('Tags')) }}
{% endblock %}
{% block content %}
    <h1>{{ _('Tags') }}</h1>
    <br>
    {% for tag in tags %}
        <h4><a href="{{ url('vlog:tag', tag.slug ) }}">{{ tag.title }}</a></h4>
        <hr>
    {% endfor %}
    <h2>{{ _('3 most commented articles:') }}</h2>
    {% for article in articles %}
        <h4>{{ article.title }}</h4>
        <hr>
    {% endfor %}
{% endblock %}


