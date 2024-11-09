#!/bin/bash

# Load .env file
. "$(dirname "$0")/../.env"

# Proxy
cd "${EV_ROOT_PATH}/servers/proxy/plugins" || exit

# Create symbolic links for Proxy plugins
find ../../../libraries/plugins/velocity/ -name 'Geyser*.jar' -exec ln -sf {} geyser.jar \;
find ../../../libraries/plugins/velocity/ -name 'floodgate*.jar' -exec ln -sf {} floodgate.jar \;
find ../../../libraries/plugins/velocity/ -name 'LuckPerms*.jar' -exec ln -sf {} luckperms.jar \;
find ../../../libraries/plugins/velocity/ -name 'CMIV*.jar' -exec ln -sf {} cmiv.jar \;
find ../../../libraries/plugins/velocity/ -name 'LiteBans*.jar' -exec ln -sf {} litebans.jar \;
find ../../../libraries/plugins/velocity/ -name 'packetevents*.jar' -exec ln -sf {} packetevents.jar \;
find ../../../libraries/plugins/velocity/ -name 'protocolize*.jar' -exec ln -sf {} protocolize.jar \;
find ../../../libraries/plugins/velocity/ -name 'Pl-Hide-Pro*.jar' -exec ln -sf {} plhidepro.jar \;
find ../../../libraries/plugins/velocity/ -name 'ViaVersion*.jar' -exec ln -sf {} viaversion.jar \;
find ../../../libraries/plugins/velocity/ -name 'ViaBackwards*.jar' -exec ln -sf {} viabackwards.jar \;

# Wildcraft
cd "${EV_ROOT_PATH}/servers/wildcraft/plugins" || exit

# Create symbolic links for Wildcraft plugins
find ../../../libraries/plugins/ -name 'CMI-*.jar' -exec ln -sf {} CMI.jar \;
find ../../../libraries/plugins/ -name 'CMILib*.jar' -exec ln -sf {} CMILib.jar \;
find ../../../libraries/plugins/ -name 'Vault*.jar' -exec ln -sf {} Vault.jar \;
find ../../../libraries/plugins/ -name 'LuckPerms*.jar' -exec ln -sf {} LuckPerms.jar \;
find ../../../libraries/plugins/ -name 'mcMMO*.jar' -exec ln -sf {} mcMMO.jar \;
find ../../../libraries/plugins/ -name 'FastAsyncWorldEdit*.jar' -exec ln -sf {} FastAsyncWorldEdit.jar \;
find ../../../libraries/plugins/ -name 'worldguard*.jar' -exec ln -sf {} WorldGuard.jar \;
find ../../../libraries/plugins/ -name 'ProtocolLib*.jar' -exec ln -sf {} ProtocolLib.jar \;
find ../../../libraries/plugins/ -name 'Citizens*.jar' -exec ln -sf {} Citizens.jar \;
find ../../../libraries/plugins/ -name 'Chunky-*.jar' -exec ln -sf {} Chunky.jar \;
find ../../../libraries/plugins/ -name 'ChunkyBorder-*.jar' -exec ln -sf {} ChunkyBorder.jar \;
find ../../../libraries/plugins/ -name 'Lands*.jar' -exec ln -sf {} Lands.jar \;
find ../../../libraries/plugins/ -name 'Spartan*.jar' -exec ln -sf {} Spartan.jar \;
find ../../../libraries/plugins/ -name 'ViaVersion*.jar' -exec ln -sf {} ViaVersion.jar \;
find ../../../libraries/plugins/ -name 'ViaBackwards*.jar' -exec ln -sf {} ViaBackwards.jar \;
