using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CharacterMotor : MonoBehaviour {

    #region Properties

    //movement prpoerties
    [HideInInspector]
    public bool
        isGrounded,
        isSprinting;

    //action bools
    [HideInInspector]
    public bool
        isJumping;

    //combat bools
    [HideInInspector]
    public bool
        isAttacking,
        isBlocking,
        isDodging;

    #endregion

    #region Direction Variables
    [HideInInspector]
    public Vector3 targetDirection;
    protected Quaternion targetRotation;
    #endregion

    // Use this for initialization
    void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}
}
