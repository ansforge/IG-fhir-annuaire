# Problématiques connues - Annuaire Santé v1.2.0-snapshot-3

## Problématiques connues

 
This page includes translations from the original source language in which the guide was authored. Information on these translations and instructions on how to provide feedback on the translations can be found [here](translationinfo.md). 

### AsDeviceProfile

The AsDeviceProfile has a generic name even though it is specific to heavy medical equipment (EML — Équipements Matériels Lourds). For example, a Device resource could relate to a pacemaker, which falls outside the scope of the Annuaire Santé use case.

Two options are currently under consideration:

* Remove the generic AsDeviceProfile while keeping the dp and dr profiles
* Rename the profile to AsDeviceEMLProfile, AsDeviceHeavyEquipmentProfile, or similar

This work will be addressed as part of the FINESS+ model evolution.

