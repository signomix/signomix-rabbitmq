FROM rabbitmq:3-management

# Define environment variables.
ENV RABBITMQ_USER user
ENV RABBITMQ_PASSWORD user
ENV RABBITMQ_PID_FILE /var/lib/rabbitmq/mnesia/rabbitmq


# Skrypt init.sh dodaje konto użytkownika user z hasłem user i z prawami administratora 
# Skrypt wywołuje tworzy wymaganie kolejki 
ADD init.sh /init.sh
RUN chmod +x /init.sh
EXPOSE 15672

# Define default command
CMD ["/init.sh"]