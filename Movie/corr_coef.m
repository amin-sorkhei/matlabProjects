function [correlation_coef] = corr_coef(movie1,movie2,ratings)

    % Calculation of correlation Coefficient:
    % users who have rated movie 1
    users1 = ratings(ratings(:,2)==movie1,1);
    % users who have rated movie 2
    users2 = ratings(ratings(:,2)==movie2,1);

    % users who have rated both movies
    users1and2 = intersect(users1,users2); 

    if length(users1and2) > 30
    %the threshold of number of users rated both movie is 30
        % find row id for record of movie1 which rated by users who rated movie1 and movie2
        recordid1 = (ratings(:,2)==movie1) & (ismember(ratings(:,1),users1and2));
        % pull the record
        record1 = ratings(recordid1,:);
        % sort record by userid
        [~,sorted_id1] = sort( record1(:,1) );
        record1s = record1(sorted_id1,:);
        recordid2 = (ratings(:,2)==movie2) & (ismember(ratings(:,1),users1and2));
        record2 = ratings(recordid2,:);
        [~,sorted_id2] = sort( record2(:,1) );
        record2s = record2(sorted_id2,:);
        if (std(record1s(:,3))>0) & (std(record2s(:,3))>0)
            % we require both of the rating have larger than zero standard diviation
            correlation_coef = corr(record1s(:,3),record2s(:,3));
        else
            correlation_coef = 0;
        end
    else
        correlation_coef = 0;
    end
  
end

