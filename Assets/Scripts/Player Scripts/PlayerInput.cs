using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerInput : MonoBehaviour {

    #region Properties
    PlayerController controller;
    #endregion

    #region keybinds
    public string horizontalInput = "Horizontal";
    public string verticalInput = "Vertical";
    public KeyCode jumpInput = KeyCode.Space;
    public KeyCode sprintInput = KeyCode.LeftShift;
    public KeyCode dodgeInput = KeyCode.LeftAlt;

#endregion
    // Use this for initialization
    void Start () {
        controller = GetComponent<PlayerController>();
	}
	
	// Update is called once per frame
	void Update () {
		
	}
}
