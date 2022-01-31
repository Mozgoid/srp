using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[DisallowMultipleComponent]
public class PerObjectMaterialProperties : MonoBehaviour
{
    static int baseColorId = Shader.PropertyToID("_BaseColor");
    static int cutoffId  = Shader.PropertyToID("_Cutoff");
    static MaterialPropertyBlock block;

    [SerializeField]
    Color color = Color.white;

    
	[SerializeField, Range(0f, 1f)]
	float cutoff = 0.5f;

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
        
		block.SetFloat(cutoffId, cutoff);
        GetComponent<Renderer>().SetPropertyBlock(block);
    }
}
