!/bin/bash
#employee management system - Karan Nagpal (F3_9914103085)

#functions
Display()
{
	choice2=1
	while [ $choice2 != "15" -a $choice2 -gt "0" -a $choice2 -le "15" ]
	do
		clear
		echo -e "\t\t\t\t\t\t\t "
		echo -e "\t\t\t\t\t\t\t "
		echo "========================= Admin menu ====================="
		echo -e "=\t\t\t\t\t\t\t ="
		echo -e "=\t\t\t\t\t\t\t ="
        echo -e "=1. Display All Employees\t\t\t\t ="
		echo -e "=\t\t\t\t\t\t\t ="
		echo -e "=2. Display Employees of a particular department\t ="
		echo -e "=\t\t\t\t\t\t\t ="
		echo -e "=3. Display employees salary between X & Y\t\t ="
		echo -e "=\t\t\t\t\t\t\t ="
		echo -e "=4. Display employees joined particular date\t\t ="
		echo -e "=\t\t\t\t\t\t\t ="
		echo -e "=5. Display all male employees\t\t\t\t ="
		echo -e "=\t\t\t\t\t\t\t ="
		echo -e "=6. Display all female employees\t\t\t ="
		echo -e "=\t\t\t\t\t\t\t ="
		echo -e "=7. Display employees of a particular designation\t ="
		echo -e "=\t\t\t\t\t\t\t ="
		echo -e "=8. Display employee all Interns\t\t\t ="
		echo -e "=\t\t\t\t\t\t\t ="
		echo -e "=9. Display maximum salary  employee\t\t\t ="
		echo -e "=\t\t\t\t\t\t\t ="
		echo -e "=10. Display average salary\t\t\t\t ="
		echo -e "=\t\t\t\t\t\t\t ="
		echo -e "=11. Sort employee decreasing order of salary\t\t ="
		echo -e "=\t\t\t\t\t\t\t ="
		echo -e "=12. Sort employee increasing order of salary\t\t ="
		echo -e "=\t\t\t\t\t\t\t ="
		echo -e "=13. Search employee by name\t\t\t\t ="
		echo -e "=\t\t\t\t\t\t\t ="
		# Add the new option
    	echo -e "=14. Search employee by partial name\t\t\t ="
    	echo -e "=\t\t\t\t\t\t\t ="
		echo -e "=15. Search employee by ID\t\t\t\t ="
		echo -e "=\t\t\t\t\t\t\t ="
		echo -e "=16. Display salary & Net salary employees\t\t ="
		echo -e "=\t\t\t\t\t\t\t ="
		echo -e "=17. Back\t\t\t\t\t\t ="
		echo -e "=\t\t\t\t\t\t\t ="
		echo -e "=\t\t\t\t\t\t\t ="
		echo "=========================================================="
		echo -e "\t\t\t\t\t\t\t "
		echo -e "Your Choice : \c"
		read choice2
		
		case $choice2 in
		1)	clear
			awk 'BEGIN{ 
				printf "\n-------------\t----------\t---------\t-------\t-------------\t---\t----------\t------\t-----------\t------------\n"
				printf "Emp_ID\tFirst_Name\tLast_Name\tAddress\tDate_Of_Birth\tSex\tDepartment\tSalary\tDesignation\tJoining_Date\n" 
				printf "-------------\t----------\t---------\t-------\t-------------\t---\t----------\t------\t-----------\t------------\n" } 
				{print;}' Database | column -t;
		    printf "\nEnter any key to go back..."; 
		    read a;;
		2)  clear
			printf "Enter Department : "
			read dept
			(printf "\n-------------\t----------\t---------\t-------\t-------------\t---\t----------\t------\t-----------\t------------\n";
			printf "Emp_ID\tFirst_Name\tLast_Name\tAddress\tDate_Of_Birth\tSex\tDepartment\tSalary\tDesignation\tJoining_Date\n";
			printf "\n-------------\t----------\t---------\t-------\t-------------\t---\t----------\t------\t-----------\t------------\n"; 
			grep $dept Database) | column -t;
		    printf "\nEnter any key to go back..."; 
		    read a;;
		3)	clear
			printf "Enter starting salary : "
			read ssal
			printf "Enter end salary : "
			read esal
			(printf "\n-------------\t----------\t---------\t-------\t-------------\t---\t----------\t------\t-----------\t------------\n";
			printf "Emp_ID\tFirst_Name\tLast_Name\tAddress\tDate_Of_Birth\tSex\tDepartment\tSalary\tDesignation\tJoining_Date\n";
			printf "\n-------------\t----------\t---------\t-------\t-------------\t---\t----------\t------\t-----------\t------------\n";
			awk -v min=$ssal -v max=$esal '{if($8<=max && $8>=mini) {print $0}}' Database) | column -t;
		    printf "\nEnter any key to go back..."; 
		    read a;;
		4)	clear
			printf "Enter Date (DD-MMM-YYYY) : "
			read dat
			(printf "\n-------------\t----------\t---------\t-------\t-------------\t---\t----------\t------\t-----------\t------------\n";
			printf "Emp_ID\tFirst_Name\tLast_Name\tAddress\tDate_Of_Birth\tSex\tDepartment\tSalary\tDesignation\tJoining_Date\n";
			printf "\n-------------\t----------\t---------\t-------\t-------------\t---\t----------\t------\t-----------\t------------\n";
			grep $dat Database) | column -t;
		    printf "\nEnter any key to go back..."; 
		    read a;;
		5)	clear
			(printf "\n-------------\t----------\t---------\t-------\t-------------\t---\t----------\t------\t-----------\t------------\n";
			printf "Emp_ID\tFirst_Name\tLast_Name\tAddress\tDate_Of_Birth\tSex\tDepartment\tSalary\tDesignation\tJoining_Date\n";
			printf "\n-------------\t----------\t---------\t-------\t-------------\t---\t----------\t------\t-----------\t------------\n"; 
			grep -w "m" Database) | column -t;
		    printf "\nEnter any key to go back..."; 
		    read a;;
		6)	clear
			(printf "\n-------------\t----------\t---------\t-------\t-------------\t---\t----------\t------\t-----------\t------------\n";
			printf "Emp_ID\tFirst_Name\tLast_Name\tAddress\tDate_Of_Birth\tSex\tDepartment\tSalary\tDesignation\tJoining_Date\n";
			printf "\n-------------\t----------\t---------\t-------\t-------------\t---\t----------\t------\t-----------\t------------\n";
			grep -w "f" Database) | column -t;
		    printf "\nEnter any key to go back..."; 
		    read a;;
		7)	clear
			printf "Enter Designation : "
			read desn
			(printf "\n-------------\t----------\t---------\t-------\t-------------\t---\t----------\t------\t-----------\t------------\n";
			printf "Emp_ID\tFirst_Name\tLast_Name\tAddress\tDate_Of_Birth\tSex\tDepartment\tSalary\tDesignation\tJoining_Date\n";
			printf "\n-------------\t----------\t---------\t-------\t-------------\t---\t----------\t------\t-----------\t------------\n";
			grep $desn Database) | column -t;
		    printf "\nEnter any key to go back..."; 
		    read a;;
		8)	clear
			(printf "\n-------------\t----------\t---------\t-------\t-------------\t---\t----------\t------\t-----------\t------------\n";
			printf "Emp_ID\tFirst_Name\tLast_Name\tAddress\tDate_Of_Birth\tSex\tDepartment\tSalary\tDesignation\tJoining_Date\n";
			printf "\n-------------\t----------\t---------\t-------\t-------------\t---\t----------\t------\t-----------\t------------\n";
			grep "intern" Database) | column -t;
		    printf "\nEnter any key to go back..."; 
		    read a;;
		9)	clear
			(printf "\n-------------\t----------\t---------\t-------\t-------------\t---\t----------\t------\t-----------\t------------\n";
			printf "Emp_ID\tFirst_Name\tLast_Name\tAddress\tDate_Of_Birth\tSex\tDepartment\tSalary\tDesignation\tJoining_Date\n";
			printf "\n-------------\t----------\t---------\t-------\t-------------\t---\t----------\t------\t-----------\t------------\n";
			max=$(sort -nrk8 Database | head -1 | cut -f8);
			awk -v maxi=$max '{if($8==maxi) {print $0}}' Database) | column -t;
		    printf "\nEnter any key to go back..."; 
		    read a;;
		10)	clear
			(printf "\n--------------\n";
			printf "Average_Salary\n";
			printf "\n--------------\n";
			awk 'BEGIN{count=0} {count=count+$8} END{print count/NR}' Database) | column -t;
		    printf "\nEnter any key to go back..."; 
		    read a;;
		11)	clear
			(printf "\n-------------\t----------\t---------\t-------\t-------------\t---\t----------\t------\t-----------\t------------\n";
			printf "Emp_ID\tFirst_Name\tLast_Name\tAddress\tDate_Of_Birth\tSex\tDepartment\tSalary\tDesignation\tJoining_Date\n";
			printf "\n-------------\t----------\t---------\t-------\t-------------\t---\t----------\t------\t-----------\t------------\n";
			sort -nrk8 Database) | column -t;
		    printf "\nEnter any key to go back..."; 
		    read a;;
		12)	clear
			(printf "\n-------------\t----------\t---------\t-------\t-------------\t---\t----------\t------\t-----------\t------------\n";
			printf "Emp_ID\tFirst_Name\tLast_Name\tAddress\tDate_Of_Birth\tSex\tDepartment\tSalary\tDesignation\tJoining_Date\n";
			printf "\n-------------\t----------\t---------\t-------\t-------------\t---\t----------\t------\t-----------\t------------\n";
			sort -nk8 Database) | column -t;
		    printf "\nEnter any key to go back..."; 
		    read a;;
		13)	clear
			printf "Enter First_Name : "
			read fname
			printf "Enter Last_Name : "
			read lname
			(printf "\n-------------\t----------\t---------\t-------\t-------------\t---\t----------\t------\t-----------\t------------\n";
			printf "Emp_ID\tFirst_Name\tLast_Name\tAddress\tDate_Of_Birth\tSex\tDepartment\tSalary\tDesignation\tJoining_Date\n";
			printf "\n-------------\t----------\t---------\t-------\t-------------\t---\t----------\t------\t-----------\t------------\n";
			awk -v f=$fname -v l=$lname '{if($2==f && $3==l) {print}}' Database) | column -t;
		    printf "\nEnter any key to go back..."; 
		    read a;;
		14)	clear
    		printf "Enter partial First or Last Name: "
    		read partial_name
   			 (printf "\n-------------\t----------\t---------\t-------\t-------------\t---\t----------\t------\t-----------\t------------\n";
   			 printf "Emp_ID\tFirst_Name\tLast_Name\tAddress\tDate_Of_Birth\tSex\tDepartment\tSalary\tDesignation\tJoining_Date\n";
   			 printf "\n-------------\t----------\t---------\t-------\t-------------\t---\t----------\t------\t-----------\t------------\n";
   			 awk -v partial="$partial_name" 'BEGIN {IGNORECASE=1} $2 ~ partial || $3 ~ partial' Database) | column -t;
  			printf "\nEnter any key to go back..."; 
		    read a;;
		15)	clear
			printf "Enter ID : "
			read fid
			(printf "\n-------------\t----------\t---------\t-------\t-------------\t---\t----------\t------\t-----------\t------------\n";
			printf "Emp_ID\tFirst_Name\tLast_Name\tAddress\tDate_Of_Birth\tSex\tDepartment\tSalary\tDesignation\tJoining_Date\n";
			printf "\n-------------\t----------\t---------\t-------\t-------------\t---\t----------\t------\t-----------\t------------\n";
			awk -v fid=$fid '{if($1==fid) {print}}' Database) | column -t;
		    printf "\nEnter any key to go back..."; 
		    read a;;     
		16)	clear
			(printf "\n-------------\t----------\t---------\t------\t----------\n";
			printf "Emp_ID\tFirst_Name\tLast_Name\tSalary\tNet_Salary\n";
			printf "\n-------------\t----------\t---------\t------\t----------\n";
			awk '{print $1,$2,$3,$8,$8*0.70}' Database) | column -t;
		    printf "\nEnter any key to go back..."; 
		    read a;;    
		17) return;;
		*) echo "Invalid Entry! Script will exit now";;
		esac
	done
}

