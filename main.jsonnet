local lib      = import 'lib.jsonnet';
local mod      = import 'mod.jsonnet';
local default  = import 'default.jsonnet';
local manifest = import 'manifest.jsonnet';

function(context='default', config={}, patch=function(m)m)
{
  apiVersion: 'tanka.dev/v1alpha1',
  kind: 'Environment',
  metadata: {
    name: 'environments/default'
  },
  spec: {
    namespace: 'default',
    contextNames: [ context ]
  },
  data: (patch(manifest(lib, mod, default + config)))
}
