param location string = 'eastus2'
param staticSiteName string = 'todo-website'
//param repositoryUrl string = 'https://github.com/HammedBabatunde/arm-static-website'
param repositoryUrl string = 'https://github.com/Palash81/arm-static-website.git'
param repositoryToken string = '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'
param branch string = 'to-do-list'
param sku object = {
    name: 'Free'
    tier: 'Free'
}

resource staticSite 'Microsoft.Web/staticSites@2022-03-01' = {
  name: staticSiteName
  location: location
  sku: {
    name: sku.name
    tier: sku.tier
  }
  properties: {
    repositoryUrl: repositoryUrl
    repositoryToken: repositoryToken
    branch: branch
    buildProperties: {
      appArtifactLocation: '/'
    }
  }
}