Edit()
{
	choice3=1
	while [ $choice3 != "4" -a $choice3 -gt "0" -a $choice3 -le "4" ]
	do
		clear
		echo -e "=\t\t\t\t\t\t\t ="
		echo "======================= Employee (MS) ===================="
		echo -e "=\t\t\t\t\t\t\t ="
		echo -e "=\t\t\t\t\t\t\t ="
		echo -e "=1. creat employee\t\t\t\t\t ="
		echo -e "=\t\t\t\t\t\t\t ="
		echo -e "=2. Delete employee\t\t\t\t\t ="
		echo -e "=\t\t\t\t\t\t\t ="
		echo -e "=3. Modify employee data\t\t\t\t ="
		echo -e "=\t\t\t\t\t\t\t ="
		echo -e "=4. Back\t\t\t\t\t\t ="
		echo -e "=\t\t\t\t\t\t\t ="
		echo "=========================================================="
		echo -e "=\t\t\t\t\t\t\t ="
		echo -e "Your Choice : \c"
		read choice3
		case $choice3 in
		1) Add_emp;;
		2) Delete_emp;;
		3) Modify_emp;;
		4) return;;
		*) echo "Invalid Entry! Script will exit now";;
		esac
	done
}

#---------------------product----------------
ProductMenu() {
    choice2=1
    while [ $choice2 != "4" -a $choice2 -gt "0" -a $choice2 -le "4" ]
    do
        clear
		echo -e "=\t\t\t\t\t\t\t ="
		echo "======================= Product (MS) ====================="
		echo -e "=\t\t\t\t\t\t\t ="
		echo -e "=\t\t\t\t\t\t\t ="
		echo -e "=1. Create a Product\t\t\t\t\t ="
		echo -e "=\t\t\t\t\t\t\t ="
		echo -e "=2. View all Products\t\t\t\t\t ="
		echo -e "=\t\t\t\t\t\t\t ="
		echo -e "=3. Search for a Product\t\t\t\t ="
		echo -e "=\t\t\t\t\t\t\t ="
		echo -e "=4. Back\t\t\t\t\t\t ="
		echo -e "=\t\t\t\t\t\t\t ="
		echo "=========================================================="
		echo -e "=\t\t\t\t\t\t\t ="
        echo -e "Your Choice : \c"
        read choice2
        case $choice2 in
        1) CreateProduct;;
        2) ViewProducts;;
        3) SearchProduct;;
        4) return;;
        *) echo "Invalid Entry!";;
        esac
    done
}


