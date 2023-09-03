# SPDX-FileCopyrightText: 2023 Simen Strange <https://github.com/dxlr8r/kube.acme.sh>
# SPDX-License-Identifier: MIT

function(config, lib, mod)
local dx = lib.dx;
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

dx.obj.forEach(function(f,v) {
  [f]: v + { metadata+: { labels+: config.labels }}
}, manifest) // apply labels to all resources
