function Unlock-MySecretStore {
    $passwordPath = Join-Path (Split-Path $profile) SecretStore.vault.credential
    $pass = Import-Clixml $passwordPath
    Unlock-SecretStore $pass
}