#------------------------------------

CreateProduct() {
    clear
    echo "Fill in the following form for the new product:"
    echo -n "Product ID: "
    read product_id
    echo -n "Product Name: "
    read product_name
    echo -n "Product Price: "
    read product_price
    echo -n "Employee ID associated: "
    read employee_id
    echo -n "Entry Date (DD MMM YYYY): "
    read entry_date

    # Check if the employee ID exists in the Employee Database
    grep -q "$employee_id" Database
    if [ $? -eq 0 ]; then
        product_data="$product_id\t$product_name\t$product_price\t$employee_id\t$entry_date"
        echo -e "$product_data" >> ProductDatabase
        echo "Product successfully created."
    else
        echo "Error: Employee with ID $employee_id not found."
    fi

    echo -n "Press any key to continue..."
    read a
}

ViewProducts() {
    clear
    echo -e "Product ID\tProduct Name\tProduct Price\tEmployee ID\tEntry Date"
    echo "--------------------------------------------------------------"
    column -t ProductDatabase
    echo -n "Press any key to continue..."
    read a
}

SearchProduct() {
    clear
    echo -n "Enter Product ID or Name to search: "
    read search_term
    grep -i "$search_term" ProductDatabase | column -t
    echo -n "Press any key to continue..."
    read a
}



