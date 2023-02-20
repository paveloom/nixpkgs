{ fetchurl, buildZigmodPackage }:

buildZigmodPackage {
  pname = "zigmod-clap-test";
  version = "1";

  src = ./.;

  lockFile = fetchurl {
    url = "file:///" + ./zigmod.lock;
    hash = "sha256-mvUqK3OuEI3wx+AG33iM3Isrpa0Vfa9zKDggDn0X7zQ=";
  };
  manifestFile = fetchurl {
    url = "file:///" + ./zigmod.yml;
    hash = "sha256-+d4CE01/B4JJ7rNvhbe5mefJu/+rSJ+AoB28mG4forw=";
  };

  depsOutputHash = "sha256-3tb2/nqaWMXfx8FskhuqxNhmY/VSsn6ZIhlmCjfW238=";
}
