using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[DisallowMultipleComponent]
public class PerObjectMaterialProperties : MonoBehaviour
{
    static int baseColorId = Shader.PropertyToID("_BaseColor");
    static MaterialPropertyBlock block;

    [SerializeField]
    Color color = Color.white;

    void Awake()
    {
        OnValidate();
    }
    
    void OnValidate()
    {
        if (block == null)
        {
            block = new MaterialPropertyBlock();
        }
        block.SetColor(baseColorId, color);
        GetComponent<Renderer>().SetPropertyBlock(block);
    }
}
