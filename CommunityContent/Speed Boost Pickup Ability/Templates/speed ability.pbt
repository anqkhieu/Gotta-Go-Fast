Assets {
  Id: 6510122541402761313
  Name: "speed ability"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 11194303001535496566
      Objects {
        Id: 11194303001535496566
        Name: "speed ability"
        Transform {
          Scale {
            X: 0.583565414
            Y: 0.583565414
            Z: 0.583565414
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 14644516697890152780
        ChildIds: 5291489922516137225
        ChildIds: 2851831018638312384
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceon"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Trigger {
          TeamSettings {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          TriggerShape_v2 {
            Value: "mc:etriggershape:box"
          }
        }
      }
      Objects {
        Id: 14644516697890152780
        Name: "README"
        Transform {
          Location {
            X: -821.100159
            Y: -249.787567
            Z: -162.542542
          }
          Rotation {
          }
          Scale {
            X: 1.71360397
            Y: 1.71360397
            Z: 1.71360397
          }
        }
        ParentId: 11194303001535496566
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Script {
          ScriptAsset {
            Id: 5425548918614531096
          }
        }
      }
      Objects {
        Id: 5291489922516137225
        Name: "TrigOverlap"
        Transform {
          Location {
            X: 2.30709839
            Y: 16.2361603
            Z: -11.043129
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 11194303001535496566
        UnregisteredParameters {
          Overrides {
            Name: "cs:GEO"
            ObjectReference {
              SubObjectId: 2851831018638312384
            }
          }
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Script {
          ScriptAsset {
            Id: 3988813498609632216
          }
        }
      }
      Objects {
        Id: 2851831018638312384
        Name: "Group"
        Transform {
          Location {
            X: 3.95345306
            Y: 4.40013123
            Z: -9.05641651
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 11194303001535496566
        ChildIds: 7032605790184877097
        ChildIds: 330542320445071629
        ChildIds: 7397511850931435090
        ChildIds: 13692401537417692861
        ChildIds: 13987400693004589687
        ChildIds: 10728389658129128312
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceon"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 7032605790184877097
        Name: "Text 01: S"
        Transform {
          Location {
            X: 5.9674921
            Y: -42.8641815
            Z: -57.6647758
          }
          Rotation {
            Yaw: 89.9999924
          }
          Scale {
            X: 1.71360397
            Y: 1.71360397
            Z: 1.71360397
          }
        }
        ParentId: 2851831018638312384
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 11821690516205415543
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 11821690516205415543
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 3702191406046426907
            }
          }
          Overrides {
            Name: "ma:Font.Sides:color"
            Color {
              R: 0.0455627553
              G: 0.86
              A: 0.478000015
            }
          }
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10683490874309360936
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
          }
        }
      }
      Objects {
        Id: 330542320445071629
        Name: "SpeedAbility"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 0.248141408
            Y: 1.71360397
            Z: 1.71360397
          }
        }
        ParentId: 2851831018638312384
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11821690516205415543
            }
          }
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 2383123866306930752
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
          }
        }
      }
      Objects {
        Id: 7397511850931435090
        Name: "Text 01: S"
        Transform {
          Location {
            X: -5.68572617
            Y: 42.7027206
            Z: -55.5211639
          }
          Rotation {
            Yaw: -90
          }
          Scale {
            X: 1.71360397
            Y: 1.71360397
            Z: 1.71360397
          }
        }
        ParentId: 2851831018638312384
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 11821690516205415543
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 11821690516205415543
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 3702191406046426907
            }
          }
          Overrides {
            Name: "ma:Font.Sides:color"
            Color {
              R: 0.0455627553
              G: 0.86
              A: 0.520000041
            }
          }
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10683490874309360936
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
          }
        }
      }
      Objects {
        Id: 13692401537417692861
        Name: "BobEffect"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1.71360397
            Y: 1.71360397
            Z: 1.71360397
          }
        }
        ParentId: 2851831018638312384
        UnregisteredParameters {
          Overrides {
            Name: "cs:vfx1"
            ObjectReference {
              SubObjectId: 10728389658129128312
            }
          }
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Script {
          ScriptAsset {
            Id: 15274739279835977984
          }
        }
      }
      Objects {
        Id: 13987400693004589687
        Name: "Ember Volume VFX"
        Transform {
          Location {
            X: -9.95875454
            Y: 0.0696308464
            Z: -7.28943205
          }
          Rotation {
          }
          Scale {
            X: 1.71360397
            Y: 1.71360397
            Z: 1.71360397
          }
        }
        ParentId: 2851831018638312384
        UnregisteredParameters {
          Overrides {
            Name: "bp:Color"
            Color {
              G: 0.820000052
              B: 0.021721974
              A: 1
            }
          }
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Blueprint {
          BlueprintAsset {
            Id: 18019432871027586444
          }
          TeamSettings {
          }
          Vfx {
            AutoPlay: true
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 10728389658129128312
        Name: "Health Spiral VFX"
        Transform {
          Location {
            X: -3.36717319
            Y: -0.584972382
            Z: -15.137598
          }
          Rotation {
          }
          Scale {
            X: 1.71360397
            Y: 1.71360397
            Z: 1.71360397
          }
        }
        ParentId: 2851831018638312384
        UnregisteredParameters {
          Overrides {
            Name: "bp:Color"
            Color {
              G: 0.86
              B: 0.0569537506
              A: 1
            }
          }
          Overrides {
            Name: "bp:Life"
            Float: 0.5
          }
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Blueprint {
          BlueprintAsset {
            Id: 8352511991520404227
          }
          TeamSettings {
          }
          Vfx {
            AutoPlay: true
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
    }
    Assets {
      Id: 10683490874309360936
      Name: "Text 01: S"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "F1_Text_018"
      }
    }
    Assets {
      Id: 11821690516205415543
      Name: "Metal Gold 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_metal_gold_001"
      }
    }
    Assets {
      Id: 3702191406046426907
      Name: "Emissive Glow Transparent"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_basic_emissive_001"
      }
    }
    Assets {
      Id: 2383123866306930752
      Name: "Sphere"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_sphere_002"
      }
    }
    Assets {
      Id: 18019432871027586444
      Name: "Ember Volume VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_ember_volume_vfx"
      }
    }
    Assets {
      Id: 8352511991520404227
      Name: "Health Spiral VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_health_spiral"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  Marketplace {
    Description: "Run over this to gain a temporary speed boost."
  }
  SerializationVersion: 81
  DirectlyPublished: true
}
