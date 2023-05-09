FROM solr:5.5
USER root

# Create a new core directory
# Set the ownership and permissions of the configuration files
RUN chown -R solr:solr /opt/solr/server/solr/mycores \
    && chmod -R 777 /opt/solr/server/solr/mycores

USER solr
RUN mkdir -p /opt/solr/server/solr/mycores/solr_cakephp
RUN mkdir -p /opt/solr/server/solr/mycores/solr_cakephp/conf

# Copy the custom configuration files to the new core directory
COPY ./conf/ /opt/solr/server/solr/mycores/solr_cakephp/conf/

#location may cause error inside docker
COPY ./solr/dist/ /opt/solr/dist/

COPY ./json_data/fixed_articles.xml /opt/solr/example/exampledocs/
USER root
# Set the ownership and permissions of the configuration files
RUN chown -R solr:solr /opt/solr/server/solr/mycores/solr_cakephp/conf \
    && chmod -R 777 /opt/solr/server/solr/mycores/solr_cakephp/conf

#USER solr
# Create a new core.properties file for the new core
RUN echo 'name=solr_cakephp' > /opt/solr/server/solr/mycores/solr_cakephp/core.properties

# Restart the Solr server to load the new core
CMD ["solr-foreground"]

