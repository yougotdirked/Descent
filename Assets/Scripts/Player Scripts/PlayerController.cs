using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerController : PlayerAnimator {

    #region Properties
    PlayerStats playerstats;
    #endregion
    // Use this for initialization
    void Start () {
        playerstats = GetComponent<PlayerStats>();
	}
	
	// Update is called once per frame
	void Update () {
		
	}

    public virtual void Sprint(bool value)
    {
        if (playerstats.canSprint)
            isSprinting = value;
        else
            isSprinting = false;
    }

    public virtual void Block()
    {
        //is the player allowed to block?
        //trigger block behaviour
        //block animation
        //update player stats
    }

    public virtual void Attack()
    {
        if (!playerstats.canAttack)
            return;

        if (isAttacking)
            return;

        attackCounter = playercombat.currentAttack.attackTime;
        playercombat.CalculateAttack();
        playercombat.AttackAnimation();
    }

    public virtual void Dodge()
    {
        //is the player allowed to dodge?
        if (!playerstats.canDodge || !isGrounded || isDodging || !isBlocking)
        {
            return;
        }
        //trigger behaviour
        if (input.magnitude > 0)
        {
            isDodging = true;
            dodgeCounter = dodgeTimer;

            //dodge animation
            animator.CrossFadeInFixedTime("StartDodge", 0.1f);

            //update player stats
            playerstats.currentStamina -= playerstats.dodgeCost;
        }
    }

    public virtual void Jump()
    {
        //is the player allowed to jump?
        bool jumpConditions = isGrounded && !isJumping && playerstats.canJump;
        //return if false
        if (!jumpConditions)
            return;
        //trigger jump behaviour
        jumpCounter = jumpTimer;
        isJumping = true;

        //Jump Animations WIP
        if (_rigidbody.velocity.magnitude < 1)
        {
            animator.CrossFadeInFixedTime("Jump", 0.1f);
        }
        else
        {
            animator.CrossFadeInFixedTime("JumpMove", 0.2f);
        }

        //update Player Stats
        playerstats.currentStamina -= playerstats.jumpCost;
    }

    public virtual void RotateWithAnotherTransform(Transform referenceTransform)
    {
        var newRotation = new Vector3(transform.eulerAngles.x, referenceTransform.eulerAngles.y, transform.eulerAngles.z);
        transform.rotation = Quaternion.Lerp(transform.rotation, Quaternion.Euler(newRotation), blockRotationSpeed * Time.fixedDeltaTime);
        targetRotation = transform.rotation;
    }

}
