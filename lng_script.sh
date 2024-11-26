echo "came inside the lng_script file"
if test -d "./accelerator-home-ui/dist; then
    echo "File exists."
    sed -i "/<\/head>/i <script type=\"text/javascript\"> \
              const fbEndpoint = new URLSearchParams(window.location.search).get('__firebolt_endpoint'); \
              if (fbEndpoint) { \
                  window.__firebolt = window.__firebolt || {}; \
                  window.__firebolt.endpoint = fbEndpoint; \
              } \
    </script>" ./accelerator-home-ui/dist/es6/index.html
fi
