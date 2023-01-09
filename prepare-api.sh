# To run the commands below, you need to have installed @redocly/cli globally--for example, with npm: 
# npm i -g @redocly/cli@latest

# API=./openapi/contracts/ref/cloud.yml

redocly lint --max-problems=1

# To access environment variables in Node process.env while the command runs,
# set them preceding the redocly CLI command.
API_PLATFORM=v2.6 redocly bundle oss --output=./api-influxdata-ref/oss
API_PLATFORM=cloud redocly bundle cloud --output=./api-influxdata-ref/cloud

# redocly split $API --outDir ./api-influxdata-ref/cloud
