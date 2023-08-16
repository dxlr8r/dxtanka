# SPDX-FileCopyrightText: 2023 Simen Strange <https://github.com/dxlr8r/kube.acme.sh>
# SPDX-License-Identifier: MIT

function(lib, mod, config)
local manifest =
{
  Namespace: {
    apiVersion: "v1",
    kind: "Namespace",
    metadata: {
      name: config.name
    }
  }
};

lib.obj.forEach(function(f,v) { [f]: v + { metadata+: { labels+: config.labels }} }, manifest) + {config:: config} // apply labels to all resources