#---------------------ProductStoring----------------
ProductStoring() {
    choice2=1
    while [ $choice2 != "4" -a $choice2 -gt "0" -a $choice2 -le "4" ]
    do
        clear
		echo -e "=\t\t\t\t\t\t\t ="
		echo "======================= Product (MS) ====================="
		echo -e "=\t\t\t\t\t\t\t ="
		echo -e "=\t\t\t\t\t\t\t ="
		echo -e "=1. Solid And Fixed Block Product\t\t\t ="
		echo -e "=\t\t\t\t\t\t\t ="
		echo -e "=2. Solid And Not Fixed Block Product\t\t\t ="
		echo -e "=\t\t\t\t\t\t\t ="
		echo -e "=3. Liquid Product \t\t\t\t\t ="
		echo -e "=\t\t\t\t\t\t\t ="
		echo -e "=4. Back\t\t\t\t\t\t ="
		echo -e "=\t\t\t\t\t\t\t ="
		echo "=========================================================="
		echo -e "=\t\t\t\t\t\t\t ="
        echo -e "Your Choice : \c"
        read choice4
        case $choice4 in
        1) Sofixp;;
        2) Sonofixp;;
        3) lqpo;;
        4) return;;
        *) echo "Invalid Entry!";;
        esac
    done
}

