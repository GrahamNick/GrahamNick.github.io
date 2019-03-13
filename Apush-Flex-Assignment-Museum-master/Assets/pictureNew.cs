using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class pictureNew : MonoBehaviour {
	public GameObject prefab;
	private GameObject clone;


	void OnTriggerEnter(Collider other) {
		clone = Instantiate (prefab);
	}
	void OnTriggerExit(Collider other) {
		Destroy (clone,0.25f);
	}
}
