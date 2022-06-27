const app = require('../app_storage');

test('test findMissingItemsInSource', () => {
  const storageDiskList = [
    '123AA123',
    '123AA124',
    '123AA125',
  ];
  const kubernetesDisksWithoutError = [
    {disk: '123AA123'},
    {disk: '123AA125'},
  ]
  const isInKubernetes = (storageDisk, kubernetesDisk) => {
    return storageDisk == kubernetesDisk.disk}
  const missingDisks = app.findMissingItemsInSource(isInKubernetes, storageDiskList, kubernetesDisksWithoutError);
  expect(missingDisks.length).toBe(1)
  expect(missingDisks[0]).toBe('123AA124')

})