#------------------------------------
Sofixp() {
    clear
    #!/bin/bash

while true; do
echo -e "=\t\t\t\t\t\t\t ="
	echo "=========================================================="
	echo "=========================================================="
	echo -e "=\t\t\t\t\t\t\t ="
    echo -n "Enter the total space available: "
    read ms

    echo -n "Enter the block size: "
    read bs

    nob=$((ms / bs))
    ef=$((ms - nob * bs))

    echo -n "Enter the number of product: "
    read n
	echo -e "=\t\t\t\t\t\t\t ="
	echo "=========================================================="
	echo -e "=\t\t\t\t\t\t\t ="

    for ((i = 0; i < n; i++)); do
        echo -n "Enter space required for product $((i + 1)): "
        read mp[$i]
    done

    echo "No. of Blocks available in memory: $nob"
    echo -e "\nPROCESS\tMEMORY REQUIRED\tALLOCATED\tINTERNAL FRAGMENTATION"

    p=0
    tif=0
    for ((i = 0; i < n && p < nob; i++)); do
        echo -ne "$((i + 1))\t\t${mp[$i]}"

        if ((mp[i] > bs)); then
            echo -e "\t\tNO\t\t---"
        else
            internal_fragmentation=$((bs - mp[i]))
            echo -e "\t\tYES\t\t$internal_fragmentation"
            tif=$((tif + internal_fragmentation))
            p=$((p + 1))
        fi
    done
	echo -e "=\t\t\t\t\t\t\t ="
	echo "=========================================================="
	echo -e "=\t\t\t\t\t\t\t ="

    if ((i < n)); then
        echo -e "\n space is Full, Remaining product cannot be accommodated."
    fi


    echo -e "\nTotal Internal Fragmentation is $tif"
    echo "Total External Fragmentation is $ef"
echo -e "=\t\t\t\t\t\t\t ="
	echo "=========================================================="
	echo -e "=\t\t\t\t\t\t\t ="
    read -p "Do you want to run the program again? (y/n): " choice
    if [[ $choice != "y" ]]; then
        break
    fi
	
done


    read a
}

Sonofixp() {
    clear
    
    max=25

    declare -a frag b f bf ff

    for ((i=0; i<max; i++)); do
        b[$i]=0
        f[$i]=0
        frag[$i]=0
        bf[$i]=0
        ff[$i]=0
    done
	echo -e "=\t\t\t\t\t\t\t ="
	echo "=========================================================="
	echo "=========================================================="
	echo -e "=\t\t\t\t\t\t\t ="
    echo "Enter the number of blocks:"
    read nb

    echo "Enter the number of product:"
    read nf
	echo -e "=\t\t\t\t\t\t\t ="
	echo "=========================================================="
	echo -e "=\t\t\t\t\t\t\t ="

    echo -e "\nEnter the size of the blocks:−"
    for ((i=1; i<=nb; i++)); do
        echo -n "Block $i:"
        read b[$i]
    done
	echo -e "=\t\t\t\t\t\t\t ="
	echo "=========================================================="
	echo -e "=\t\t\t\t\t\t\t ="
    echo -e "Enter the size of the product:−"
    for ((i=1; i<=nf; i++)); do
        echo -n "product $i:"
        read f[$i]
    done

    for ((i=1; i<=nf; i++)); do
        minIndex=-1
        minSize=999999

        for ((j=1; j<=nb; j++)); do
            if [[ ${bf[$j]} -eq 0 && ${b[$j]} -ge ${f[$i]} ]]; then
                if [[ ${b[$j]} -lt $minSize ]]; then
                    minIndex=$j
                    minSize=${b[$j]}
                fi
            fi
        done

        if [[ $minIndex -ne -1 ]]; then
            ff[$i]=$minIndex
            frag[$i]=$(( ${b[$minIndex]} - ${f[$i]} ))
            bf[${ff[$i]}]=1
        fi
    done
	echo -e "=\t\t\t\t\t\t\t ="
	echo "=========================================================="
	echo -e "=\t\t\t\t\t\t\t ="
    echo -e "\nproduct_no \tproduct_size \tBlock_no \tBlock_size \tFragment"
    for ((i=1; i<=nf; i++)); do
        echo -e "$i\t\t${f[$i]}\t\t${ff[$i]}\t\t${b[${ff[$i]}]}\t\t${frag[$i]}"
		
    done
	echo -e "=\t\t\t\t\t\t\t ="
	echo "=========================================================="
	echo "=========================================================="
	echo -e "=\t\t\t\t\t\t\t ="
	
    read a
}

