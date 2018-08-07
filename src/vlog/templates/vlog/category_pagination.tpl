<div class="pagination">
        <span class="step-links">
            {% if articles.has_previous %}
                <a href="?page=1">&laquo;first</a>
                <a href="?page={{ articles.previous_page_number }}">{{ _('previous') }}</a>
            {% endif %}

            <span class="current">
                Page {{ articles.number }} of {{ articles.paginator.num_pages }}.
            </span>

            {% if articles.has_next %}
                <a href="?page={{ articles.next_page_number }}">next</a>
                <a href="?page={{ articles.paginator.num_pages }}">last &raquo;</a>
            {% endif %}
        </span>
    </div>