#!/bin/bash

mkdir mods || true

cd mods || exit 1

echo "Downloading fabric api..."
wget https://github.com/FabricMC/fabric/releases/download/0.67.1%2B1.18.2/fabric-api-0.67.1+1.18.2.jar

echo "Downloading ae2"
wget https://github.com/AppliedEnergistics/Applied-Energistics-2/releases/download/fabric%2Fv11.7.0/appliedenergistics2-fabric-11.7.0.jar

echo "Downloading Tree Feller..."
wget https://github.com/ThizThizzyDizzy/tree-feller/releases/download/v1.18.2/TreeFeller-1.18.2.jar

echo "Downloading Scythe..."
wget https://cdn.modrinth.com/data/SiaCYfuX/versions/WYqKuZDH/Scythe-3.0.jar