lqpo() {
    clear
	#!/bin/bash
	echo -e "=\t\t\t\t\t\t\t ="
	echo "=========================================================="
echo "=========================================================="
echo -e "=\t\t\t\t\t\t\t ="
echo -n "Enter the total space available: "
read total_memory
echo -e "=\t\t\t\t\t\t\t ="
echo "=========================================================="

echo -e "=\t\t\t\t\t\t\t ="

allocated_memory=0
process_values=()

while true; do
    echo -n "Enter space required for product : "
    read process_memory

    if ((allocated_memory + process_memory <= total_memory)); then
        echo "space is allocated for product"
        allocated_memory=$((allocated_memory + process_memory))
        process_values+=("$process_memory")
    else
        echo "space is Full"
		echo -e "=\t\t\t\t\t\t\t ="
	echo "=========================================================="
	echo -e "=\t\t\t\t\t\t\t ="
        break
    fi

    echo -n "Do you want to continue (y/n): "
    read choice
	echo -e "=\t\t\t\t\t\t\t ="
	echo "=========================================================="
	echo -e "=\t\t\t\t\t\t\t ="

    if [ "$choice" != "y" ]; then
        break
    fi
done

echo "Total Memory Available – $total_memory"
echo -e "product ------ space"

for ((i = 0; i < ${#process_values[@]}; i++)); do
    echo -e "$((i + 1)) ----------- ${process_values[i]}"
done

echo "Total space Allocated is $allocated_memory"
echo "Total Fragmentation is $((total_memory - allocated_memory))"
echo -e "=\t\t\t\t\t\t\t ="
	echo "=========================================================="
	echo "=========================================================="
	echo -e "=\t\t\t\t\t\t\t ="
	echo -e "=\t\t\t\t\t\t\t ="
   
    read a
}





Exitmessage()
{
	clear
	echo_c "Good Bye ${username^^}" 
	printf "\n"
	echo_c "Program will terminate in       "
	printf "\033[6D"
	sec=5
	while [ $sec -ge 0 ]
	do
		printf "$sec secs\033[6D"
		#printf "Program will terminate in $sec\033[K\r"
		 sleep 1
		 sec=`expr $sec - 1`
		# : $((sec--))
	done
	tput clear
	exit
	#kill -9 $PPID

}


Add_emp()
{
	clear
	printf "Fill in the following form : "
	printf "\nEmp_ID : "
	read emp
	printf "First_Name : "
	read first
	printf "Last_Name : "
	read lastn
	printf "Address : "
	read ad
	printf "Date_Of_Birth : "
	read dob
	printf "Sex : "
	read sex
	printf "Department : "
	read dept
	printf "Salary : "
	read sal
	printf "Designation : "
	read des
	printf "Joining_Date : "
	read joining
	data=$(echo -n -e "$emp\t$first\t$lastn\t$ad\t$dob\t$sex\t$dept\t$sal\t$des\t$joining")
	sed -i '$ a\'"$data" Database
	printf "\nRecord successfully added."; 
	printf "\nEnter any key to go back..."; 
	read a
}

Delete_emp()
{
	clear
	printf "Enter Emp_ID of the of the employee whose record is to be deleted : "
	read del
	sed -i "/$del/d" Database
	printf "\nRecord successfully deleted."; 
	printf "\nEnter any key to go back..."; 
	read a
}

Modify_emp()
{
	clear
	printf "Enter Emp_ID of the employee whose record has to be modified : "
	read mod
	printf "\nOld details : ";
	
	(printf "\n-------------\t----------\t---------\t-------\t-------------\t---\t----------\t------\t-----------\t------------\n";
	printf "Emp_ID\tFirst_Name\tLast_Name\tAddress\tDate_Of_Birth\tSex\tDepartment\tSalary\tDesignation\tJoining_Date\n";
	printf "\n-------------\t----------\t---------\t-------\t-------------\t---\t----------\t------\t-----------\t------------\n"; 
	sed -n "/$mod/p" Database) | column -t;
		    
	old=$(sed -n "/$mod/p" Database)
	printf "\nEnter new details : "; 
	
	printf "\nEmp_ID : "
	read emp
	printf "First_Name : "
	read first
	printf "Last_Name : "
	read lastn
	printf "Address : "
	read ad
	printf "Date_Of_Birth : "
	read dob
	printf "Sex : "
	read sex
	printf "Department : "
	read dept
	printf "Salary : "
	read sal
	printf "Designation : "
	read des
	printf "Joining_Date : "
	read joining
	data=$(echo -n -e "$emp\t$first\t$lastn\t$ad\t$dob\t$sex\t$dept\t$sal\t$des\t$joining")
	
	sed -i "s/$old/$data/" Database
	printf "\nRecord successfully modified."; 
	printf "\nEnter any key to go back..."; 
	read a
}

echo_c()
{
  w=$(stty size | cut -d" " -f2)       # width of the terminal
  l=${#1}                              # length of the string
  printf "%"$((l+(w-l)/2))"s" "$1"   # print string padded to proper width (%Ws)
}



#start of script
clear
printf "\n\n\n\n\n"
echo "=========================================================="
echo -e "=\t\t\t\t\t\t\t ="
echo -e "=\t\t\t\t\t\t\t ="
welmsg="WELCOME TO Employee & Product Management System"
echo -e "=----$welmsg-----="
echo -e "=\t\t\t\t\t\t\t ="
echo -e "=\t\t\t\t\t\t\t ="
echo "=========================================================="
echo -e "=\t\t\t\t\t\t\t ="
echo -e "Username: \c"
read username
echo -e "=\t\t\t\t\t\t\t ="
echo -e "Password : \c"
read -s password #---------------(-s)-----------password-----------
echo -e "=\t\t\t\t\t\t\t ="
printf "\n\n"

grep -wq $username accounts
if [ $? -eq 0 ]
then
	check=$(grep -w $username accounts | cut -f2)
	if [ $password = $check ]
	then
		choice=1
		while [ $choice != "4" -a $choice -gt "0" -a $choice -le "4" ]
		do
			clear
			echo -e "=\t\t\t\t\t\t\t ="
			echo "================= Employee & Product (MS) ================"
			echo -e "=\t\t\t\t\t\t\t ="
			echo -e "=\t\t\t\t\t\t\t ="
			echo -e "=1. Display Employee Details\t\t\t\t ="
			echo -e "=\t\t\t\t\t\t\t ="
			echo -e "=2. Edit Employee Details\t\t\t\t ="
			echo -e "=\t\t\t\t\t\t\t ="
			echo -e "=3. Product Menu\t\t\t\t\t ="
			echo -e "=\t\t\t\t\t\t\t ="
			echo -e "=4. Product Storing\t\t\t\t\t ="
			echo -e "=\t\t\t\t\t\t\t ="
			echo -e "=5. Exit\t\t\t\t\t\t ="
			echo -e "=\t\t\t\t\t\t\t ="
			echo -e "=\t\t\t\t\t\t\t ="
			echo "=========================================================="
			echo -e "=\t\t\t\t\t\t\t ="
			echo -e "Your Choice : \c"
			read choice
			case $choice in
			1) Display;;
			2) Edit;;
			3) ProductMenu;;
			4) ProductStoring;;
			5) Exitmessage;;
			*)  
				msg="Invalid Entry! Script will exit now"
				printf "\n"
				echo_c "$msg"
				printf "\n" 
			;;
			esac
		done	
	else
		printf "\n"
		echo_c "Invalid Username or Password!"	
		printf "\n"
	fi
else
	printf "\n"
	echo_c "Invalid Username or Password!"
	printf "\n"
fi
