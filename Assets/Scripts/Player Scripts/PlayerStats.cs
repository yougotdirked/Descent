using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

/*
 * Keeps track of the player's statistics and updateds the UI accordingly.
 * 
 * TODO
 * health mechanics
 * */
public class PlayerStats : MonoBehaviour
    {
        #region Properties
    public float maxStamina = 100;
    public float maxHealth = 100;

    public float jumpCost;
    public float dodgeCost;
    public float sprintCost;
    public float blockCost;
    public float attackCost;

        [SerializeField] Text staminatext;
        [SerializeField] Text healthtext;

        public float staminaRegenRate;
        public float healthRegenRate;

        public float currentStamina;
        public float currentHealth;

        bool hasJumped = false;
        CharacterMotor motor;
        #endregion

    public bool canJump;
    public bool canSprint;
    public bool canDodge;
    public bool canBlock;
    public bool canAttack;

    // Use this for initialization
    void Start()
    {
        currentHealth = maxHealth;
        currentStamina = maxStamina;

        motor = GetComponent<CharacterMotor>();
    }

    // Update is called once per frame
    void Update()
    {
    checkSprint();
    checkJump();
    checkAttack();
    checkDodge();
    if (staminatext != null)
        staminatext.text = ((int)currentStamina).ToString();
    if (healthtext != null)
        healthtext.text = ((int)currentHealth).ToString();

    if (motor.isGrounded && hasJumped)
    {
        hasJumped = false;
    }

    if (!motor.isSprinting && !motor.isJumping && !motor.isBlocking && !motor.isDodging)
    {
        if (currentStamina <= maxStamina)
            currentStamina += staminaRegenRate * Time.deltaTime;
        else
            currentStamina = maxStamina;
    }

    if (currentStamina <= 0)
        currentStamina = 0;
}

    #region Action Checks
    void checkSprint()
    {
        canSprint = currentStamina - (sprintCost * Time.deltaTime) >= 0;
        if (motor.isSprinting)
        {
            currentStamina -= sprintCost * Time.deltaTime;
        }

        if (!canSprint)
        {
            motor.isSprinting = false;
        }
    }

    void checkJump()
    {
        canJump = currentStamina - jumpCost >= 0;
    }
    void checkDodge()
    {
    canDodge = currentStamina - dodgeCost >= 0;
    }

    public void checkAttack()
    {
        canAttack = currentStamina - attackCost >= 0;
    }
    #endregion
    }
